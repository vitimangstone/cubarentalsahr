
var status = "";
var selection_click_counter = 0;
var initial_date = Date.now;
var selectedDates = [];
var bdCalendar = [];
var cal = {
  mName : ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"], // Month Names
  data : null, // Events for the selected period
  sDay : 0, // Current selected day
  sMth : 0, // Current selected month
  sYear : 0, // Current selected year
  sMon : false, // Week start on Monday?

  /* [FUNCTIONS] */
  list : function () {
  // cal.list() : draw the calendar for the given month

    // BASIC CALCULATIONS
    // Note - Jan is 0 & Dec is 11 in JS.
    // Note - Sun is 0 & Sat is 6
    cal.sMth = parseInt(document.getElementById("cal-mth").value); // selected month
    cal.sYear = parseInt(document.getElementById("cal-yr").value); // selected year
    var daysInMth = new Date(cal.sYear, cal.sMth+1, 0).getDate(), // number of days in selected month
        startDay = new Date(cal.sYear, cal.sMth, 1).getDay(), // first day of the month
        endDay = new Date(cal.sYear, cal.sMth, daysInMth).getDay(); // last day of the month

    // LOAD DATA FROM LOCALSTORAGE
    cal.data = localStorage.getItem("cal-" + cal.sMth + "-" + cal.sYear);
    if (cal.data==null) {
      localStorage.setItem("cal-" + cal.sMth + "-" + cal.sYear, "{}");
      cal.data = {};
    } else {
      cal.data = JSON.parse(cal.data);
    }
    // DRAWING CALCULATIONS
    // Determine the number of blank squares before start of month
    var squares = [];
    if (cal.sMon && startDay != 1) {
      var blanks = startDay==0 ? 7 : startDay ;
      for (var i=1; i<blanks; i++) { squares.push("b"); }
    }
    if (!cal.sMon && startDay != 0) {
      for (var i=0; i<startDay; i++) { squares.push("b"); }
    }

    // Populate the days of the month
    for (var i=1; i<=daysInMth; i++) { squares.push(i); }

    // Determine the number of blank squares after end of month
    if (cal.sMon && endDay != 0) {
      var blanks = endDay==6 ? 1 : 7-endDay;
      for (var i=0; i<blanks; i++) { squares.push("b"); }
    }
    if (!cal.sMon && endDay != 6) {
      var blanks = endDay==0 ? 6 : 6-endDay;
      for (var i=0; i<blanks; i++) { squares.push("b"); }
    }

    // DRAW
    // Container & Table
    var container = document.getElementById("cal-container"),
        cTable = document.createElement("table");
    cTable.id = "calendar";
    container.innerHTML = "";
    container.appendChild(cTable);

    // First row - Days
    var cRow = document.createElement("tr"),
        cCell = null,
        days = ["Sun", "Mon", "Tue", "Wed", "Thur", "Fri", "Sat"];
    if (cal.sMon) { days.push(days.shift()); }
    for (var d of days) {
      cCell = document.createElement("td");
      cCell.innerHTML = d;
      cRow.appendChild(cCell);
    }
    cRow.classList.add("head");
    cTable.appendChild(cRow);

    // Days in Month
    var total = squares.length;
    cRow = document.createElement("tr");
    cRow.classList.add("day");
    for (var i=0; i<total; i++) {
      cCell = document.createElement("td");
      if (squares[i]=="b") { cCell.classList.add("blank"); }
      else {
        var currentDate = new Date(cal.sYear, cal.sMth, squares[i]);
        var selectedDate = localStorage.getItem(currentDate);
        if(selectedDate){
          cCell.innerHTML = "<div class='dd selected'>"+squares[i]+"</div>";          
        }
        else{
          cCell.innerHTML = "<div class='dd'>"+squares[i]+"</div>";
        }

        if (cal.data[squares[i]]) {
          cCell.innerHTML += "<div class='evt'>" + cal.data[squares[i]] + "</div>";
        }
        

        cCell.addEventListener("click", function(){
          // cal.show(this);
          cal.generateStatus(this);
          cal.manageDates(this);
        });
      }
      cRow.appendChild(cCell);
      if (i!=0 && (i+1)%7==0) {
        cTable.appendChild(cRow);
        cRow = document.createElement("tr");
        cRow.classList.add("day");
      }
    }
    // REMOVE ANY ADD/EDIT EVENT DOCKET
    cal.close();
  },

  generateStatus: function(el) {
    var element = el.getElementsByClassName("dd")[0];
    if(!element.classList.contains("selected") && selection_click_counter % 2 == 0){
      status = "status1";
    }
    else if(!element.classList.contains("selected") && selection_click_counter % 2 == 1){
      status = "status2"
    }
    else if(element.classList.contains("selected")){
      status = "status3"
    }
  },

  manageDates : function(el) {
    var element = el.getElementsByClassName("dd")[0];
    switch(status){
      case "status1":
        cal.executeStatus1(element);
        break;
      case "status2":
        cal.executeStatus2(element);
        break;
      case "status3":
        cal.executeStatus3(element);
        break;
    }
  },

  saveSelectedDat: function(day){
    var dayDate = new Date(cal.sYear, cal.sMth, parseInt(day.innerHTML))
    var selectedDay = {
      date: dayDate,
      day: parseInt(day.innerHTML),
      month: cal.sMth,
      year: cal.sYear
    }
    localStorage.setItem(selectedDay.date, JSON.stringify(selectedDay));
  },

  savePreviousDays: function(element) {
    var allowed = true;
    var currentDate = new Date(cal.sYear, cal.sMth, parseInt(element.innerHTML));
    var tempDate = new Date(initial_date.getFullYear(), initial_date.getMonth(), initial_date.getDate());

    while(tempDate < currentDate){
      tempDate.setDate(tempDate.getDate() + 1);
      var existDate = localStorage.getItem(tempDate);
      if(existDate){
        allowed = false;
      }
    }
    if(allowed){
      var tempDate1 = new Date(initial_date.getFullYear(), initial_date.getMonth(), initial_date.getDate());
      while(tempDate1 < currentDate){
        tempDate1.setDate(tempDate1.getDate() + 1);
        var selectedDay = {
          date: tempDate1,
          day: tempDate1.getDate(),
          month: tempDate1.getMonth(),
          year: tempDate1.getFullYear()
        }
        localStorage.setItem(selectedDay.date, JSON.stringify(selectedDay));
      }
    }
  },

  executeStatus1: function(element) {
    element.classList.add("selected");
    cal.saveSelectedDat(element);
    initial_date = new Date(cal.sYear, cal.sMth, parseInt(element.innerHTML));
    selection_click_counter++;
  },

  executeStatus2: function(element) {
    var allDays = $(".dd");
    cal.selectRange(allDays, element);
    cal.savePreviousDays(element);
    cal.saveRanges(element);
    console.log(selectedDates);
    selection_click_counter++;
  },


  executeStatus3: function(element) {
    var tempDate = new Date(cal.sYear, cal.sMth, parseInt(element.innerHTML));
    var currentDate = tempDate.getFullYear()+"-"+add_one_and_zero_at_front(tempDate.getMonth())+"-"+add_one_and_zero_at_front(tempDate.getDate())+" "+ tempDate.getHours()+":"+tempDate.getMinutes()+":"+tempDate.getSeconds();
    console.log(currentDate);
    console.log(bdCalendar);
    var existingDate = bdCalendar.find(c => currentDate >= c.initial_date && currentDate <= c.final_date);
    console.log(existingDate);
    if(existingDate){
      deleteFromCalendar(existingDate.id);
    }
  },

  saveRanges : function(element){
    var lastDate = new Date(cal.sYear, cal.sMth, parseInt(element.innerHTML));
    selectedDates.push({
      initial_date: initial_date.getFullYear() + "/" + (parseInt(initial_date.getMonth())+1)+ "/" + initial_date.getDate()+ " " + initial_date.getHours()+":"+initial_date.getMinutes()+":"+initial_date.getSeconds(),
      final_date : lastDate.getFullYear() + "/" + (parseInt(lastDate.getMonth())+1)+ "/" + lastDate.getDate()+ " " + lastDate.getHours()+":"+lastDate.getMinutes()+":"+lastDate.getSeconds()
    });
  },

  selectRange: function(allDays, element) {
    var allowed = true;
    var currentDate = new Date(cal.sYear, cal.sMth, parseInt(element.innerHTML));
    $.each(allDays, function(index, day){
      var dayDate = new Date(cal.sYear, cal.sMth, parseInt(day.innerHTML));
      if(dayDate > initial_date && dayDate <= currentDate){
        if(day.classList.contains("selected")){
          allowed = false;
        }
      }
    })
    if(allowed){
      $.each(allDays, function(j, day){
        var dayDate = new Date(cal.sYear, cal.sMth, parseInt(day.innerHTML));
        if(dayDate >= initial_date && dayDate <= currentDate){
          day.classList.add("selected");
        }
      });
    }
  },

  show : function (el) {
  // cal.show() : show edit event docket for selected day
  // PARAM el : Reference back to cell clicked

    // FETCH EXISTING DATA
    cal.sDay = el.getElementsByClassName("dd")[0].innerHTML;
    // DRAW FORM
    var tForm = "<h1>" + (cal.data[cal.sDay] ? "EDIT" : "ADD") + " EVENT</h1>";
    tForm += "<div id='evt-date'>" + cal.sDay + " " + cal.mName[cal.sMth] + " " + cal.sYear + "</div>";
    tForm += "<textarea id='evt-details' required>" + (cal.data[cal.sDay] ? cal.data[cal.sDay] : "") + "</textarea>";
    tForm += "<input type='button' value='Close' onclick='cal.close()'/>";
    tForm += "<input type='button' value='Delete' onclick='cal.del()'/>";
    tForm += "<input type='submit' value='Save'/>";

    // ATTACH
    var eForm = document.createElement("form");
    eForm.addEventListener("submit", cal.save);
    eForm.innerHTML = tForm;
    var container = document.getElementById("cal-event");
    container.innerHTML = "";
    container.appendChild(eForm);
  },

  close : function () {
  // cal.close() : close event docket

    document.getElementById("cal-event").innerHTML = "";
  },
 
  save : function (evt) {
  // cal.save() : save event

    evt.stopPropagation();
    evt.preventDefault();
    cal.data[cal.sDay] = document.getElementById("evt-details").value;
    localStorage.setItem("cal-" + cal.sMth + "-" + cal.sYear, JSON.stringify(cal.data));
    cal.list();
  },

  

  del : function () {
  // cal.del() : Delete event for selected date

    if (confirm("Remove event?")) {
      delete cal.data[cal.sDay];
      localStorage.setItem("cal-" + cal.sMth + "-" + cal.sYear, JSON.stringify(cal.data));
      cal.list();
    }
  }
};

