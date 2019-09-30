<?php

if (isset($_GET['lang'])) {
    
    $lang = $_GET['lang'];
    $_SESSION['lang'] = $lang;
    setcookie('lang', $lang, time() + (3600 * 24 * 30));
    
} else if (isset($_SESSION['lang'])) {
    
    $lang = $_SESSION['lang'];
    
} else if (isset($_COOKIE['lang'])) {
    
    $lang = $_COOKIE['lang'];
    
} else {
    
    $lang = 'es';    
    $_SESSION['lang'] = $lang;
    setcookie('lang', $lang, time() + (3600 * 24 * 30));
}

switch ($lang) {
    case 'en':
        $lang_file = 'english.php';
        break;

    case 'es':
        $lang_file = 'spanish.php';
        break;

    default:
        $lang_file = 'spanish.php';
}

include_once 'languages/' . $lang_file;
?>