function deleteFromCalendar(calendar_id){
  var url = 'control_calendario.php?negocio_id='+$('#negocio_activo').val()+'&calendar_id='+calendar_id;
  $.get(url, function(data){
    console.log(data);
    getCalendar();
  });
}

function add_one_and_zero_at_front(day_number){
  day_number++;
  if(day_number <= 9) {
    return "0"+day_number;
  }
  return day_number;
}

function getCalendar(){
    
  localStorage.clear();
  $.get('control_calendario.php?negocio_id='+$('#negocio_activo').val(), function(data){
    bdCalendar = JSON.parse(data).calendario
    $.each(bdCalendar, function(index, c){
      
      var i_date = new Date(c.initial_date);
      var currentDate = new Date(c.final_date);
      var tempDate1 = new Date(i_date.getFullYear(), i_date.getMonth(), i_date.getDate());
      
      while(tempDate1 <= currentDate){
        var selectedDay = {
          date: tempDate1,
          day: tempDate1.getDate(),
          month: tempDate1.getMonth() + 1,
          year: tempDate1.getFullYear()
        }
        
        localStorage.setItem(selectedDay.date, JSON.stringify(selectedDay));
        tempDate1.setDate(tempDate1.getDate() + 1);
        cal.list();
      }
    })
  });
}

// INIT - DRAW MONTH & YEAR SELECTOR
window.addEventListener("load", function () {
  // DATE NOW
  var now = new Date(),
      nowMth = now.getMonth(),
      nowYear = parseInt(now.getFullYear());

  // APPEND MONTHS
  var mth = document.getElementById("cal-mth");
  for (var i = 0; i < 12; i++) {
    var opt = document.createElement("option");
    opt.value = i;
    opt.innerHTML = cal.mName[i];
    if (i==nowMth) { opt.selected = true; }
    mth.appendChild(opt);
  }

  // APPEND YEARS
  // Set to 10 years range. Change this as you like.
  var year = document.getElementById("cal-yr");
  for (var i = nowYear-10; i<=nowYear+10; i++) {
    var opt = document.createElement("option");
    opt.value = i;
    opt.innerHTML = i;
    if (i==nowYear) { opt.selected = true; }
    year.appendChild(opt);
  }
  getCalendar();

  // DRAW CALENDAR
  document.getElementById("cal-yr").addEventListener("click", cal.list);
  cal.list();
  document.getElementById("cal-mth").addEventListener("click", cal.list);
  cal.list();

  document.getElementById("cal-prev").addEventListener("click", function(){
    var currentVal = parseInt(document.getElementById("cal-mth").value);
    if(currentVal == 0){
      document.getElementById("cal-yr").value = parseInt(document.getElementById("cal-yr").value) - 1;
      document.getElementById("cal-mth").value = 11;
    }
    else{
      document.getElementById("cal-mth").value = parseInt(document.getElementById("cal-mth").value) - 1;
    }
    cal.list();
  });

  document.getElementById("cal-next").addEventListener("click", function(){
    var currentVal = parseInt(document.getElementById("cal-mth").value);
    if(currentVal == 11){
      document.getElementById("cal-yr").value = parseInt(document.getElementById("cal-yr").value) + 1;
      document.getElementById("cal-mth").value = 0;
    }
    else{
      document.getElementById("cal-mth").value = parseInt(document.getElementById("cal-mth").value) + 1;
    }
    cal.list();
  });

  document.getElementById("save-calendar-button").addEventListener("click", function(){
    console.log(selectedDates);
    $.post('control_calendario.php', {selectedDates: selectedDates, negocio_id: $('#negocio_activo').val()}, function(data) {
      cal.list();
    });
  })
});