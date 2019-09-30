/*
Navicat MySQL Data Transfer

Source Server         : znoryply_cuba_places_finder
Source Server Version : 50617
Source Host           : 127.0.0.1:3306
Source Database       : last

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2016-11-27 07:58:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for caracteristicas
-- ----------------------------
DROP TABLE IF EXISTS `caracteristicas`;
CREATE TABLE `caracteristicas` (
  `id_caracter` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_es` varchar(45) NOT NULL,
  `descripcion_en` varchar(45) NOT NULL,
  PRIMARY KEY (`id_caracter`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of caracteristicas
-- ----------------------------
INSERT INTO `caracteristicas` VALUES ('1', 'Dormitorio', 'Bedroom');
INSERT INTO `caracteristicas` VALUES ('2', 'Entrada independiente', 'Separate entrance ');
INSERT INTO `caracteristicas` VALUES ('3', 'Entrada compartida', 'Common entrance');
INSERT INTO `caracteristicas` VALUES ('4', 'Sala', 'Living room');
INSERT INTO `caracteristicas` VALUES ('5', 'Comedor', 'Dining room');
INSERT INTO `caracteristicas` VALUES ('6', 'Sala - Comedor', 'Living-Dining room');
INSERT INTO `caracteristicas` VALUES ('7', 'Cocina independiente', 'Separate kitchen');
INSERT INTO `caracteristicas` VALUES ('8', 'Cocina compartida', 'Common kitchen');
INSERT INTO `caracteristicas` VALUES ('9', 'Ba&ntildeo independiente', 'Separate bathroom');
INSERT INTO `caracteristicas` VALUES ('10', 'Ba&ntildeo compartido', 'Common bathroom');
INSERT INTO `caracteristicas` VALUES ('11', 'Balc&oacuten', 'Balcony');
INSERT INTO `caracteristicas` VALUES ('12', 'Terraza', 'Terrace');
INSERT INTO `caracteristicas` VALUES ('13', 'Patio', 'Backyard');
INSERT INTO `caracteristicas` VALUES ('14', 'Piscina', 'Pool');
INSERT INTO `caracteristicas` VALUES ('15', 'Garaje independiente', 'Separate garage');
INSERT INTO `caracteristicas` VALUES ('16', 'Garaje compartido', 'Common garage');
INSERT INTO `caracteristicas` VALUES ('17', 'Jard&iacuten', 'Garden');
INSERT INTO `caracteristicas` VALUES ('18', 'Sala de Juegos', 'Games room');
INSERT INTO `caracteristicas` VALUES ('19', 'Bar', 'Bar');
INSERT INTO `caracteristicas` VALUES ('20', 'Ranch&oacute;n', 'Tipical cuban ranch (ranch&oacute;n)');
INSERT INTO `caracteristicas` VALUES ('21', 'Parrillada', 'Barbecue');
INSERT INTO `caracteristicas` VALUES ('22', 'Portal', 'Portal');
INSERT INTO `caracteristicas` VALUES ('23', 'Recibidor', 'Hall');
INSERT INTO `caracteristicas` VALUES ('24', 'Parqueo', 'Parking');

-- ----------------------------
-- Table structure for comentario
-- ----------------------------
DROP TABLE IF EXISTS `comentario`;
CREATE TABLE `comentario` (
  `id_comentario` int(11) NOT NULL AUTO_INCREMENT,
  `id_negocio` int(11) NOT NULL,
  `nombre_comentario` varchar(45) NOT NULL,
  `descripcion_comentario` varchar(500) NOT NULL,
  `fecha_comentario` varchar(100) NOT NULL,
  PRIMARY KEY (`id_comentario`),
  KEY `fk_comentario_negocio` (`id_negocio`) USING BTREE,
  CONSTRAINT `comentario_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of comentario
-- ----------------------------
INSERT INTO `comentario` VALUES ('2', '34', 'aa', 'aaaa', '26/3/2016		06:30:49 PM');
INSERT INTO `comentario` VALUES ('3', '34', 'Pepe', 'Esta casa estÃ¡ buena', '25/7/2016		07:31:41 PM');

-- ----------------------------
-- Table structure for contacto
-- ----------------------------
DROP TABLE IF EXISTS `contacto`;
CREATE TABLE `contacto` (
  `id_contacto` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_contacto` varchar(80) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `mensaje` varchar(500) NOT NULL,
  `revisado` tinyint(1) NOT NULL,
  `fecha` varchar(100) NOT NULL,
  PRIMARY KEY (`id_contacto`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of contacto
-- ----------------------------
INSERT INTO `contacto` VALUES ('1', 'mimi', 'mimi220867@gmail.com', 'hola he visto el sitio es genial, besos', '0', '16/10/2014,05:43:14 PM');
INSERT INTO `contacto` VALUES ('2', 'Ernesto', 'ernesto.cano@hotmail.es', 'Hola! Muy buena pÃ¡gina. Felicidades !', '0', '16/10/2014,05:46:51 PM');
INSERT INTO `contacto` VALUES ('4', 'tailen', 'jesusfernandez@infomed.sld.cu', 'Hola\n\nMe comunico porque me informaron que ya estaba funcionando el sitio pero no veo las fotos de nuestro negocio, quisiera saber si existe algÃºn problema o necesitan alguna informaciÃ³n, la direcciÃ³n nuestra es Sanmiguel 1108 e/ MazÃ³n y Basarrate, Plaza, cerca de la universidad, el negocio se nombra hostal Carmen y LeÃ³n,  nuestro telÃ©fono es 8790317, si existe algÃºn problema , por favor, comunÃ­quense con nosotros,\n\nSaludos', '0', '01/12/2014,03:46:31 PM');
INSERT INTO `contacto` VALUES ('5', 'Javier', 'jperezzuferri@yahoo.es', 'Chamaco, esa pagina esta durisima, jajaja', '0', '08/12/2014,05:46:05 PM');
INSERT INTO `contacto` VALUES ('6', 'vitiman', 'vitimangs@gmail.com', 'esto es otra prueba', '0', '26/8/2016,07:26:43 PM');
INSERT INTO `contacto` VALUES ('7', 'asd', 'vitimangs@gmail.com', 'lalalalalala', '0', '26/8/2016,07:38:16 PM');
INSERT INTO `contacto` VALUES ('8', 'doii', 'vitimangs@gmail.com', 'otra vez probando', '0', '26/8/2016,08:04:39 PM');
INSERT INTO `contacto` VALUES ('9', 'doii', 'vitimangs@gmail.com', 'otra vez probando', '0', '26/8/2016,08:04:39 PM');
INSERT INTO `contacto` VALUES ('10', 'Victor', 'vicmanu2001@aol.com', 'Oye acabo de registrarme dime si me vez. Saludos', '0', '28/8/2016,09:19:15 AM');

-- ----------------------------
-- Table structure for imagen
-- ----------------------------
DROP TABLE IF EXISTS `imagen`;
CREATE TABLE `imagen` (
  `id_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(100) NOT NULL,
  `tipo_imagen` varchar(45) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `imagen_ubicacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_imagen`),
  KEY `fk_imagen_negocio1` (`id_negocio`) USING BTREE,
  CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=1610 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of imagen
-- ----------------------------
INSERT INTO `imagen` VALUES ('341', 'negocios_imagenes/34/perfil.jpeg', 'image/jpeg', '34', 'perfil');
INSERT INTO `imagen` VALUES ('342', 'negocios_imagenes/34/galeria1.jpeg', 'image/jpeg', '34', 'galeria');
INSERT INTO `imagen` VALUES ('343', 'negocios_imagenes/34/galeria2.jpeg', 'image/jpeg', '34', 'galeria');
INSERT INTO `imagen` VALUES ('344', 'negocios_imagenes/34/galeria3.jpeg', 'image/jpeg', '34', 'galeria');
INSERT INTO `imagen` VALUES ('345', 'negocios_imagenes/34/galeria4.jpeg', 'image/jpeg', '34', 'galeria');
INSERT INTO `imagen` VALUES ('346', 'negocios_imagenes/34/galeria5.jpeg', 'image/jpeg', '34', 'galeria');
INSERT INTO `imagen` VALUES ('347', 'negocios_imagenes/34/galeria6.jpeg', 'image/jpeg', '34', 'galeria');
INSERT INTO `imagen` VALUES ('348', 'negocios_imagenes/34/galeria7.jpeg', 'image/jpeg', '34', 'galeria');
INSERT INTO `imagen` VALUES ('349', 'negocios_imagenes/34/galeria8.jpeg', 'image/jpeg', '34', 'galeria');
INSERT INTO `imagen` VALUES ('350', 'negocios_imagenes/34/portada.jpeg', 'image/jpeg', '34', 'panoramica');
INSERT INTO `imagen` VALUES ('351', 'negocios_imagenes/35/perfil.jpeg', 'image/jpeg', '35', 'perfil');
INSERT INTO `imagen` VALUES ('352', 'negocios_imagenes/35/galeria1.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('353', 'negocios_imagenes/35/galeria2.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('354', 'negocios_imagenes/35/galeria3.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('355', 'negocios_imagenes/35/galeria4.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('356', 'negocios_imagenes/35/galeria5.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('357', 'negocios_imagenes/35/galeria6.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('358', 'negocios_imagenes/35/galeria7.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('359', 'negocios_imagenes/35/galeria8.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('360', 'negocios_imagenes/35/galeria9.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('361', 'negocios_imagenes/35/galeria10.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('362', 'negocios_imagenes/35/galeria11.jpeg', 'image/jpeg', '35', 'galeria');
INSERT INTO `imagen` VALUES ('363', 'negocios_imagenes/35/portada.jpeg', 'image/jpeg', '35', 'panoramica');
INSERT INTO `imagen` VALUES ('388', 'negocios_imagenes/38/perfil.jpeg', 'image/jpeg', '38', 'perfil');
INSERT INTO `imagen` VALUES ('389', 'negocios_imagenes/38/galeria1.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('390', 'negocios_imagenes/38/galeria2.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('391', 'negocios_imagenes/38/galeria3.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('392', 'negocios_imagenes/38/galeria4.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('393', 'negocios_imagenes/38/galeria5.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('394', 'negocios_imagenes/38/galeria6.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('395', 'negocios_imagenes/38/galeria7.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('396', 'negocios_imagenes/38/galeria8.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('397', 'negocios_imagenes/38/galeria9.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('398', 'negocios_imagenes/38/galeria10.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('399', 'negocios_imagenes/38/galeria11.jpeg', 'image/jpeg', '38', 'galeria');
INSERT INTO `imagen` VALUES ('400', 'negocios_imagenes/38/portada.jpeg', 'image/jpeg', '38', 'panoramica');
INSERT INTO `imagen` VALUES ('434', 'negocios_imagenes/42/perfil.jpeg', 'image/jpeg', '42', 'perfil');
INSERT INTO `imagen` VALUES ('435', 'negocios_imagenes/42/galeria1.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('436', 'negocios_imagenes/42/galeria2.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('437', 'negocios_imagenes/42/galeria3.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('438', 'negocios_imagenes/42/galeria4.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('439', 'negocios_imagenes/42/galeria5.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('440', 'negocios_imagenes/42/galeria6.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('441', 'negocios_imagenes/42/galeria7.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('442', 'negocios_imagenes/42/galeria8.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('443', 'negocios_imagenes/42/galeria9.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('444', 'negocios_imagenes/42/galeria10.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('445', 'negocios_imagenes/42/galeria11.jpeg', 'image/jpeg', '42', 'galeria');
INSERT INTO `imagen` VALUES ('446', 'negocios_imagenes/42/portada.jpeg', 'image/jpeg', '42', 'panoramica');
INSERT INTO `imagen` VALUES ('460', 'negocios_imagenes/44/perfil.jpeg', 'image/jpeg', '44', 'perfil');
INSERT INTO `imagen` VALUES ('461', 'negocios_imagenes/44/galeria1.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('462', 'negocios_imagenes/44/galeria2.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('463', 'negocios_imagenes/44/galeria3.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('464', 'negocios_imagenes/44/galeria4.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('465', 'negocios_imagenes/44/galeria5.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('466', 'negocios_imagenes/44/galeria6.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('467', 'negocios_imagenes/44/galeria7.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('468', 'negocios_imagenes/44/galeria8.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('469', 'negocios_imagenes/44/galeria9.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('470', 'negocios_imagenes/44/galeria10.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('471', 'negocios_imagenes/44/galeria11.jpeg', 'image/jpeg', '44', 'galeria');
INSERT INTO `imagen` VALUES ('472', 'negocios_imagenes/44/portada.jpeg', 'image/jpeg', '44', 'panoramica');
INSERT INTO `imagen` VALUES ('481', 'negocios_imagenes/46/perfil.jpeg', 'image/jpeg', '46', 'perfil');
INSERT INTO `imagen` VALUES ('482', 'negocios_imagenes/46/galeria1.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('483', 'negocios_imagenes/46/galeria2.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('484', 'negocios_imagenes/46/galeria3.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('485', 'negocios_imagenes/46/galeria4.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('486', 'negocios_imagenes/46/galeria5.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('487', 'negocios_imagenes/46/galeria6.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('488', 'negocios_imagenes/46/galeria7.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('489', 'negocios_imagenes/46/galeria8.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('490', 'negocios_imagenes/46/galeria9.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('491', 'negocios_imagenes/46/galeria10.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('492', 'negocios_imagenes/46/galeria11.jpeg', 'image/jpeg', '46', 'galeria');
INSERT INTO `imagen` VALUES ('493', 'negocios_imagenes/46/portada.jpeg', 'image/jpeg', '46', 'panoramica');
INSERT INTO `imagen` VALUES ('526', 'negocios_imagenes/51/perfil.jpeg', 'image/jpeg', '51', 'perfil');
INSERT INTO `imagen` VALUES ('527', 'negocios_imagenes/51/galeria1.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('528', 'negocios_imagenes/51/galeria2.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('529', 'negocios_imagenes/51/galeria3.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('530', 'negocios_imagenes/51/portada.jpeg', 'image/jpeg', '51', 'panoramica');
INSERT INTO `imagen` VALUES ('531', 'negocios_imagenes/51/galeria2649691336.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('532', 'negocios_imagenes/51/galeria844156871.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('533', 'negocios_imagenes/51/galeria4308306455.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('534', 'negocios_imagenes/51/galeria5528438936.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('535', 'negocios_imagenes/51/galeria2869419479.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('536', 'negocios_imagenes/51/galeria8761973423.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('537', 'negocios_imagenes/51/galeria3218877217.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('538', 'negocios_imagenes/51/galeria3424837157.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('539', 'negocios_imagenes/51/galeria770328516.jpeg', 'image/jpeg', '51', 'galeria');
INSERT INTO `imagen` VALUES ('571', 'negocios_imagenes/55/perfil.jpeg', 'image/jpeg', '55', 'perfil');
INSERT INTO `imagen` VALUES ('572', 'negocios_imagenes/55/galeria1.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('573', 'negocios_imagenes/55/galeria2.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('574', 'negocios_imagenes/55/galeria3.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('575', 'negocios_imagenes/55/galeria4.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('576', 'negocios_imagenes/55/galeria5.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('577', 'negocios_imagenes/55/galeria6.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('578', 'negocios_imagenes/55/galeria7.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('579', 'negocios_imagenes/55/galeria8.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('580', 'negocios_imagenes/55/galeria9.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('581', 'negocios_imagenes/55/galeria10.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('582', 'negocios_imagenes/55/galeria11.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('583', 'negocios_imagenes/55/galeria6586263848.jpeg', 'image/jpeg', '55', 'galeria');
INSERT INTO `imagen` VALUES ('584', 'negocios_imagenes/55/portada.jpeg', 'image/jpeg', '55', 'panoramica');
INSERT INTO `imagen` VALUES ('585', 'negocios_imagenes/56/perfil.jpeg', 'image/jpeg', '56', 'perfil');
INSERT INTO `imagen` VALUES ('586', 'negocios_imagenes/56/galeria1.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('587', 'negocios_imagenes/56/galeria2.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('588', 'negocios_imagenes/56/galeria3.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('589', 'negocios_imagenes/56/galeria4.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('590', 'negocios_imagenes/56/galeria5.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('591', 'negocios_imagenes/56/galeria6.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('592', 'negocios_imagenes/56/galeria7.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('593', 'negocios_imagenes/56/galeria8.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('594', 'negocios_imagenes/56/galeria9.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('595', 'negocios_imagenes/56/galeria10.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('596', 'negocios_imagenes/56/galeria11.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('597', 'negocios_imagenes/56/portada.jpeg', 'image/jpeg', '56', 'panoramica');
INSERT INTO `imagen` VALUES ('598', 'negocios_imagenes/56/galeria2102638940.jpeg', 'image/jpeg', '56', 'galeria');
INSERT INTO `imagen` VALUES ('687', 'negocios_imagenes/64/perfil.jpeg', 'image/jpeg', '64', 'perfil');
INSERT INTO `imagen` VALUES ('688', 'negocios_imagenes/64/galeria1.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('689', 'negocios_imagenes/64/galeria2.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('690', 'negocios_imagenes/64/galeria3.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('692', 'negocios_imagenes/64/galeria5.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('693', 'negocios_imagenes/64/galeria6.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('694', 'negocios_imagenes/64/galeria7.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('695', 'negocios_imagenes/64/galeria8.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('696', 'negocios_imagenes/64/galeria9.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('697', 'negocios_imagenes/64/galeria10.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('698', 'negocios_imagenes/64/galeria11.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('699', 'negocios_imagenes/64/galeria3436099368.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('700', 'negocios_imagenes/64/portada.jpeg', 'image/jpeg', '64', 'panoramica');
INSERT INTO `imagen` VALUES ('701', 'negocios_imagenes/64/galeria9595109145.jpeg', 'image/jpeg', '64', 'galeria');
INSERT INTO `imagen` VALUES ('702', 'negocios_imagenes/65/perfil.jpeg', 'image/jpeg', '65', 'perfil');
INSERT INTO `imagen` VALUES ('703', 'negocios_imagenes/65/galeria1.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('704', 'negocios_imagenes/65/galeria2.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('705', 'negocios_imagenes/65/galeria3.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('706', 'negocios_imagenes/65/galeria4.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('707', 'negocios_imagenes/65/galeria5.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('708', 'negocios_imagenes/65/galeria6.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('709', 'negocios_imagenes/65/galeria7.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('710', 'negocios_imagenes/65/galeria8.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('711', 'negocios_imagenes/65/galeria9.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('712', 'negocios_imagenes/65/galeria10.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('713', 'negocios_imagenes/65/galeria11.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('715', 'negocios_imagenes/65/portada.jpeg', 'image/jpeg', '65', 'panoramica');
INSERT INTO `imagen` VALUES ('716', 'negocios_imagenes/65/galeria6886946911.jpeg', 'image/jpeg', '65', 'galeria');
INSERT INTO `imagen` VALUES ('717', 'negocios_imagenes/67/perfil.jpeg', 'image/jpeg', '67', 'perfil');
INSERT INTO `imagen` VALUES ('718', 'negocios_imagenes/67/galeria1.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('719', 'negocios_imagenes/67/galeria2.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('720', 'negocios_imagenes/67/galeria3.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('721', 'negocios_imagenes/67/galeria4.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('722', 'negocios_imagenes/67/galeria5.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('723', 'negocios_imagenes/67/galeria6.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('724', 'negocios_imagenes/67/galeria7.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('725', 'negocios_imagenes/67/galeria8.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('726', 'negocios_imagenes/67/galeria9.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('727', 'negocios_imagenes/67/galeria10.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('728', 'negocios_imagenes/67/galeria11.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('729', 'negocios_imagenes/67/portada.jpeg', 'image/jpeg', '67', 'panoramica');
INSERT INTO `imagen` VALUES ('730', 'negocios_imagenes/67/galeria1713498222.jpeg', 'image/jpeg', '67', 'galeria');
INSERT INTO `imagen` VALUES ('741', 'negocios_imagenes/69/perfil.jpeg', 'image/jpeg', '69', 'perfil');
INSERT INTO `imagen` VALUES ('742', 'negocios_imagenes/69/galeria1.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('743', 'negocios_imagenes/69/galeria2.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('744', 'negocios_imagenes/69/galeria3.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('745', 'negocios_imagenes/69/galeria4.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('746', 'negocios_imagenes/69/galeria5.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('747', 'negocios_imagenes/69/galeria6.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('748', 'negocios_imagenes/69/galeria7.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('749', 'negocios_imagenes/69/galeria8.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('750', 'negocios_imagenes/69/galeria9.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('751', 'negocios_imagenes/69/galeria10.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('752', 'negocios_imagenes/69/galeria11.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('753', 'negocios_imagenes/69/portada.jpeg', 'image/jpeg', '69', 'panoramica');
INSERT INTO `imagen` VALUES ('754', 'negocios_imagenes/69/galeria3420056155.jpeg', 'image/jpeg', '69', 'galeria');
INSERT INTO `imagen` VALUES ('784', 'negocios_imagenes/74/perfil.jpeg', 'image/jpeg', '74', 'perfil');
INSERT INTO `imagen` VALUES ('785', 'negocios_imagenes/74/galeria1.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('786', 'negocios_imagenes/74/galeria2.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('787', 'negocios_imagenes/74/galeria3.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('788', 'negocios_imagenes/74/galeria4.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('789', 'negocios_imagenes/74/galeria5.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('790', 'negocios_imagenes/74/galeria6.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('791', 'negocios_imagenes/74/galeria7.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('792', 'negocios_imagenes/74/galeria8.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('793', 'negocios_imagenes/74/galeria9.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('794', 'negocios_imagenes/74/galeria10.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('795', 'negocios_imagenes/74/galeria11.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('796', 'negocios_imagenes/74/galeria5514997405.jpeg', 'image/jpeg', '74', 'galeria');
INSERT INTO `imagen` VALUES ('797', 'negocios_imagenes/74/portada.jpeg', 'image/jpeg', '74', 'panoramica');
INSERT INTO `imagen` VALUES ('798', 'negocios_imagenes/75/perfil.jpeg', 'image/jpeg', '75', 'perfil');
INSERT INTO `imagen` VALUES ('799', 'negocios_imagenes/75/galeria1.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('800', 'negocios_imagenes/75/galeria2.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('801', 'negocios_imagenes/75/galeria3.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('802', 'negocios_imagenes/75/galeria4.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('803', 'negocios_imagenes/75/galeria5.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('804', 'negocios_imagenes/75/galeria6.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('805', 'negocios_imagenes/75/galeria7.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('806', 'negocios_imagenes/75/galeria8.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('807', 'negocios_imagenes/75/galeria9.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('808', 'negocios_imagenes/75/galeria10.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('809', 'negocios_imagenes/75/galeria11.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('810', 'negocios_imagenes/75/galeria8229275268.jpeg', 'image/jpeg', '75', 'galeria');
INSERT INTO `imagen` VALUES ('811', 'negocios_imagenes/75/portada.jpeg', 'image/jpeg', '75', 'panoramica');
INSERT INTO `imagen` VALUES ('812', 'negocios_imagenes/76/perfil.jpeg', 'image/jpeg', '76', 'perfil');
INSERT INTO `imagen` VALUES ('813', 'negocios_imagenes/76/galeria1.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('814', 'negocios_imagenes/76/galeria2.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('815', 'negocios_imagenes/76/galeria3.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('816', 'negocios_imagenes/76/galeria4.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('817', 'negocios_imagenes/76/galeria5.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('818', 'negocios_imagenes/76/galeria6.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('819', 'negocios_imagenes/76/galeria7.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('820', 'negocios_imagenes/76/galeria8.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('821', 'negocios_imagenes/76/galeria9.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('822', 'negocios_imagenes/76/galeria10.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('823', 'negocios_imagenes/76/galeria11.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('824', 'negocios_imagenes/76/portada.jpeg', 'image/jpeg', '76', 'panoramica');
INSERT INTO `imagen` VALUES ('825', 'negocios_imagenes/76/galeria4042529705.jpeg', 'image/jpeg', '76', 'galeria');
INSERT INTO `imagen` VALUES ('853', 'negocios_imagenes/79/perfil.jpeg', 'image/jpeg', '79', 'perfil');
INSERT INTO `imagen` VALUES ('854', 'negocios_imagenes/79/galeria1.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('855', 'negocios_imagenes/79/galeria2.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('856', 'negocios_imagenes/79/galeria3.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('857', 'negocios_imagenes/79/galeria4.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('858', 'negocios_imagenes/79/galeria5.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('859', 'negocios_imagenes/79/galeria6.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('860', 'negocios_imagenes/79/galeria7.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('861', 'negocios_imagenes/79/galeria8.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('862', 'negocios_imagenes/79/galeria9.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('863', 'negocios_imagenes/79/galeria10.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('864', 'negocios_imagenes/79/galeria11.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('865', 'negocios_imagenes/79/galeria4702126080.jpeg', 'image/jpeg', '79', 'galeria');
INSERT INTO `imagen` VALUES ('866', 'negocios_imagenes/79/portada.jpeg', 'image/jpeg', '79', 'panoramica');
INSERT INTO `imagen` VALUES ('867', 'negocios_imagenes/80/perfil.jpeg', 'image/jpeg', '80', 'perfil');
INSERT INTO `imagen` VALUES ('868', 'negocios_imagenes/80/galeria1.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('869', 'negocios_imagenes/80/galeria2.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('870', 'negocios_imagenes/80/galeria3.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('871', 'negocios_imagenes/80/galeria4.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('872', 'negocios_imagenes/80/galeria5.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('873', 'negocios_imagenes/80/galeria6.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('874', 'negocios_imagenes/80/galeria7.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('875', 'negocios_imagenes/80/galeria8.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('876', 'negocios_imagenes/80/galeria9.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('877', 'negocios_imagenes/80/galeria10.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('878', 'negocios_imagenes/80/galeria11.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('879', 'negocios_imagenes/80/portada.jpeg', 'image/jpeg', '80', 'panoramica');
INSERT INTO `imagen` VALUES ('880', 'negocios_imagenes/80/galeria5137608839.jpeg', 'image/jpeg', '80', 'galeria');
INSERT INTO `imagen` VALUES ('881', 'negocios_imagenes/81/perfil.jpeg', 'image/jpeg', '81', 'perfil');
INSERT INTO `imagen` VALUES ('882', 'negocios_imagenes/81/galeria1.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('883', 'negocios_imagenes/81/galeria2.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('884', 'negocios_imagenes/81/galeria3.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('885', 'negocios_imagenes/81/galeria4.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('886', 'negocios_imagenes/81/galeria5.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('887', 'negocios_imagenes/81/galeria6.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('888', 'negocios_imagenes/81/galeria7.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('889', 'negocios_imagenes/81/galeria8.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('890', 'negocios_imagenes/81/galeria9.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('891', 'negocios_imagenes/81/galeria10.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('892', 'negocios_imagenes/81/galeria11.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('893', 'negocios_imagenes/81/portada.jpeg', 'image/jpeg', '81', 'panoramica');
INSERT INTO `imagen` VALUES ('894', 'negocios_imagenes/81/galeria3378573560.jpeg', 'image/jpeg', '81', 'galeria');
INSERT INTO `imagen` VALUES ('910', 'negocios_imagenes/83/perfil.jpeg', 'image/jpeg', '83', 'perfil');
INSERT INTO `imagen` VALUES ('911', 'negocios_imagenes/83/galeria1.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('912', 'negocios_imagenes/83/galeria2.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('913', 'negocios_imagenes/83/galeria3.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('914', 'negocios_imagenes/83/galeria4.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('915', 'negocios_imagenes/83/galeria5.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('916', 'negocios_imagenes/83/galeria6.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('917', 'negocios_imagenes/83/galeria7.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('918', 'negocios_imagenes/83/galeria8.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('919', 'negocios_imagenes/83/galeria9.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('920', 'negocios_imagenes/83/galeria10.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('921', 'negocios_imagenes/83/galeria11.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('922', 'negocios_imagenes/83/portada.jpeg', 'image/jpeg', '83', 'panoramica');
INSERT INTO `imagen` VALUES ('923', 'negocios_imagenes/83/galeria9942421423.jpeg', 'image/jpeg', '83', 'galeria');
INSERT INTO `imagen` VALUES ('924', 'negocios_imagenes/84/perfil.jpeg', 'image/jpeg', '84', 'perfil');
INSERT INTO `imagen` VALUES ('925', 'negocios_imagenes/84/galeria1.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('926', 'negocios_imagenes/84/galeria2.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('927', 'negocios_imagenes/84/galeria3.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('928', 'negocios_imagenes/84/galeria4.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('929', 'negocios_imagenes/84/galeria5.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('930', 'negocios_imagenes/84/galeria6.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('931', 'negocios_imagenes/84/galeria7.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('932', 'negocios_imagenes/84/galeria8.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('933', 'negocios_imagenes/84/galeria9.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('934', 'negocios_imagenes/84/galeria10.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('935', 'negocios_imagenes/84/galeria11.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('936', 'negocios_imagenes/84/galeria429102688.jpeg', 'image/jpeg', '84', 'galeria');
INSERT INTO `imagen` VALUES ('937', 'negocios_imagenes/84/portada.jpeg', 'image/jpeg', '84', 'panoramica');
INSERT INTO `imagen` VALUES ('938', 'negocios_imagenes/85/perfil.jpeg', 'image/jpeg', '85', 'perfil');
INSERT INTO `imagen` VALUES ('939', 'negocios_imagenes/85/galeria1.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('940', 'negocios_imagenes/85/galeria2.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('941', 'negocios_imagenes/85/galeria3.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('942', 'negocios_imagenes/85/galeria4.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('943', 'negocios_imagenes/85/galeria5.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('944', 'negocios_imagenes/85/galeria6.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('945', 'negocios_imagenes/85/galeria7.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('946', 'negocios_imagenes/85/galeria8.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('947', 'negocios_imagenes/85/galeria9.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('948', 'negocios_imagenes/85/galeria10.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('949', 'negocios_imagenes/85/galeria11.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('950', 'negocios_imagenes/85/portada.jpeg', 'image/jpeg', '85', 'panoramica');
INSERT INTO `imagen` VALUES ('951', 'negocios_imagenes/85/galeria4683419833.jpeg', 'image/jpeg', '85', 'galeria');
INSERT INTO `imagen` VALUES ('965', 'negocios_imagenes/87/perfil.jpeg', 'image/jpeg', '87', 'perfil');
INSERT INTO `imagen` VALUES ('966', 'negocios_imagenes/87/galeria1.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('967', 'negocios_imagenes/87/galeria2.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('968', 'negocios_imagenes/87/galeria3.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('969', 'negocios_imagenes/87/galeria4.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('970', 'negocios_imagenes/87/galeria5.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('971', 'negocios_imagenes/87/galeria6.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('972', 'negocios_imagenes/87/galeria7.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('973', 'negocios_imagenes/87/galeria8.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('974', 'negocios_imagenes/87/galeria9.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('975', 'negocios_imagenes/87/galeria10.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('976', 'negocios_imagenes/87/galeria11.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('977', 'negocios_imagenes/87/galeria1615349689.jpeg', 'image/jpeg', '87', 'galeria');
INSERT INTO `imagen` VALUES ('978', 'negocios_imagenes/87/portada.jpeg', 'image/jpeg', '87', 'panoramica');
INSERT INTO `imagen` VALUES ('979', 'negocios_imagenes/88/perfil.jpeg', 'image/jpeg', '88', 'perfil');
INSERT INTO `imagen` VALUES ('980', 'negocios_imagenes/88/galeria1.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('981', 'negocios_imagenes/88/galeria2.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('982', 'negocios_imagenes/88/galeria3.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('983', 'negocios_imagenes/88/galeria4.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('984', 'negocios_imagenes/88/galeria5.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('985', 'negocios_imagenes/88/galeria6.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('986', 'negocios_imagenes/88/galeria7.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('987', 'negocios_imagenes/88/galeria8.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('988', 'negocios_imagenes/88/galeria9.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('989', 'negocios_imagenes/88/galeria10.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('990', 'negocios_imagenes/88/galeria11.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('991', 'negocios_imagenes/88/portada.jpeg', 'image/jpeg', '88', 'panoramica');
INSERT INTO `imagen` VALUES ('992', 'negocios_imagenes/88/galeria6594972054.jpeg', 'image/jpeg', '88', 'galeria');
INSERT INTO `imagen` VALUES ('1020', 'negocios_imagenes/91/perfil.jpeg', 'image/jpeg', '91', 'perfil');
INSERT INTO `imagen` VALUES ('1021', 'negocios_imagenes/91/galeria1.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1022', 'negocios_imagenes/91/galeria2.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1023', 'negocios_imagenes/91/galeria3.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1024', 'negocios_imagenes/91/galeria2472494905.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1025', 'negocios_imagenes/91/galeria3535133197.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1026', 'negocios_imagenes/91/portada.jpeg', 'image/jpeg', '91', 'panoramica');
INSERT INTO `imagen` VALUES ('1027', 'negocios_imagenes/91/galeria7385687213.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1028', 'negocios_imagenes/91/galeria3640723554.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1029', 'negocios_imagenes/91/galeria5931068790.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1030', 'negocios_imagenes/91/galeria2929438166.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1031', 'negocios_imagenes/91/galeria5591472302.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1032', 'negocios_imagenes/91/galeria9794159151.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1033', 'negocios_imagenes/91/galeria7388214458.jpeg', 'image/jpeg', '91', 'galeria');
INSERT INTO `imagen` VALUES ('1034', 'negocios_imagenes/92/perfil.jpeg', 'image/jpeg', '92', 'perfil');
INSERT INTO `imagen` VALUES ('1035', 'negocios_imagenes/92/galeria1.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1036', 'negocios_imagenes/92/galeria2.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1037', 'negocios_imagenes/92/galeria3.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1038', 'negocios_imagenes/92/galeria4.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1039', 'negocios_imagenes/92/galeria5.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1040', 'negocios_imagenes/92/galeria6.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1041', 'negocios_imagenes/92/galeria7.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1042', 'negocios_imagenes/92/galeria8.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1043', 'negocios_imagenes/92/galeria9.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1044', 'negocios_imagenes/92/galeria10.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1045', 'negocios_imagenes/92/galeria11.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1046', 'negocios_imagenes/92/portada.jpeg', 'image/jpeg', '92', 'panoramica');
INSERT INTO `imagen` VALUES ('1047', 'negocios_imagenes/92/galeria3596958716.jpeg', 'image/jpeg', '92', 'galeria');
INSERT INTO `imagen` VALUES ('1048', 'negocios_imagenes/93/perfil.jpeg', 'image/jpeg', '93', 'perfil');
INSERT INTO `imagen` VALUES ('1049', 'negocios_imagenes/93/galeria1.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1050', 'negocios_imagenes/93/galeria2.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1051', 'negocios_imagenes/93/galeria3.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1052', 'negocios_imagenes/93/galeria4.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1053', 'negocios_imagenes/93/galeria5.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1054', 'negocios_imagenes/93/galeria6.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1055', 'negocios_imagenes/93/galeria7.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1056', 'negocios_imagenes/93/galeria8.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1057', 'negocios_imagenes/93/galeria9.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1058', 'negocios_imagenes/93/galeria10.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1059', 'negocios_imagenes/93/galeria11.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1060', 'negocios_imagenes/93/portada.jpeg', 'image/jpeg', '93', 'panoramica');
INSERT INTO `imagen` VALUES ('1061', 'negocios_imagenes/93/galeria722465112.jpeg', 'image/jpeg', '93', 'galeria');
INSERT INTO `imagen` VALUES ('1062', 'negocios_imagenes/94/perfil.jpeg', 'image/jpeg', '94', 'perfil');
INSERT INTO `imagen` VALUES ('1063', 'negocios_imagenes/94/galeria1.jpeg', 'image/jpeg', '94', 'galeria');
INSERT INTO `imagen` VALUES ('1064', 'negocios_imagenes/94/galeria2.jpeg', 'image/jpeg', '94', 'galeria');
INSERT INTO `imagen` VALUES ('1065', 'negocios_imagenes/94/galeria3.jpeg', 'image/jpeg', '94', 'galeria');
INSERT INTO `imagen` VALUES ('1066', 'negocios_imagenes/94/galeria4.jpeg', 'image/jpeg', '94', 'galeria');
INSERT INTO `imagen` VALUES ('1067', 'negocios_imagenes/94/galeria5.jpeg', 'image/jpeg', '94', 'galeria');
INSERT INTO `imagen` VALUES ('1068', 'negocios_imagenes/94/galeria6.jpeg', 'image/jpeg', '94', 'galeria');
INSERT INTO `imagen` VALUES ('1069', 'negocios_imagenes/94/galeria7.jpeg', 'image/jpeg', '94', 'galeria');
INSERT INTO `imagen` VALUES ('1070', 'negocios_imagenes/94/portada.jpeg', 'image/jpeg', '94', 'panoramica');
INSERT INTO `imagen` VALUES ('1071', 'negocios_imagenes/95/perfil.jpeg', 'image/jpeg', '95', 'perfil');
INSERT INTO `imagen` VALUES ('1072', 'negocios_imagenes/95/galeria1.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1073', 'negocios_imagenes/95/galeria2.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1074', 'negocios_imagenes/95/galeria3.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1075', 'negocios_imagenes/95/galeria4.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1076', 'negocios_imagenes/95/galeria5.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1077', 'negocios_imagenes/95/galeria6.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1078', 'negocios_imagenes/95/galeria7.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1079', 'negocios_imagenes/95/galeria8.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1080', 'negocios_imagenes/95/galeria9.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1081', 'negocios_imagenes/95/galeria10.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1082', 'negocios_imagenes/95/galeria11.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1083', 'negocios_imagenes/95/portada.jpeg', 'image/jpeg', '95', 'panoramica');
INSERT INTO `imagen` VALUES ('1084', 'negocios_imagenes/95/galeria4461683513.jpeg', 'image/jpeg', '95', 'galeria');
INSERT INTO `imagen` VALUES ('1178', 'negocios_imagenes/104/perfil.jpeg', 'image/jpeg', '104', 'perfil');
INSERT INTO `imagen` VALUES ('1179', 'negocios_imagenes/104/galeria1.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1180', 'negocios_imagenes/104/galeria2.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1181', 'negocios_imagenes/104/galeria3.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1182', 'negocios_imagenes/104/galeria4.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1183', 'negocios_imagenes/104/galeria5.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1184', 'negocios_imagenes/104/galeria6.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1185', 'negocios_imagenes/104/galeria7.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1186', 'negocios_imagenes/104/galeria8.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1187', 'negocios_imagenes/104/galeria9.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1188', 'negocios_imagenes/104/galeria10.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1189', 'negocios_imagenes/104/portada.jpeg', 'image/jpeg', '104', 'panoramica');
INSERT INTO `imagen` VALUES ('1191', 'negocios_imagenes/104/galeria7129757100.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1192', 'negocios_imagenes/104/galeria782294522.jpeg', 'image/jpeg', '104', 'galeria');
INSERT INTO `imagen` VALUES ('1193', 'negocios_imagenes/105/perfil.jpeg', 'image/jpeg', '105', 'perfil');
INSERT INTO `imagen` VALUES ('1194', 'negocios_imagenes/105/galeria1.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1195', 'negocios_imagenes/105/galeria2.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1196', 'negocios_imagenes/105/galeria3.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1197', 'negocios_imagenes/105/galeria8925015742.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1198', 'negocios_imagenes/105/galeria8222507798.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1200', 'negocios_imagenes/105/galeria2323491555.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1201', 'negocios_imagenes/105/galeria815708271.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1202', 'negocios_imagenes/105/galeria8337153404.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1203', 'negocios_imagenes/105/galeria4557259158.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1205', 'negocios_imagenes/105/portada.jpeg', 'image/jpeg', '105', 'panoramica');
INSERT INTO `imagen` VALUES ('1206', 'negocios_imagenes/106/perfil.jpeg', 'image/jpeg', '106', 'perfil');
INSERT INTO `imagen` VALUES ('1208', 'negocios_imagenes/106/galeria2.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1209', 'negocios_imagenes/106/galeria3.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1210', 'negocios_imagenes/106/galeria4.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1211', 'negocios_imagenes/106/galeria5.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1212', 'negocios_imagenes/106/galeria6.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1213', 'negocios_imagenes/106/galeria7.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1214', 'negocios_imagenes/106/galeria8.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1215', 'negocios_imagenes/106/galeria9.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1216', 'negocios_imagenes/106/galeria10.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1217', 'negocios_imagenes/106/portada.jpeg', 'image/jpeg', '106', 'panoramica');
INSERT INTO `imagen` VALUES ('1218', 'negocios_imagenes/106/galeria6727797233.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1219', 'negocios_imagenes/106/galeria8516577361.jpeg', 'image/jpeg', '106', 'galeria');
INSERT INTO `imagen` VALUES ('1220', 'negocios_imagenes/105/galeria9894881931.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1221', 'negocios_imagenes/105/galeria1399904423.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1222', 'negocios_imagenes/105/galeria4508478481.jpeg', 'image/jpeg', '105', 'galeria');
INSERT INTO `imagen` VALUES ('1223', 'negocios_imagenes/107/perfil.jpeg', 'image/jpeg', '107', 'perfil');
INSERT INTO `imagen` VALUES ('1224', 'negocios_imagenes/107/galeria1.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1225', 'negocios_imagenes/107/galeria2.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1226', 'negocios_imagenes/107/galeria3.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1227', 'negocios_imagenes/107/galeria4.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1228', 'negocios_imagenes/107/galeria5.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1229', 'negocios_imagenes/107/galeria6.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1230', 'negocios_imagenes/107/galeria7.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1231', 'negocios_imagenes/107/galeria8.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1232', 'negocios_imagenes/107/galeria9.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1233', 'negocios_imagenes/107/galeria10.jpeg', 'image/jpeg', '107', 'galeria');
INSERT INTO `imagen` VALUES ('1234', 'negocios_imagenes/107/portada.jpeg', 'image/jpeg', '107', 'panoramica');
INSERT INTO `imagen` VALUES ('1235', 'negocios_imagenes/108/perfil.jpeg', 'image/jpeg', '108', 'perfil');
INSERT INTO `imagen` VALUES ('1239', 'negocios_imagenes/108/perfil.jpeg', 'image/jpeg', '108', 'perfil');
INSERT INTO `imagen` VALUES ('1243', 'negocios_imagenes/108/perfil.jpeg', 'image/jpeg', '108', 'perfil');
INSERT INTO `imagen` VALUES ('1247', 'negocios_imagenes/108/galeria9632715630.jpeg', 'image/jpeg', '108', 'galeria');
INSERT INTO `imagen` VALUES ('1249', 'negocios_imagenes/108/galeria695016818.jpeg', 'image/jpeg', '108', 'galeria');
INSERT INTO `imagen` VALUES ('1250', 'negocios_imagenes/108/galeria2966951966.jpeg', 'image/jpeg', '108', 'galeria');
INSERT INTO `imagen` VALUES ('1251', 'negocios_imagenes/108/galeria4282964084.jpeg', 'image/jpeg', '108', 'galeria');
INSERT INTO `imagen` VALUES ('1252', 'negocios_imagenes/108/galeria4475025469.jpeg', 'image/jpeg', '108', 'galeria');
INSERT INTO `imagen` VALUES ('1253', 'negocios_imagenes/108/galeria6164067583.jpeg', 'image/jpeg', '108', 'galeria');
INSERT INTO `imagen` VALUES ('1254', 'negocios_imagenes/108/galeria7293529745.jpeg', 'image/jpeg', '108', 'galeria');
INSERT INTO `imagen` VALUES ('1255', 'negocios_imagenes/108/galeria7620900843.jpeg', 'image/jpeg', '108', 'galeria');
INSERT INTO `imagen` VALUES ('1256', 'negocios_imagenes/108/portada.jpeg', 'image/jpeg', '108', 'panoramica');
INSERT INTO `imagen` VALUES ('1257', 'negocios_imagenes/109/perfil.jpeg', 'image/jpeg', '109', 'perfil');
INSERT INTO `imagen` VALUES ('1258', 'negocios_imagenes/109/galeria1.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1259', 'negocios_imagenes/109/galeria2.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1260', 'negocios_imagenes/109/galeria3.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1261', 'negocios_imagenes/109/galeria4.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1262', 'negocios_imagenes/109/galeria5.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1263', 'negocios_imagenes/109/galeria6.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1264', 'negocios_imagenes/109/galeria7.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1265', 'negocios_imagenes/109/galeria8.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1266', 'negocios_imagenes/109/galeria9.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1268', 'negocios_imagenes/109/perfil.jpeg', 'image/jpeg', '109', 'perfil');
INSERT INTO `imagen` VALUES ('1269', 'negocios_imagenes/109/galeria1.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1270', 'negocios_imagenes/109/galeria2.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1271', 'negocios_imagenes/109/galeria3.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1272', 'negocios_imagenes/109/galeria4.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1273', 'negocios_imagenes/109/galeria5.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1274', 'negocios_imagenes/109/galeria6.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1275', 'negocios_imagenes/109/galeria7.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1276', 'negocios_imagenes/109/galeria8.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1277', 'negocios_imagenes/109/galeria9.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1278', 'negocios_imagenes/109/galeria10.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1279', 'negocios_imagenes/109/perfil.jpeg', 'image/jpeg', '109', 'perfil');
INSERT INTO `imagen` VALUES ('1280', 'negocios_imagenes/109/galeria1.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1281', 'negocios_imagenes/109/galeria2.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1282', 'negocios_imagenes/109/galeria3.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1283', 'negocios_imagenes/109/galeria4.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1284', 'negocios_imagenes/109/galeria5.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1285', 'negocios_imagenes/109/galeria6.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1286', 'negocios_imagenes/109/galeria7.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1287', 'negocios_imagenes/109/galeria8.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1288', 'negocios_imagenes/109/galeria9.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1289', 'negocios_imagenes/109/galeria10.jpeg', 'image/jpeg', '109', 'galeria');
INSERT INTO `imagen` VALUES ('1292', 'negocios_imagenes/109/portada.jpeg', 'image/jpeg', '109', 'panoramica');
INSERT INTO `imagen` VALUES ('1293', 'negocios_imagenes/114/perfil.jpeg', 'image/jpeg', '114', 'perfil');
INSERT INTO `imagen` VALUES ('1294', 'negocios_imagenes/114/galeria1.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1295', 'negocios_imagenes/114/galeria2.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1296', 'negocios_imagenes/114/galeria3.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1297', 'negocios_imagenes/114/galeria4.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1298', 'negocios_imagenes/114/galeria5.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1299', 'negocios_imagenes/114/galeria6.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1300', 'negocios_imagenes/114/galeria7.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1301', 'negocios_imagenes/114/galeria8.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1302', 'negocios_imagenes/114/galeria9.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1303', 'negocios_imagenes/114/galeria10.jpeg', 'image/jpeg', '114', 'galeria');
INSERT INTO `imagen` VALUES ('1304', 'negocios_imagenes/114/portada.jpeg', 'image/jpeg', '114', 'panoramica');
INSERT INTO `imagen` VALUES ('1305', 'negocios_imagenes/115/perfil.jpeg', 'image/jpeg', '115', 'perfil');
INSERT INTO `imagen` VALUES ('1306', 'negocios_imagenes/115/galeria1.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1307', 'negocios_imagenes/115/galeria2.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1308', 'negocios_imagenes/115/galeria3.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1309', 'negocios_imagenes/115/galeria4.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1310', 'negocios_imagenes/115/galeria5.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1311', 'negocios_imagenes/115/galeria6.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1312', 'negocios_imagenes/115/galeria7.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1313', 'negocios_imagenes/115/galeria8.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1314', 'negocios_imagenes/115/galeria9.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1315', 'negocios_imagenes/115/galeria10.jpeg', 'image/jpeg', '115', 'galeria');
INSERT INTO `imagen` VALUES ('1316', 'negocios_imagenes/116/perfil.jpeg', 'image/jpeg', '116', 'perfil');
INSERT INTO `imagen` VALUES ('1317', 'negocios_imagenes/116/galeria1.jpeg', 'image/jpeg', '116', 'galeria');
INSERT INTO `imagen` VALUES ('1318', 'negocios_imagenes/116/galeria2.jpeg', 'image/jpeg', '116', 'galeria');
INSERT INTO `imagen` VALUES ('1319', 'negocios_imagenes/116/galeria3.jpeg', 'image/jpeg', '116', 'galeria');
INSERT INTO `imagen` VALUES ('1320', 'negocios_imagenes/116/galeria4.jpeg', 'image/jpeg', '116', 'galeria');
INSERT INTO `imagen` VALUES ('1322', 'negocios_imagenes/116/portada.jpeg', 'image/jpeg', '116', 'panoramica');
INSERT INTO `imagen` VALUES ('1323', 'negocios_imagenes/116/galeria8140583854.jpeg', 'image/jpeg', '116', 'galeria');
INSERT INTO `imagen` VALUES ('1324', 'negocios_imagenes/116/galeria6992102591.jpeg', 'image/jpeg', '116', 'galeria');
INSERT INTO `imagen` VALUES ('1326', 'negocios_imagenes/116/galeria8949542936.jpeg', 'image/jpeg', '116', 'galeria');
INSERT INTO `imagen` VALUES ('1327', 'negocios_imagenes/117/perfil.jpeg', 'image/jpeg', '117', 'perfil');
INSERT INTO `imagen` VALUES ('1328', 'negocios_imagenes/117/galeria1.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1329', 'negocios_imagenes/117/galeria2.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1330', 'negocios_imagenes/117/galeria3.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1331', 'negocios_imagenes/117/galeria4.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1332', 'negocios_imagenes/117/galeria5.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1333', 'negocios_imagenes/117/galeria6.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1334', 'negocios_imagenes/117/galeria7.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1335', 'negocios_imagenes/117/galeria8.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1336', 'negocios_imagenes/117/galeria9.jpeg', 'image/jpeg', '117', 'galeria');
INSERT INTO `imagen` VALUES ('1337', 'negocios_imagenes/117/portada.jpeg', 'image/jpeg', '117', 'panoramica');
INSERT INTO `imagen` VALUES ('1338', 'negocios_imagenes/118/perfil.jpeg', 'image/jpeg', '118', 'perfil');
INSERT INTO `imagen` VALUES ('1339', 'negocios_imagenes/118/galeria1.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1340', 'negocios_imagenes/118/galeria2.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1341', 'negocios_imagenes/118/galeria3.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1342', 'negocios_imagenes/118/galeria4.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1343', 'negocios_imagenes/118/galeria5.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1344', 'negocios_imagenes/118/galeria6.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1345', 'negocios_imagenes/118/galeria7.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1346', 'negocios_imagenes/118/galeria8.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1347', 'negocios_imagenes/118/galeria9.jpeg', 'image/jpeg', '118', 'galeria');
INSERT INTO `imagen` VALUES ('1348', 'negocios_imagenes/119/perfil.jpeg', 'image/jpeg', '119', 'perfil');
INSERT INTO `imagen` VALUES ('1349', 'negocios_imagenes/119/galeria1.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1350', 'negocios_imagenes/119/galeria2.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1351', 'negocios_imagenes/119/galeria3.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1352', 'negocios_imagenes/119/galeria4.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1353', 'negocios_imagenes/119/galeria5.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1354', 'negocios_imagenes/119/galeria6.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1355', 'negocios_imagenes/119/galeria7.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1356', 'negocios_imagenes/119/galeria8.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1357', 'negocios_imagenes/119/galeria9.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1358', 'negocios_imagenes/119/galeria10.jpeg', 'image/jpeg', '119', 'galeria');
INSERT INTO `imagen` VALUES ('1359', 'negocios_imagenes/118/portada.jpeg', 'image/jpeg', '118', 'panoramica');
INSERT INTO `imagen` VALUES ('1360', 'negocios_imagenes/119/portada.jpeg', 'image/jpeg', '119', 'panoramica');
INSERT INTO `imagen` VALUES ('1361', 'negocios_imagenes/120/perfil.jpeg', 'image/jpeg', '120', 'perfil');
INSERT INTO `imagen` VALUES ('1362', 'negocios_imagenes/120/galeria1.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1363', 'negocios_imagenes/120/galeria2.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1364', 'negocios_imagenes/120/galeria3.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1365', 'negocios_imagenes/120/galeria4.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1366', 'negocios_imagenes/120/galeria5.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1367', 'negocios_imagenes/120/galeria6.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1368', 'negocios_imagenes/120/galeria7.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1369', 'negocios_imagenes/120/galeria8.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1370', 'negocios_imagenes/120/galeria9.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1371', 'negocios_imagenes/120/galeria10.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1372', 'negocios_imagenes/120/galeria11.jpeg', 'image/jpeg', '120', 'galeria');
INSERT INTO `imagen` VALUES ('1373', 'negocios_imagenes/121/perfil.jpeg', 'image/jpeg', '121', 'perfil');
INSERT INTO `imagen` VALUES ('1374', 'negocios_imagenes/121/galeria1.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1375', 'negocios_imagenes/121/galeria2.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1376', 'negocios_imagenes/121/galeria3.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1377', 'negocios_imagenes/121/galeria4.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1378', 'negocios_imagenes/121/galeria5.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1379', 'negocios_imagenes/121/galeria6.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1380', 'negocios_imagenes/121/galeria7.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1381', 'negocios_imagenes/121/galeria8.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1382', 'negocios_imagenes/121/galeria9.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1383', 'negocios_imagenes/121/galeria9547048529.jpeg', 'image/jpeg', '121', 'galeria');
INSERT INTO `imagen` VALUES ('1384', 'negocios_imagenes/122/perfil.jpeg', 'image/jpeg', '122', 'perfil');
INSERT INTO `imagen` VALUES ('1385', 'negocios_imagenes/122/galeria1.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1386', 'negocios_imagenes/122/galeria2.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1387', 'negocios_imagenes/122/galeria3.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1388', 'negocios_imagenes/122/galeria4.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1389', 'negocios_imagenes/122/galeria5.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1390', 'negocios_imagenes/122/galeria6.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1391', 'negocios_imagenes/122/galeria7.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1392', 'negocios_imagenes/122/galeria8.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1393', 'negocios_imagenes/122/galeria9.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1394', 'negocios_imagenes/122/galeria10.jpeg', 'image/jpeg', '122', 'galeria');
INSERT INTO `imagen` VALUES ('1395', 'negocios_imagenes/123/perfil.jpeg', 'image/jpeg', '123', 'perfil');
INSERT INTO `imagen` VALUES ('1396', 'negocios_imagenes/123/galeria1.jpeg', 'image/jpeg', '123', 'galeria');
INSERT INTO `imagen` VALUES ('1397', 'negocios_imagenes/123/galeria2.jpeg', 'image/jpeg', '123', 'galeria');
INSERT INTO `imagen` VALUES ('1398', 'negocios_imagenes/123/galeria3.jpeg', 'image/jpeg', '123', 'galeria');
INSERT INTO `imagen` VALUES ('1399', 'negocios_imagenes/123/galeria4.jpeg', 'image/jpeg', '123', 'galeria');
INSERT INTO `imagen` VALUES ('1400', 'negocios_imagenes/123/galeria5.jpeg', 'image/jpeg', '123', 'galeria');
INSERT INTO `imagen` VALUES ('1401', 'negocios_imagenes/123/galeria6.jpeg', 'image/jpeg', '123', 'galeria');
INSERT INTO `imagen` VALUES ('1402', 'negocios_imagenes/123/galeria7.jpeg', 'image/jpeg', '123', 'galeria');
INSERT INTO `imagen` VALUES ('1403', 'negocios_imagenes/124/perfil.jpeg', 'image/jpeg', '124', 'perfil');
INSERT INTO `imagen` VALUES ('1404', 'negocios_imagenes/124/galeria1.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1405', 'negocios_imagenes/124/galeria2.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1406', 'negocios_imagenes/124/galeria3.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1407', 'negocios_imagenes/124/galeria4.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1408', 'negocios_imagenes/124/galeria5.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1409', 'negocios_imagenes/124/galeria6.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1410', 'negocios_imagenes/124/galeria7.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1411', 'negocios_imagenes/124/galeria8.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1412', 'negocios_imagenes/124/galeria9.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1413', 'negocios_imagenes/124/galeria10.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1414', 'negocios_imagenes/124/galeria11.jpeg', 'image/jpeg', '124', 'galeria');
INSERT INTO `imagen` VALUES ('1415', 'negocios_imagenes/123/portada.jpeg', 'image/jpeg', '123', 'panoramica');
INSERT INTO `imagen` VALUES ('1416', 'negocios_imagenes/124/portada.jpeg', 'image/jpeg', '124', 'panoramica');
INSERT INTO `imagen` VALUES ('1417', 'negocios_imagenes/125/perfil.jpeg', 'image/jpeg', '125', 'perfil');
INSERT INTO `imagen` VALUES ('1418', 'negocios_imagenes/125/galeria1.jpeg', 'image/jpeg', '125', 'galeria');
INSERT INTO `imagen` VALUES ('1419', 'negocios_imagenes/125/galeria2.jpeg', 'image/jpeg', '125', 'galeria');
INSERT INTO `imagen` VALUES ('1420', 'negocios_imagenes/125/galeria3.jpeg', 'image/jpeg', '125', 'galeria');
INSERT INTO `imagen` VALUES ('1421', 'negocios_imagenes/125/galeria4.jpeg', 'image/jpeg', '125', 'galeria');
INSERT INTO `imagen` VALUES ('1422', 'negocios_imagenes/126/perfil.jpeg', 'image/jpeg', '126', 'perfil');
INSERT INTO `imagen` VALUES ('1423', 'negocios_imagenes/126/galeria1.jpeg', 'image/jpeg', '126', 'galeria');
INSERT INTO `imagen` VALUES ('1424', 'negocios_imagenes/126/galeria2.jpeg', 'image/jpeg', '126', 'galeria');
INSERT INTO `imagen` VALUES ('1425', 'negocios_imagenes/126/galeria3.jpeg', 'image/jpeg', '126', 'galeria');
INSERT INTO `imagen` VALUES ('1426', 'negocios_imagenes/126/galeria4.jpeg', 'image/jpeg', '126', 'galeria');
INSERT INTO `imagen` VALUES ('1427', 'negocios_imagenes/126/galeria5.jpeg', 'image/jpeg', '126', 'galeria');
INSERT INTO `imagen` VALUES ('1428', 'negocios_imagenes/126/galeria6.jpeg', 'image/jpeg', '126', 'galeria');
INSERT INTO `imagen` VALUES ('1429', 'negocios_imagenes/125/portada.jpeg', 'image/jpeg', '125', 'panoramica');
INSERT INTO `imagen` VALUES ('1430', 'negocios_imagenes/126/portada.jpeg', 'image/jpeg', '126', 'panoramica');
INSERT INTO `imagen` VALUES ('1485', 'negocios_imagenes/132/perfil.jpeg', 'image/jpeg', '132', 'perfil');
INSERT INTO `imagen` VALUES ('1486', 'negocios_imagenes/132/galeria1.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1487', 'negocios_imagenes/132/galeria2.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1488', 'negocios_imagenes/132/galeria3.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1489', 'negocios_imagenes/132/galeria4.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1490', 'negocios_imagenes/132/galeria5.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1492', 'negocios_imagenes/132/galeria7.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1493', 'negocios_imagenes/132/galeria8.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1494', 'negocios_imagenes/132/galeria9.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1495', 'negocios_imagenes/132/galeria10.jpeg', 'image/jpeg', '132', 'galeria');
INSERT INTO `imagen` VALUES ('1496', 'negocios_imagenes/132/portada.jpeg', 'image/jpeg', '132', 'panoramica');
INSERT INTO `imagen` VALUES ('1497', 'negocios_imagenes/133/perfil.jpeg', 'image/jpeg', '133', 'perfil');
INSERT INTO `imagen` VALUES ('1498', 'negocios_imagenes/133/galeria1.jpeg', 'image/jpeg', '133', 'galeria');
INSERT INTO `imagen` VALUES ('1499', 'negocios_imagenes/133/galeria2.jpeg', 'image/jpeg', '133', 'galeria');
INSERT INTO `imagen` VALUES ('1500', 'negocios_imagenes/133/galeria3.jpeg', 'image/jpeg', '133', 'galeria');
INSERT INTO `imagen` VALUES ('1501', 'negocios_imagenes/133/galeria4.jpeg', 'image/jpeg', '133', 'galeria');
INSERT INTO `imagen` VALUES ('1502', 'negocios_imagenes/133/galeria5.jpeg', 'image/jpeg', '133', 'galeria');
INSERT INTO `imagen` VALUES ('1503', 'negocios_imagenes/133/galeria6.jpeg', 'image/jpeg', '133', 'galeria');
INSERT INTO `imagen` VALUES ('1504', 'negocios_imagenes/133/portada.jpeg', 'image/jpeg', '133', 'panoramica');
INSERT INTO `imagen` VALUES ('1505', 'negocios_imagenes/134/perfil.jpeg', 'image/jpeg', '134', 'perfil');
INSERT INTO `imagen` VALUES ('1506', 'negocios_imagenes/134/galeria1.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1507', 'negocios_imagenes/134/galeria2.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1508', 'negocios_imagenes/134/galeria3.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1509', 'negocios_imagenes/134/galeria4.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1510', 'negocios_imagenes/134/galeria5.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1511', 'negocios_imagenes/134/galeria6.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1512', 'negocios_imagenes/134/galeria7.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1513', 'negocios_imagenes/134/galeria8.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1514', 'negocios_imagenes/134/galeria9.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1515', 'negocios_imagenes/134/galeria10.jpeg', 'image/jpeg', '134', 'galeria');
INSERT INTO `imagen` VALUES ('1516', 'negocios_imagenes/134/portada.jpeg', 'image/jpeg', '134', 'panoramica');
INSERT INTO `imagen` VALUES ('1518', 'negocios_imagenes/136/perfil.jpeg', 'image/jpeg', '136', 'perfil');
INSERT INTO `imagen` VALUES ('1519', 'negocios_imagenes/136/galeria1.jpeg', 'image/jpeg', '136', 'galeria');
INSERT INTO `imagen` VALUES ('1520', 'negocios_imagenes/136/galeria2.jpeg', 'image/jpeg', '136', 'galeria');
INSERT INTO `imagen` VALUES ('1521', 'negocios_imagenes/136/galeria3.jpeg', 'image/jpeg', '136', 'galeria');
INSERT INTO `imagen` VALUES ('1522', 'negocios_imagenes/136/portada.jpeg', 'image/jpeg', '136', 'panoramica');
INSERT INTO `imagen` VALUES ('1523', 'negocios_imagenes/136/galeria3300446851.jpeg', 'image/jpeg', '136', 'galeria');
INSERT INTO `imagen` VALUES ('1524', 'negocios_imagenes/136/galeria3036902717.jpeg', 'image/jpeg', '136', 'galeria');
INSERT INTO `imagen` VALUES ('1526', 'negocios_imagenes/136/galeria2033792363.jpeg', 'image/jpeg', '136', 'galeria');
INSERT INTO `imagen` VALUES ('1527', 'negocios_imagenes/136/galeria1819610242.jpeg', 'image/jpeg', '136', 'galeria');
INSERT INTO `imagen` VALUES ('1528', 'negocios_imagenes/137/perfil.jpeg', 'image/jpeg', '137', 'perfil');
INSERT INTO `imagen` VALUES ('1529', 'negocios_imagenes/137/galeria1.jpeg', 'image/jpeg', '137', 'galeria');
INSERT INTO `imagen` VALUES ('1530', 'negocios_imagenes/137/galeria2.jpeg', 'image/jpeg', '137', 'galeria');
INSERT INTO `imagen` VALUES ('1531', 'negocios_imagenes/137/galeria3.jpeg', 'image/jpeg', '137', 'galeria');
INSERT INTO `imagen` VALUES ('1532', 'negocios_imagenes/137/galeria4.jpeg', 'image/jpeg', '137', 'galeria');
INSERT INTO `imagen` VALUES ('1533', 'negocios_imagenes/137/galeria5.jpeg', 'image/jpeg', '137', 'galeria');
INSERT INTO `imagen` VALUES ('1534', 'negocios_imagenes/137/galeria6.jpeg', 'image/jpeg', '137', 'galeria');
INSERT INTO `imagen` VALUES ('1535', 'negocios_imagenes/137/galeria7.jpeg', 'image/jpeg', '137', 'galeria');
INSERT INTO `imagen` VALUES ('1536', 'negocios_imagenes/137/portada.jpeg', 'image/jpeg', '137', 'panoramica');
INSERT INTO `imagen` VALUES ('1538', 'negocios_imagenes/139/perfil.jpeg', 'image/jpeg', '139', 'perfil');
INSERT INTO `imagen` VALUES ('1539', 'negocios_imagenes/139/galeria1.jpeg', 'image/jpeg', '139', 'galeria');
INSERT INTO `imagen` VALUES ('1540', 'negocios_imagenes/139/galeria2.jpeg', 'image/jpeg', '139', 'galeria');
INSERT INTO `imagen` VALUES ('1541', 'negocios_imagenes/139/galeria3.jpeg', 'image/jpeg', '139', 'galeria');
INSERT INTO `imagen` VALUES ('1542', 'negocios_imagenes/139/portada.jpeg', 'image/jpeg', '139', 'panoramica');
INSERT INTO `imagen` VALUES ('1543', 'negocios_imagenes/139/galeria6345955522.jpeg', 'image/jpeg', '139', 'galeria');
INSERT INTO `imagen` VALUES ('1544', 'negocios_imagenes/139/galeria161191151.jpeg', 'image/jpeg', '139', 'galeria');
INSERT INTO `imagen` VALUES ('1545', 'negocios_imagenes/139/galeria7756641771.jpeg', 'image/jpeg', '139', 'galeria');
INSERT INTO `imagen` VALUES ('1546', 'negocios_imagenes/139/galeria8225088176.jpeg', 'image/jpeg', '139', 'galeria');
INSERT INTO `imagen` VALUES ('1547', 'negocios_imagenes/140/perfil.jpeg', 'image/jpeg', '140', 'perfil');
INSERT INTO `imagen` VALUES ('1548', 'negocios_imagenes/140/galeria1.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1549', 'negocios_imagenes/140/galeria2.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1550', 'negocios_imagenes/140/galeria3.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1551', 'negocios_imagenes/140/galeria4.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1552', 'negocios_imagenes/140/galeria5.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1554', 'negocios_imagenes/140/galeria7.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1555', 'negocios_imagenes/140/galeria8.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1556', 'negocios_imagenes/140/galeria9.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1557', 'negocios_imagenes/140/galeria10.jpeg', 'image/jpeg', '140', 'galeria');
INSERT INTO `imagen` VALUES ('1558', 'negocios_imagenes/140/portada.jpeg', 'image/jpeg', '140', 'panoramica');
INSERT INTO `imagen` VALUES ('1559', 'negocios_imagenes/115/portada.jpeg', 'image/jpeg', '115', 'panoramica');
INSERT INTO `imagen` VALUES ('1560', 'negocios_imagenes/122/portada.jpeg', 'image/jpeg', '122', 'panoramica');
INSERT INTO `imagen` VALUES ('1561', 'negocios_imagenes/121/portada.jpeg', 'image/jpeg', '121', 'panoramica');
INSERT INTO `imagen` VALUES ('1562', 'negocios_imagenes/120/portada.jpeg', 'image/jpeg', '120', 'panoramica');
INSERT INTO `imagen` VALUES ('1563', 'negocios_imagenes/141/perfil.jpeg', 'image/jpeg', '141', 'perfil');
INSERT INTO `imagen` VALUES ('1564', 'negocios_imagenes/141/galeria1.jpeg', 'image/jpeg', '141', 'galeria');
INSERT INTO `imagen` VALUES ('1565', 'negocios_imagenes/141/galeria2.jpeg', 'image/jpeg', '141', 'galeria');
INSERT INTO `imagen` VALUES ('1566', 'negocios_imagenes/141/galeria3.jpeg', 'image/jpeg', '141', 'galeria');
INSERT INTO `imagen` VALUES ('1567', 'negocios_imagenes/141/galeria4.jpeg', 'image/jpeg', '141', 'galeria');
INSERT INTO `imagen` VALUES ('1568', 'negocios_imagenes/141/galeria5026961526.jpeg', 'image/jpeg', '141', 'galeria');
INSERT INTO `imagen` VALUES ('1569', 'negocios_imagenes/141/galeria6051233514.jpeg', 'image/jpeg', '141', 'galeria');
INSERT INTO `imagen` VALUES ('1570', 'negocios_imagenes/141/galeria1389900727.jpeg', 'image/jpeg', '141', 'galeria');
INSERT INTO `imagen` VALUES ('1571', 'negocios_imagenes/141/galeria1303334608.jpeg', 'image/jpeg', '141', 'galeria');
INSERT INTO `imagen` VALUES ('1572', 'negocios_imagenes/141/portada.jpeg', 'image/jpeg', '141', 'panoramica');
INSERT INTO `imagen` VALUES ('1579', 'negocios_imagenes/144/perfil.jpeg', 'image/jpeg', '144', 'perfil');
INSERT INTO `imagen` VALUES ('1580', 'negocios_imagenes/144/galeria1.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1581', 'negocios_imagenes/144/galeria2.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1582', 'negocios_imagenes/144/galeria3.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1583', 'negocios_imagenes/144/galeria4.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1584', 'negocios_imagenes/144/galeria5.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1585', 'negocios_imagenes/144/portada.jpeg', 'image/jpeg', '144', 'panoramica');
INSERT INTO `imagen` VALUES ('1587', 'negocios_imagenes/144/galeria1908515857.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1588', 'negocios_imagenes/144/galeria5585228990.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1591', 'negocios_imagenes/144/galeria519791010.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1592', 'negocios_imagenes/144/galeria8626455245.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1594', 'negocios_imagenes/144/galeria7692835051.jpeg', 'image/jpeg', '144', 'galeria');
INSERT INTO `imagen` VALUES ('1597', 'negocios_imagenes/147/perfil.jpeg', 'image/jpeg', '147', 'perfil');
INSERT INTO `imagen` VALUES ('1598', 'negocios_imagenes/147/galeria1.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1599', 'negocios_imagenes/147/galeria2.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1600', 'negocios_imagenes/147/galeria3.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1601', 'negocios_imagenes/147/galeria4.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1602', 'negocios_imagenes/147/galeria5.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1603', 'negocios_imagenes/147/galeria6.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1604', 'negocios_imagenes/147/galeria7.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1605', 'negocios_imagenes/147/galeria8.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1606', 'negocios_imagenes/147/galeria9.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1607', 'negocios_imagenes/147/galeria10.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1608', 'negocios_imagenes/147/galeria11.jpeg', 'image/jpeg', '147', 'galeria');
INSERT INTO `imagen` VALUES ('1609', 'negocios_imagenes/147/portada.jpeg', 'image/jpeg', '147', 'panoramica');

-- ----------------------------
-- Table structure for informacion_adicional
-- ----------------------------
DROP TABLE IF EXISTS `informacion_adicional`;
CREATE TABLE `informacion_adicional` (
  `id_info` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion_es` varchar(45) NOT NULL,
  `descripcion_en` varchar(45) NOT NULL,
  PRIMARY KEY (`id_info`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of informacion_adicional
-- ----------------------------
INSERT INTO `informacion_adicional` VALUES ('1', 'Habitaciones climatizadas', 'Air-Conditioned bethroom');
INSERT INTO `informacion_adicional` VALUES ('2', 'Agua fr&iacutea y caliente', 'Cold or hot water');
INSERT INTO `informacion_adicional` VALUES ('3', 'Se entregan llaves', 'Key delivery');
INSERT INTO `informacion_adicional` VALUES ('4', 'Se permiten acompa&ntildeantes', 'Company allowed');
INSERT INTO `informacion_adicional` VALUES ('5', 'Refrigerador', 'Refrigerator');
INSERT INTO `informacion_adicional` VALUES ('6', 'Uso del tel&eacutefono', 'Phone service');
INSERT INTO `informacion_adicional` VALUES ('7', 'Televisor', 'TV set');
INSERT INTO `informacion_adicional` VALUES ('8', 'Reproductor de video', 'Video set');
INSERT INTO `informacion_adicional` VALUES ('9', 'Reproductor de m&uacutesica', 'Music set');
INSERT INTO `informacion_adicional` VALUES ('10', 'Aseo', 'Personal cleaning article');
INSERT INTO `informacion_adicional` VALUES ('11', 'Lavadora', 'Watching machine');
INSERT INTO `informacion_adicional` VALUES ('12', 'Cercana a la Playa', 'Near the beach');
INSERT INTO `informacion_adicional` VALUES ('13', 'Nevera', 'Fridge');
INSERT INTO `informacion_adicional` VALUES ('14', 'Caja fuerte', 'Safe box');
INSERT INTO `informacion_adicional` VALUES ('15', 'Vista al mar', 'See to the sea');

-- ----------------------------
-- Table structure for lugares
-- ----------------------------
DROP TABLE IF EXISTS `lugares`;
CREATE TABLE `lugares` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(5000) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lugares
-- ----------------------------
INSERT INTO `lugares` VALUES ('1', 'Castillo de la Punta', 'El castillo de San Salvador de La Punta (1589 – 1630) es una de las tres principales fortificaciones de La Habana junto con La Fuerza y El Morro, así las tres aparecen en el escudo de la ciudad. Su construcción constituyó una gran polémica y a lo largo del costoso proceso constructivo estuvo a punto de ser interrumpido en varias ocasiones. En 1601 se demolió uno de los cuatro baluartes. También posee una función defensiva de la entrada de la bahía, cuyo fin era ayudar al Morro en esta labor. Constituye un polígono irregular. Por la dimensión de las torres de observación da la medida de que su ángulo de visión está orientado fundamentalmente al camino de la Punta a la Chorrera. Constituye una construcción sencilla sin ornamentos, debido a estar construida en piedra.', 'lugares_imagenes/Castillo_de_la_Punta-Cuba_Rentals_AHR.jpg');
INSERT INTO `lugares` VALUES ('2', 'Castillo del Morro', 'El Castillo del Morro junto con el Capitolio y la Giraldilla son símbolos de La Habana, trazado por el ingeniero Juan Bautista Antonelli en 1585, en un principio fue reconocida casi como el puerto de la Habana. En los años 90 se trabajó en el rescate y preservación del sistema de fortificaciones de la ciudad, pasando estas a desempeñar nuevas funciones. El Castillo mantiene desde entonces una activa vida, sus salones funcionan como galería y en sus espacios una animada vida cultural no cesa. A su vez dos restaurantes (Los Doce Apóstoles y La Divina Pastora) y un bar se albergan en sus antiguas baterías con extraordinarios panoramas del litoral habanero.\r\nHistoria\r\nSe construye con el objetivo de salvaguardar la bahía de la habana ante el asecho continuo de corsarios y piratas. Debido a dificultades económicas y contradicciones entre los gobernadores de la Isla y Antonelli, la construcción del castillo se prolongó hasta el siglo XVII. Durante el gobierno de Don Pedro Valdés entre (1600-1607) se cerraron las bóvedas y se colocaron 12 cañones concluyendo así la construcción. La cual en 1763 tuvo que ser reconstruida por los daños ocasionados por la toma de la Habana por los ingleses bajo la dirección de los ingenieros Silvestre Abarca y Agustín Crame.   \r\nLa reconstrucción añadió dos baluartes (el de Tejeda y el de Austria); un profundo foso; camino cubierto, aljibes, cuarteles, calabozos y almacenes, asimilando las características irregulares del terreno donde se construyó. Sus espacios interiores poseían un sistema dinámico de interconexión entre sí, que se completaron con diferentes vías de acceso y de comunicación adecuadas.\r\nSu torre comenzó a utilizarse como faro desde 1764. En 1844 la vieja torre fue demolida para levantar otra, que es la que llega a nuestros días, que se electrificó en 1945.\r\n', 'lugares_imagenes/Castillo_del_Morro-Cuba_Rentals_AHR.jpg');
INSERT INTO `lugares` VALUES ('3', 'Castillo de la Real Fuerza de La Habana', 'El Castillo de la Real Fuerza de La Habana, es una fortaleza militar ubicada en la bahía de La Habana, Cuba.\r\nHISTORIA\r\nEl primero de enero de 1558, comenzaron las labores de construcción de la fortaleza, bajo la dirección inicial del ingeniero Bartolomé Sánchez y luego de Francisco Colona. La obra se erigió en el espacio que después sería núcleo de la primitiva villa, frente a la elevación de La Cabaña. Frente a la fortaleza había una plaza, la hoy llamada Plaza de armas, en torno a la cual se construyeron las casas de los principales vecinos.\r\nDespués de diecinueve años concluyó la obra, destacada dentro del sistema de fortificaciones españolas en Cuba y en el Mar Caribe.\r\nEn su torre se ubicó una veleta denominada La Giraldilla, escultura creada por Jerónimo Martín Pinzón, y que constituye la escultura fundida en bronce más antigua de Cuba, actualmente símbolo de la Ciudad de La Habana.\r\nLa fortaleza tenía como principal problema estratégico su ubicación geográfica. Situada muy adentro del canal de entrada de la bahía de La Habana, no cumplía con el objetivo con el que fue construida: disuadir y proteger a La Habana del ataque de corsarios, piratas y enemigos de la corona española. En el año 1762, no obstante este inconveniente defensivo, la fortificación resistió estoicamente el castigo de la artillería inglesa ubicada en la elevación de la cabaña, y funcionó como uno de los centros organizativos de la defensa de la ciudad, convirtiéndose junto al Castillo del Morro en uno de los principales baluartes en aquella contienda. Dicha propiedad perteneció a la Casa Tradicional Cubana Miró i Cabré de García.\r\nEl Castillo de la Real Fuerza de La Habana, es una fortaleza militar ubicada en la bahía de La Habana, Cuba.\r\nHISTORIA\r\nEl primero de enero de 1558, comenzaron las labores de construcción de la fortaleza, bajo la dirección inicial del ingeniero Bartolomé Sánchez y luego de Francisco Colona. La obra se erigió en el espacio que después sería núcleo de la primitiva villa, frente a la elevación de La Cabaña. Frente a la fortaleza había una plaza, la hoy llamada Plaza de armas, en torno a la cual se construyeron las casas de los principales vecinos.\r\nDespués de diecinueve años concluyó la obra, destacada dentro del sistema de fortificaciones españolas en Cuba y en el Mar Caribe.\r\nEn su torre se ubicó una veleta denominada La Giraldilla, escultura creada por Jerónimo Martín Pinzón, y que constituye la escultura fundida en bronce más antigua de Cuba, actualmente símbolo de la Ciudad de La Habana.\r\nLa fortaleza tenía como principal problema estratégico su ubicación geográfica. Situada muy adentro del canal de entrada de la bahía de La Habana, no cumplía con el objetivo con el que fue construida: disuadir y proteger a La Habana del ataque de corsarios, piratas y enemigos de la corona española. En el año 1762, no obstante este inconveniente defensivo, la fortificación resistió estoicamente el castigo de la artillería inglesa ubicada en la elevación de la cabaña, y funcionó como uno de los centros organizativos de la defensa de la ciudad, convirtiéndose junto al Castillo del Morro en uno de los principales baluartes en aquella contienda. Dicha propiedad perteneció a la Casa Tradicional Cubana Miró i Cabré de García.\r\n', 'lugares_imagenes/Castillo_de_la_Real_Fuerza_de_La_Habana.jpg');
INSERT INTO `lugares` VALUES ('4', 'Fortaleza de San Carlos de la Cabaña', 'La Fortaleza de San Carlos de la Cabaña es un complejo militar situado en la entrada de la Bahía de la Habana, con el objetivo de defender la cuidad de ataques enemigos o piratas. Empezó a edificarse en el alto litoral Este del puerto de La Habana, bajo la orientación del brigadier Don Silvestre Abarca. Los trabajos finalizaron en 1774. \r\nLa Cabaña es la más grande edificación militar construida por España en América. Tiene forma de polígono, el cual está compuesto por baluartes, revellines, fosos,  camino cubierto, cuarteles y almacenes. Tiene un diseño representativo del avance en los sistemas defensivos producidos durante el siglo XVIII, acaecidos por el desarrollo de la artillería.\r\nDurante las luchas independentistas del siglo XIX, héroes cubanos, entre ellos José Martí, fueron prisioneros de sus rejas y otros fueron ejecutados en el Foso de los Laureles.\r\nEn la época colonial se disparaba un cañonazo a las 4:30 a.m. y a las 9:00 p.m. desde la nave capitana en el puerto, para informar la apertura y cierre de los portones de la muralla que circundaba a La Habana y la puesta y retirada de la cadena que cerraba la entrada del puerto, ubicada entre los castillos de La Punta y el Morro.\r\nEsta ceremonia se realiza hoy en día por soldados vestidos con atuendos al estilo del siglo XVIII y constituye una de las más gustadas atracciones que ofrece este recinto a sus nocturnos visitantes.\r\nEn 1986 se inició la reparación de la Fortaleza de La Cabaña, y el acceso público se le dio en 1991 como componente del Parque Histórico Militar Morro-Cabaña.\r\nEn ella se celebra también cada año la Feria internacional del libro en la Habana.\r\n', 'lugares_imagenes/Fortaleza_de_San_Carlos_de_la_Cabana-Cuba_Rentals_AHR.jpg');
INSERT INTO `lugares` VALUES ('5', 'Catedral de la Habana', 'La Catedral de la Virgen María de la Concepción Inmaculada de La Habana, es un templo católico, que se encuentra en el corazón de La Habana Vieja. Es la Catedral de la Arquidiócesis de La Habana, y su emplazamiento anterior estaba situado en donde después se construyó el Palacio de los Capitanes Generales.\r\nEn (1748) la iglesia sería el oratorio de los hijos de San Ignacio de la Orden de los Jesuitas, luego llegaría a convertirse en catedral. Con antelación a la decisión obispal los jesuitas ya tenían en sus planes construir una iglesia en la plaza de la ciénaga, petición que fue negada en 1704 por el procurador general de La Habana, Luis Gonzalo de Carvajal, se opuso a la petición de los monjes, más de diez años después, obtuvieron el tan esperado permiso.\r\nEn el año 1767, ya estaba terminado el colegio, pero no la iglesia, en ese momento ocurre la expulsión de los jesuitas del Nuevo Mundo. En 1772 debido al deplorable estado en que se encontraba la parroquia mayor, las autoridades españolas decidieron trasladarla al Oratorio de San Felipe Neri y en 1777, se trasladó a la iglesia a medio construir de los jesuitas. En 1778 por orden del obispo Felipe José de Tres Palacios comenzó el proceso de transformación del antiguo oratoria de San Ignacio en la catedral habanera dedicada a la Purísima Concepción, cuya imagen es visible en el Altar Mayor. \r\nHoy en día está rodeada por la plaza que lleva su nombre, la cual alberga a las mansiones de la nobleza habanera colonial, entre estas destacan el Palacio del Marqués de Arcos, la casa de los condes de Casa Bayona, que en la actualidad es el Museo de Arte Colonial y la mansión del Marqués de Aguas Claras.\r\n', 'lugares_imagenes/La_Catedral_de_La_Habana-Cuba_Rentals_AHR.jpg');
INSERT INTO `lugares` VALUES ('6', 'Catedral ortodoxa Nuestra Señora de Kazán', 'La catedral ortodoxa Nuestra Señora de Kazáñ, es un templo ortodoxo ruso situado en la Avenida del Puerto, entre las calles Sol y Santa Clara, próximas a la Alameda de Paula en La Habana Vieja, zona más antigua de la capital de Cuba. Fue construida en una parcela de terreno que tenía un edificio en ruinas y se recuperó para la iglesia.\r\nLa primera piedra de la catedral fue puesta en su lugar el 14 de febrero de 2006. Fue finalizada 32 meses después, en el 2008, por el presidente de Cuba, Raúl Castro y consagrada por el Metropolita Kiril de Smolensk y Kaliningrado, en la actualidad Patriarca de Moscú, luego fue visitada por el jefe de Estado de Rusia, Dimitri Medvédev.\r\nLa iglesia de estilo bizantino tiene seis vistosas cúpulas, dos laminadas en oro y cuatro en bronce, las cuales están coronadas por cuatro cruces de oro sólido. La escalera de acceso fue construida con granito de la provincia de Sancti Spíritus y se dice que es la segunda más grande entre las construidas fuera de Rusia, solo antecedida por una en Israel. El sistema constructivo utilizó el abovedado y prescindió de cabillas, cemento, ni madera para encofrarlo. Está dividida en 11 áreas fundamentales: la morada del Arcipreste; el salón de reuniones; la Pila Bautismal, un área técnica; la Basílica; la Diócesis con un bloque habitacional; el mirador, la cocina, biblioteca, baños públicos y una tienda de utensilios religiosos.\r\nEl iconostasio o altar interior de oro fue construido en el monasterio de la Trinidad y San Sergio en Rusia por maestros pintores y escultores. Las paredes poco a poco se adornaron con murales, como indica la tradición bizantina.\r\n', 'lugares_imagenes/Catedral_Ortodoxa_Nuestra_Senora_de_Kazan-Cuba_Rentals_AHR.jpg');
INSERT INTO `lugares` VALUES ('7', 'Convento de San Francisco de Asís', 'El Convento de San Francisco de Asís, es un edificio religioso de arquitectura barroca situado en la plaza homónima en La Habana Vieja. Su construcción comenzó en el año 1548 hasta 1591, aunque se inauguró en 1575, se terminó completamente 200 años después, con una serie de reformas estructurales ocurridas desde 1731 hasta 1738. La fachada se encuentra en la Calle Oficios donde se observan tres estatuas de piedra que repre¬sentan a la Inmaculada Concepción, San Francisco de Asís y Santo Do¬mingo de Guzmán. \r\nSu regimiento se debe a la comunidad de frailes franciscanos que se asentó en la zona occidental de la bahía. La iglesia sirvió de cementerio a la mayor parte de la nobleza colonial de los siglos XVII y XVIII. Entre los que se pueden contar obispos, condes, capitanes generales, e incluso la virreina del Perú, la marquesa de Monte Claro. Los monjes franciscanos lo utilizaron como escuela de bachillerato por siglos, se dabanclases de Gramática, Filosofía, Teologia y matemática\r\n', 'lugares_imagenes/Convento_de_San_Francisco_de_Asis-Cuba_Rentals_AHR.jpg');

-- ----------------------------
-- Table structure for lugares_municipio
-- ----------------------------
DROP TABLE IF EXISTS `lugares_municipio`;
CREATE TABLE `lugares_municipio` (
  `lugar_id` int(11) NOT NULL,
  `municipio_id` int(11) NOT NULL,
  `puntuacion` int(11) DEFAULT NULL,
  PRIMARY KEY (`lugar_id`,`municipio_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lugares_municipio
-- ----------------------------
INSERT INTO `lugares_municipio` VALUES ('1', '3', '5');
INSERT INTO `lugares_municipio` VALUES ('1', '9', '10');
INSERT INTO `lugares_municipio` VALUES ('1', '13', '1');
INSERT INTO `lugares_municipio` VALUES ('2', '3', '2');
INSERT INTO `lugares_municipio` VALUES ('2', '8', '10');
INSERT INTO `lugares_municipio` VALUES ('2', '9', '5');
INSERT INTO `lugares_municipio` VALUES ('3', '3', '5');
INSERT INTO `lugares_municipio` VALUES ('3', '9', '10');
INSERT INTO `lugares_municipio` VALUES ('3', '13', '1');
INSERT INTO `lugares_municipio` VALUES ('4', '3', '2');
INSERT INTO `lugares_municipio` VALUES ('4', '8', '10');
INSERT INTO `lugares_municipio` VALUES ('4', '9', '5');
INSERT INTO `lugares_municipio` VALUES ('5', '3', '5');
INSERT INTO `lugares_municipio` VALUES ('5', '8', '1');
INSERT INTO `lugares_municipio` VALUES ('5', '9', '10');
INSERT INTO `lugares_municipio` VALUES ('6', '3', '5');
INSERT INTO `lugares_municipio` VALUES ('6', '9', '10');
INSERT INTO `lugares_municipio` VALUES ('6', '13', '1');
INSERT INTO `lugares_municipio` VALUES ('7', '3', '5');
INSERT INTO `lugares_municipio` VALUES ('7', '9', '10');
INSERT INTO `lugares_municipio` VALUES ('7', '13', '1');

-- ----------------------------
-- Table structure for lugares_negocio
-- ----------------------------
DROP TABLE IF EXISTS `lugares_negocio`;
CREATE TABLE `lugares_negocio` (
  `id_lugares` int(11) NOT NULL,
  `id_negocio` int(11) NOT NULL,
  `distancia` float DEFAULT NULL,
  PRIMARY KEY (`id_lugares`,`id_negocio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lugares_negocio
-- ----------------------------

-- ----------------------------
-- Table structure for lugares_zonas
-- ----------------------------
DROP TABLE IF EXISTS `lugares_zonas`;
CREATE TABLE `lugares_zonas` (
  `lugar_id` int(11) NOT NULL,
  `zona_id` int(11) NOT NULL,
  `puntos` int(11) NOT NULL,
  PRIMARY KEY (`lugar_id`,`zona_id`),
  KEY `zona_id` (`zona_id`),
  CONSTRAINT `lugares_zonas_ibfk_1` FOREIGN KEY (`lugar_id`) REFERENCES `lugares` (`id`) ON DELETE CASCADE,
  CONSTRAINT `lugares_zonas_ibfk_2` FOREIGN KEY (`zona_id`) REFERENCES `zona` (`id_zona`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of lugares_zonas
-- ----------------------------
INSERT INTO `lugares_zonas` VALUES ('3', '49', '5');

-- ----------------------------
-- Table structure for municipio
-- ----------------------------
DROP TABLE IF EXISTS `municipio`;
CREATE TABLE `municipio` (
  `id_municipio` int(11) NOT NULL AUTO_INCREMENT,
  `id_provincia` int(11) NOT NULL,
  `nombre_municipio` varchar(45) NOT NULL,
  PRIMARY KEY (`id_municipio`),
  KEY `fk_municipio_provincia1` (`id_provincia`) USING BTREE,
  CONSTRAINT `municipio_ibfk_1` FOREIGN KEY (`id_provincia`) REFERENCES `provincia` (`id_provincia`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of municipio
-- ----------------------------
INSERT INTO `municipio` VALUES ('1', '1', 'Arroyo-Naranjo');
INSERT INTO `municipio` VALUES ('2', '1', 'Boyeros');
INSERT INTO `municipio` VALUES ('3', '1', 'Centro-Habana');
INSERT INTO `municipio` VALUES ('4', '1', 'Cerro');
INSERT INTO `municipio` VALUES ('5', '1', 'Cotorro');
INSERT INTO `municipio` VALUES ('6', '1', 'Diez-de-Octubre');
INSERT INTO `municipio` VALUES ('7', '1', 'Guanabacoa');
INSERT INTO `municipio` VALUES ('8', '1', 'La-Habana-del-Este');
INSERT INTO `municipio` VALUES ('9', '1', 'La-Habana-Vieja');
INSERT INTO `municipio` VALUES ('10', '1', 'La-Lisa');
INSERT INTO `municipio` VALUES ('11', '1', 'Marianao');
INSERT INTO `municipio` VALUES ('12', '1', 'Playa');
INSERT INTO `municipio` VALUES ('13', '1', 'Plaza');
INSERT INTO `municipio` VALUES ('14', '1', 'Regla');
INSERT INTO `municipio` VALUES ('15', '1', 'San-Miguel');

-- ----------------------------
-- Table structure for negocio
-- ----------------------------
DROP TABLE IF EXISTS `negocio`;
CREATE TABLE `negocio` (
  `id_negocio` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `id_zona` int(11) NOT NULL,
  `id_tipo_renta` int(11) NOT NULL,
  `precio` int(11) NOT NULL,
  `visitas` int(11) NOT NULL,
  `posicion` int(11) NOT NULL,
  `bloqueado` tinyint(1) NOT NULL,
  `fecha_inscripcion` varchar(45) NOT NULL,
  `nueva_internet` int(11) NOT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `description_eng` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id_negocio`),
  KEY `fk_negocio_usuario1` (`id_usuario`) USING BTREE,
  KEY `fk_negocio_zona1` (`id_zona`) USING BTREE,
  KEY `fk_negocio_tipo_renta1` (`id_tipo_renta`) USING BTREE,
  CONSTRAINT `negocio_ibfk_1` FOREIGN KEY (`id_tipo_renta`) REFERENCES `tipo_renta` (`id_tipo_renta`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `negocio_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `negocio_ibfk_3` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`id_zona`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=148 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of negocio
-- ----------------------------
INSERT INTO `negocio` VALUES ('34', '34', 'Casa Acela', '23 e/ B y C', '86', '3', '30', '339', '0', '0', '20 Oct 2014', '0', 'HAGAMOS UN MUNDO MEJOR', null);
INSERT INTO `negocio` VALUES ('35', '35', 'Albita y Rolando', '5ta B #50202 e/ 502 y 504', '53', '1', '30', '106', '0', '0', '20 Oct 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('38', '38', 'Casa Don Miguel', 'San Miguel #612 bajos e/ Lucena y BelascoaÃ­n', '21', '3', '25', '217', '0', '0', '20 Oct 2014', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('42', '42', 'Casa Isabel y Roberto', 'Soledad #166 apto1 e/ San LÃ¡zaro y Jovellar', '21', '3', '25', '48', '0', '0', '20 Oct 2014', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('44', '44', 'La Terraza Verde', 'Lagunas #13 altos e/ Galiano y San NicolÃ¡s', '22', '3', '25', '38', '0', '0', '20 Oct 2014', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('46', '46', 'HabitaciÃ³n Carolina', 'Obispo #524 apto 201 e/ Bernaza y Villegas', '56', '3', '25', '49', '0', '0', '20 Oct 2014', '0', 'Zona más antigua de la capital cubana, donde aún quedan partes de la gran muralla que la protegía de cualquier invasión. La Habana Vieja es el reflejo de una mecla de arquitecturas de diferentes épocas: corona española, británicos, franceses y estadounidenses. Durante el siglo XX se levantó imponentes construcciones con fachadas neoclásicas, a mediados de este comienza el rescate del ambiente histórico de este territorio. Por ende en 1982, esta fue declarada Patrimonio de la Humanidad.\r\nEn la actualidad, es una de las zonas más turísticas de la Habana debido a la restauración de iglesias, fortalezas y otros edificios históricos. Además existen restaurantes de todo tipo: paladares, gourmet e internacionales. También se encuentran muchas librerías, museos y tiendas. \r\nLugares a visitar por su arquitectura y valor histórico: Plaza de Armas, San Francisco, Vieja, Cristo, Catedral; castillos Tres Reyes del Morro, Real Fuerza, San Salvador de la Punta, Atares, fortaleza San Carlos de la Caba', null);
INSERT INTO `negocio` VALUES ('51', '51', 'Apartamento Pepe y Cristy', '15 #278 apto 5 e/ I y J', '86', '2', '70', '44', '0', '0', '21 Oct 2014', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('55', '55', 'Sra Marlene Hdz 1', '84 #901 esq 9na', '74', '2', '35', '56', '0', '0', '22 Oct 2014', '0', 'Municipio que pertenecía al territorio de Marianao su nombre se debe a área de playa que se extiende de oeste a este a través de casi todo su límite septentrional. En Playa se encuentran algunas de las zonas residenciales mas lujosas de la capital como el antiguo Country Club (Siboney) y Miramar, caracterizados por enormes residencias y espacios públicos de un gusto exquisito. Además se localizan los barrios de Kholy, Buena Vista, Almendares, Ampliación de Almendares, Flores, Náutico, Jaimanitas y Santa Fe, entre otros de menor importancia.\r\nEn la zona de Cubanacán se encuentra el complejo residencial donde está ubicada la vivienda familiar de Fidel Castro Ruz, zona de acceso altamente restringida y separada por una densa vegetación.\r\nEn la zona de Miramar se encuentran muchas de las embajadas y consulados con sede en Cuba. También está el Acuario Nacional de Cuba, el Salón Rosado de La Tropical, el Estadio Eduardo Saborit, Marina Heminguay, hoteles de los más lujosos y novedosos del p', null);
INSERT INTO `negocio` VALUES ('56', '56', 'Sra Marlene Hdz 2', '84 #901 esq 9na', '74', '3', '35', '23', '0', '0', '22 Oct 2014', '0', 'Municipio que pertenecía al territorio de Marianao su nombre se debe a área de playa que se extiende de oeste a este a través de casi todo su límite septentrional. En Playa se encuentran algunas de las zonas residenciales mas lujosas de la capital como el antiguo Country Club (Siboney) y Miramar, caracterizados por enormes residencias y espacios públicos de un gusto exquisito. Además se localizan los barrios de Kholy, Buena Vista, Almendares, Ampliación de Almendares, Flores, Náutico, Jaimanitas y Santa Fe, entre otros de menor importancia.\r\nEn la zona de Cubanacán se encuentra el complejo residencial donde está ubicada la vivienda familiar de Fidel Castro Ruz, zona de acceso altamente restringida y separada por una densa vegetación.\r\nEn la zona de Miramar se encuentran muchas de las embajadas y consulados con sede en Cuba. También está el Acuario Nacional de Cuba, el Salón Rosado de La Tropical, el Estadio Eduardo Saborit, Marina Heminguay, hoteles de los más lujosos y novedosos del p', null);
INSERT INTO `negocio` VALUES ('64', '64', 'Carlos el Gordo 1', 'Calle 492 #701 esq 7ma', '53', '1', '120', '81', '0', '0', '24 Oct 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('65', '65', 'HabitaciÃ³n de Nancy', '1ra #49810 e/ 476 y 498', '53', '3', '35', '19', '0', '0', '25 Oct 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('67', '67', 'Casa Nancy', '1ra #49810 e/ 476 y 498', '53', '2', '35', '13', '0', '0', '26 Oct 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('69', '69', 'Casa Janet de Guanabo', 'Puerto PrÃ­ncipe #7B02 e/ 9na y CÃ­rculo Washington', '53', '1', '40', '15', '0', '0', '26 Oct 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('74', '74', 'HabitaciÃ³n de Nora', '15 #252 apro 3 piso 3 e/ J e I', '86', '3', '35', '24', '0', '0', '26 Oct 2014', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('75', '75', 'HabitaciÃ³ multipropÃ³sit', '15 #252 apro 6 piso 3 e/ J e I', '86', '3', '35', '12', '0', '0', '26 Oct 2014', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('76', '76', 'Casa Hilda', '15 #278 apto 13 e/ I y J', '86', '2', '35', '7', '0', '0', '26 Oct 2014', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('79', '79', 'Familia Pouza', '15 #278 apto 7 e/ I y J', '86', '2', '70', '11', '0', '0', '26 Oct 2014', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('80', '80', 'Casa Tomasa', 'C #558 altos e/ 23 y 25', '86', '3', '30', '9', '0', '0', '26 Oct 2014', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('81', '81', 'Sra Maria A. Reyes', '82 #1510 e/ 15 y 17', '85', '1', '70', '78', '0', '0', '27 Oct 2014', '0', 'Municipio que pertenecía al territorio de Marianao su nombre se debe a área de playa que se extiende de oeste a este a través de casi todo su límite septentrional. En Playa se encuentran algunas de las zonas residenciales mas lujosas de la capital como el antiguo Country Club (Siboney) y Miramar, caracterizados por enormes residencias y espacios públicos de un gusto exquisito. Además se localizan los barrios de Kholy, Buena Vista, Almendares, Ampliación de Almendares, Flores, Náutico, Jaimanitas y Santa Fe, entre otros de menor importancia.\r\nEn la zona de Cubanacán se encuentra el complejo residencial donde está ubicada la vivienda familiar de Fidel Castro Ruz, zona de acceso altamente restringida y separada por una densa vegetación.\r\nEn la zona de Miramar se encuentran muchas de las embajadas y consulados con sede en Cuba. También está el Acuario Nacional de Cuba, el Salón Rosado de La Tropical, el Estadio Eduardo Saborit, Marina Heminguay, hoteles de los más lujosos y novedosos del p', null);
INSERT INTO `negocio` VALUES ('83', '83', 'Madelin y Leonel', 'Villegas #203 e/ Obispo y Obrapia', '56', '3', '30', '17', '0', '0', '29 Oct 2014', '0', 'Zona más antigua de la capital cubana, donde aún quedan partes de la gran muralla que la protegía de cualquier invasión. La Habana Vieja es el reflejo de una mecla de arquitecturas de diferentes épocas: corona española, británicos, franceses y estadounidenses. Durante el siglo XX se levantó imponentes construcciones con fachadas neoclásicas, a mediados de este comienza el rescate del ambiente histórico de este territorio. Por ende en 1982, esta fue declarada Patrimonio de la Humanidad.\r\nEn la actualidad, es una de las zonas más turísticas de la Habana debido a la restauración de iglesias, fortalezas y otros edificios históricos. Además existen restaurantes de todo tipo: paladares, gourmet e internacionales. También se encuentran muchas librerías, museos y tiendas. \r\nLugares a visitar por su arquitectura y valor histórico: Plaza de Armas, San Francisco, Vieja, Cristo, Catedral; castillos Tres Reyes del Morro, Real Fuerza, San Salvador de la Punta, Atares, fortaleza San Carlos de la Caba', null);
INSERT INTO `negocio` VALUES ('84', '84', 'Balia y Carlos', '500 #5D06 e/ 5ta D y 7ma', '53', '3', '40', '20', '0', '0', '29 Oct 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('85', '85', 'DoÃ±a Elena', 'Mercader #313 e/ Muralla y Teniente Rey', '56', '3', '35', '17', '0', '0', '30 Oct 2014', '0', 'Zona más antigua de la capital cubana, donde aún quedan partes de la gran muralla que la protegía de cualquier invasión. La Habana Vieja es el reflejo de una mecla de arquitecturas de diferentes épocas: corona española, británicos, franceses y estadounidenses. Durante el siglo XX se levantó imponentes construcciones con fachadas neoclásicas, a mediados de este comienza el rescate del ambiente histórico de este territorio. Por ende en 1982, esta fue declarada Patrimonio de la Humanidad.\r\nEn la actualidad, es una de las zonas más turísticas de la Habana debido a la restauración de iglesias, fortalezas y otros edificios históricos. Además existen restaurantes de todo tipo: paladares, gourmet e internacionales. También se encuentran muchas librerías, museos y tiendas. \r\nLugares a visitar por su arquitectura y valor histórico: Plaza de Armas, San Francisco, Vieja, Cristo, Catedral; castillos Tres Reyes del Morro, Real Fuerza, San Salvador de la Punta, Atares, fortaleza San Carlos de la Caba', null);
INSERT INTO `negocio` VALUES ('87', '87', 'Casa Elaine', '502 #509-2 e/ 5ta y5taB', '53', '2', '50', '8', '0', '0', '30 Oct 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('88', '88', 'Casa Daniel y Yuleidy', '498 #512 e/ 5taA y 5taB', '53', '1', '60', '8', '0', '0', '31 Oct 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('91', '91', 'Casa Bernardo y Adelina', '478 #306 e/ 3ra y 5ta', '53', '1', '70', '11', '0', '0', '23 Nov 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('92', '92', 'Hostal Carmen y LeÃ³n', 'San Miguel #1108 e/ MazÃ³n y Basarrate', '88', '3', '25', '22', '0', '0', '10 Dec 2014', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('93', '93', 'Casa Irelia', '498 #5B10 e/ 5ta B y 5ta C', '53', '3', '30', '11', '0', '0', '13 Dec 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('94', '94', 'Casa Valdomero', '5taB #50204 e/ 502 y 504', '53', '1', '75', '9', '0', '0', '13 Dec 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('95', '95', 'Casa Pedro y Elayne', '5ta B #49807 e/ 498 y 500', '53', '1', '40', '12', '0', '0', '13 Dec 2014', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('104', '104', 'Casa Angela', '27 #2211 entre 22 y 24', '74', '3', '40', '6', '0', '0', '14 Aug 2016', '0', 'Municipio que pertenecía al territorio de Marianao su nombre se debe a área de playa que se extiende de oeste a este a través de casi todo su límite septentrional. En Playa se encuentran algunas de las zonas residenciales mas lujosas de la capital como el antiguo Country Club (Siboney) y Miramar, caracterizados por enormes residencias y espacios públicos de un gusto exquisito. Además se localizan los barrios de Kholy, Buena Vista, Almendares, Ampliación de Almendares, Flores, Náutico, Jaimanitas y Santa Fe, entre otros de menor importancia.\r\nEn la zona de Cubanacán se encuentra el complejo residencial donde está ubicada la vivienda familiar de Fidel Castro Ruz, zona de acceso altamente restringida y separada por una densa vegetación.\r\nEn la zona de Miramar se encuentran muchas de las embajadas y consulados con sede en Cuba. También está el Acuario Nacional de Cuba, el Salón Rosado de La Tropical, el Estadio Eduardo Saborit, Marina Heminguay, hoteles de los más lujosos y novedosos del p', null);
INSERT INTO `negocio` VALUES ('105', '105', 'Casa Malindo y Cheo', 'San Lazaro 671 entre Gervasio y Belascoain', '21', '2', '25', '10', '0', '0', '14 Aug 2016', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('106', '106', 'Casa La Familia', 'Laguna #215 entre lealtad y Persevarancia', '21', '1', '30', '13', '0', '0', '14 Aug 2016', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('107', '107', 'Casa Lazaro', '5taA #17 A entre 492 y 494', '53', '1', '25', '13', '0', '0', '17 Aug 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('108', '108', 'Casa Lula', 'San Lazaro 318 % Galiano y San Nicolas', '22', '3', '25', '18', '0', '0', '19 Aug 2016', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('109', '111', 'Casa Marilin', '474 #7B10 % 7maB y 9na', '53', '1', '30', '10', '0', '0', '19 Aug 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('114', '116', 'Casa Silvia', '34 #1308 altos entre 23 y 25', '77', '3', '35', '7', '0', '0', '19 Aug 2016', '0', 'Municipio que pertenecía al territorio de Marianao su nombre se debe a área de playa que se extiende de oeste a este a través de casi todo su límite septentrional. En Playa se encuentran algunas de las zonas residenciales mas lujosas de la capital como el antiguo Country Club (Siboney) y Miramar, caracterizados por enormes residencias y espacios públicos de un gusto exquisito. Además se localizan los barrios de Kholy, Buena Vista, Almendares, Ampliación de Almendares, Flores, Náutico, Jaimanitas y Santa Fe, entre otros de menor importancia.\r\nEn la zona de Cubanacán se encuentra el complejo residencial donde está ubicada la vivienda familiar de Fidel Castro Ruz, zona de acceso altamente restringida y separada por una densa vegetación.\r\nEn la zona de Miramar se encuentran muchas de las embajadas y consulados con sede en Cuba. También está el Acuario Nacional de Cuba, el Salón Rosado de La Tropical, el Estadio Eduardo Saborit, Marina Heminguay, hoteles de los más lujosos y novedosos del p', null);
INSERT INTO `negocio` VALUES ('115', '117', 'Hostal Noelbia', '35# 1810% 20 y 41 ', '74', '3', '50', '10', '0', '0', '20 Aug 2016', '0', 'Municipio que pertenecía al territorio de Marianao su nombre se debe a área de playa que se extiende de oeste a este a través de casi todo su límite septentrional. En Playa se encuentran algunas de las zonas residenciales mas lujosas de la capital como el antiguo Country Club (Siboney) y Miramar, caracterizados por enormes residencias y espacios públicos de un gusto exquisito. Además se localizan los barrios de Kholy, Buena Vista, Almendares, Ampliación de Almendares, Flores, Náutico, Jaimanitas y Santa Fe, entre otros de menor importancia.\r\nEn la zona de Cubanacán se encuentra el complejo residencial donde está ubicada la vivienda familiar de Fidel Castro Ruz, zona de acceso altamente restringida y separada por una densa vegetación.\r\nEn la zona de Miramar se encuentran muchas de las embajadas y consulados con sede en Cuba. También está el Acuario Nacional de Cuba, el Salón Rosado de La Tropical, el Estadio Eduardo Saborit, Marina Heminguay, hoteles de los más lujosos y novedosos del p', null);
INSERT INTO `negocio` VALUES ('116', '118', '23 y C', '23 #749 entre B y C', '86', '3', '45', '7', '0', '0', '20 Aug 2016', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('117', '119', 'Onelia', '476A #7B06 % 7ma B y 9 na', '53', '3', '25', '8', '0', '0', '20 Aug 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('118', '120', 'Casa Mechy y Yuri', '7maB #47408 entre 474 y 474B', '53', '1', '40', '17', '0', '0', '20 Aug 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('119', '121', 'Casa Cuqui', '476A #7B06 % 7ma B y 9 na', '53', '1', '75', '6', '0', '0', '20 Aug 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('120', '122', 'Casa Elda', 'Campanario #306 apto 202 entre San Migurl y Neptuno', '22', '3', '25', '6', '0', '0', '20 Aug 2016', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('121', '123', 'Casa Dania y Frank', 'San Miguel 415 bajo % Campanario y Lealtad', '22', '3', '25', '6', '0', '0', '20 Aug 2016', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('122', '124', 'Casa Antero y Gisela', '15 #278 apto 7 entre I yJ', '86', '2', '35', '14', '0', '0', '20 Aug 2016', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('123', '125', 'Casa Areli', 'Ave 41 #2205 apto 6 % 22 y 24', '74', '3', '30', '7', '0', '0', '20 Aug 2016', '0', 'Municipio que pertenecía al territorio de Marianao su nombre se debe a área de playa que se extiende de oeste a este a través de casi todo su límite septentrional. En Playa se encuentran algunas de las zonas residenciales mas lujosas de la capital como el antiguo Country Club (Siboney) y Miramar, caracterizados por enormes residencias y espacios públicos de un gusto exquisito. Además se localizan los barrios de Kholy, Buena Vista, Almendares, Ampliación de Almendares, Flores, Náutico, Jaimanitas y Santa Fe, entre otros de menor importancia.\r\nEn la zona de Cubanacán se encuentra el complejo residencial donde está ubicada la vivienda familiar de Fidel Castro Ruz, zona de acceso altamente restringida y separada por una densa vegetación.\r\nEn la zona de Miramar se encuentran muchas de las embajadas y consulados con sede en Cuba. También está el Acuario Nacional de Cuba, el Salón Rosado de La Tropical, el Estadio Eduardo Saborit, Marina Heminguay, hoteles de los más lujosos y novedosos del p', null);
INSERT INTO `negocio` VALUES ('124', '126', 'Renacer', 'San Lazaro 621 altos entre Gervasio y Escobar', '22', '2', '25', '11', '0', '0', '20 Aug 2016', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('125', '127', 'Sr Willian y Sra Orquidia', 'San Miguel #409 apto 4 entre Lealtad y Campanario', '22', '2', '35', '11', '0', '0', '20 Aug 2016', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('126', '128', 'Casa Carmen', 'Industria #270 % Neptuno y San Miguel', '23', '3', '30', '14', '0', '0', '20 Aug 2016', '0', 'Durante la fundación de la Villa de San Cristóbal de La Habana fueron los primeros asentamientos en este territorio. Gracias a la dominación Inglesa en el siglo XVIII surgió la expansión extramuros de la Villa. Luego de esto se dio lugar a construcciones de edificaciones más ricas y un trazado de calles y calzadas donde se destaca el Paseo de Isabel II (luego Paseo de Prado y más tarde Paseo de Martí), el Paseo de Tacón (posteriormente Carlos III y actualmente avenida Salvador Allende).\r\nEn 1874 la inmigración china se asentó en el cuchillo de la calle Zanja y Dragones done se puesieron en marchas comercios y espacios a diversos servicios, estos a finales del siglo llegaron a ser mas de 150000 chinos culíes.\r\nEn 1976 con la división política administrativa los cincos barrios extramuros (Colon, Dragones, Cayo Hueso, Pueblo Nuevo y Los Sitios) formaron el municipio.     \r\nAquí se encuentra una de las mejores instituciones de música del país, Amadeo Roldan, se encuentra un museo, un casa ', null);
INSERT INTO `negocio` VALUES ('132', '136', 'Casa Eduardo', 'Calle 21 #604 entre B y C', '86', '1', '35', '7', '0', '0', '04 Sep 2016', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('133', '137', 'Casa Caridad', 'Calle 21 # 462 entre E y F', '86', '3', '30', '15', '0', '0', '04 Sep 2016', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);
INSERT INTO `negocio` VALUES ('134', '139', 'Vistamar', 'Ave. 11 no. 46805 entre 468 y 470', '53', '3', '30', '11', '0', '0', '15 Sep 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('136', '141', 'Enrique y Yolanda 1', '3ra #47816 entre 478 y 480', '53', '2', '25', '13', '0', '0', '15 Sep 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('137', '142', 'Enrique y Yolanda 2', '3ra #47816 entre 478 y 480', '53', '2', '25', '8', '0', '0', '15 Sep 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('139', '144', 'Enrique y Yolanda 3', '3ra #47816 entre 478 y 480', '53', '2', '30', '9', '0', '0', '15 Sep 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('140', '145', 'Carlos el Gordo 2', '492 #701 esq. 7ma', '53', '2', '80', '27', '0', '0', '15 Sep 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('141', '146', 'Chucho y July', 'calle 482 #7B10 entre 7maB y 9na', '53', '3', '30', '16', '0', '0', '15 Sep 2016', '0', 'La Habana del Este se constituye como municipio el 31 de octubre de 1976. Hasta ese momento y desde la conquista y la colonización española en el siglo XVI, este territorio estuvo vinculado fundamentalmente a Guanabacoa. El territorio que corresponde al actual municipio fue sujeto activo, de todos los procesos históricos acontecidos en la región occidental cubana, a saber: poblamiento aborigen, conquista y colonización española, encomiendas y esclavitud, ataques de corsarios y piratas y defensa costera, la toma de La Habana por los ingleses, desarrollo de la economía de plantación y la industria azucarera, sublevaciones abolicionistas, cimarrones y apalancados, conspiraciones y guerra de independencia, intervención norteamericana, lucha clandestina contra la dictadura, toma del poder por el gobierno revolucionario, medidas populares, alfabetización, reforma agraria, nacionalización, movimientos de Microbrigadas y Poder Popular.\r\n\r\nTorreón de Cojímar: construcción militar en cuyo alrede', null);
INSERT INTO `negocio` VALUES ('144', '148', 'Casa PG', 'Mercaderes #305/307 entre Muralla y Teniente Rey', '56', '1', '70', '11', '0', '0', '18 Sep 2016', '0', 'Zona más antigua de la capital cubana, donde aún quedan partes de la gran muralla que la protegía de cualquier invasión. La Habana Vieja es el reflejo de una mecla de arquitecturas de diferentes épocas: corona española, británicos, franceses y estadounidenses. Durante el siglo XX se levantó imponentes construcciones con fachadas neoclásicas, a mediados de este comienza el rescate del ambiente histórico de este territorio. Por ende en 1982, esta fue declarada Patrimonio de la Humanidad.\r\nEn la actualidad, es una de las zonas más turísticas de la Habana debido a la restauración de iglesias, fortalezas y otros edificios históricos. Además existen restaurantes de todo tipo: paladares, gourmet e internacionales. También se encuentran muchas librerías, museos y tiendas. \r\nLugares a visitar por su arquitectura y valor histórico: Plaza de Armas, San Francisco, Vieja, Cristo, Catedral; castillos Tres Reyes del Morro, Real Fuerza, San Salvador de la Punta, Atares, fortaleza San Carlos de la Caba', null);
INSERT INTO `negocio` VALUES ('147', '150', 'Casa Robert', 'Calle M #510 entre Jovellon y San Lazaro', '86', '1', '35', '6', '0', '0', '18 Sep 2016', '0', 'El municipio Plaza de la Revolución tiene una extensión de 11, 8 km² y limita al norte con el Malecón (4 km de costa). La población de este territorio asciende a 173 239 habitantes, además existe una población flotante de 20,000 a 30,000 personas diarias, estas cifras pueden ser aun superiores por motivo de trabajo o estudio.[13]\r\nPlaza es llamada “Capital de la Capital” ya que aquí se concentran la mayor cantidad de organismos de la administración central del Estado, la más importante red hospitalaria del país, centros de cultura, recreación, salones de exposiciones, galerías, museos, además de resumir en su población residente y flotante todas las aristas posibles que indican la universalidad esencial de la cubanía.[13]\r\nPosee disimiles instalaciones culturales y deportivas de gran importancia, tanto local como nacional. Algunas de ellas son: Teatro Mella, Teatro Nacional de Cuba, el complejo deportivo Ramón Fonst, Biblioteca Nacional José Martí (que posee más de dos millones de docu', null);

-- ----------------------------
-- Table structure for negocios_lujosos
-- ----------------------------
DROP TABLE IF EXISTS `negocios_lujosos`;
CREATE TABLE `negocios_lujosos` (
  `id_negocio_lujoso` int(11) NOT NULL AUTO_INCREMENT,
  `id_negocio` int(11) NOT NULL,
  PRIMARY KEY (`id_negocio_lujoso`),
  KEY `fk_negocios_lujosos_negocio1` (`id_negocio`) USING BTREE,
  CONSTRAINT `negocios_lujosos_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of negocios_lujosos
-- ----------------------------
INSERT INTO `negocios_lujosos` VALUES ('7', '81');
INSERT INTO `negocios_lujosos` VALUES ('8', '118');
INSERT INTO `negocios_lujosos` VALUES ('4', '122');
INSERT INTO `negocios_lujosos` VALUES ('3', '124');
INSERT INTO `negocios_lujosos` VALUES ('5', '125');
INSERT INTO `negocios_lujosos` VALUES ('6', '126');
INSERT INTO `negocios_lujosos` VALUES ('9', '134');
INSERT INTO `negocios_lujosos` VALUES ('10', '136');

-- ----------------------------
-- Table structure for negocio_caracteristicas
-- ----------------------------
DROP TABLE IF EXISTS `negocio_caracteristicas`;
CREATE TABLE `negocio_caracteristicas` (
  `id_negocio` int(11) NOT NULL,
  `id_caracter` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  KEY `fk_caracteristicas_has_negocio_negocio1` (`id_negocio`) USING BTREE,
  KEY `fk_caracteristicas_has_negocio_caracteristicas1` (`id_caracter`) USING BTREE,
  CONSTRAINT `negocio_caracteristicas_ibfk_1` FOREIGN KEY (`id_caracter`) REFERENCES `caracteristicas` (`id_caracter`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `negocio_caracteristicas_ibfk_2` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of negocio_caracteristicas
-- ----------------------------
INSERT INTO `negocio_caracteristicas` VALUES ('34', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('34', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('34', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('34', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('34', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('34', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('34', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '9', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('35', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '9', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '18', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('38', '19', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('42', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('42', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('42', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('42', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('42', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('42', '11', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('44', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('46', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('46', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('46', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('46', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('46', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('55', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('55', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('55', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('55', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('55', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('55', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('55', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('55', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('56', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('56', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('56', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('56', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('56', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('65', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('65', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('65', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('65', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('65', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('65', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('65', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('67', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('69', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('74', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('74', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('74', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('74', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('74', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('74', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('74', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('75', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('75', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('75', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('75', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('75', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('75', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('75', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('76', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('76', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('76', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('76', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('76', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('76', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('76', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('79', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('79', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('79', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('79', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('79', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('79', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('79', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '12', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('80', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('81', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('83', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('83', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('83', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('83', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('83', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('83', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '1', '5');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '9', '5');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '14', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '19', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '21', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('84', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('85', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('85', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('85', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('85', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('87', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('87', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('87', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('87', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('87', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('87', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('87', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('87', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('88', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '2', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '9', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '14', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '19', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '20', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '21', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('64', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('91', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('91', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('91', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('91', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('91', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('91', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('91', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('91', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('92', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('92', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('92', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('92', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('92', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('51', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('51', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('51', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('51', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('51', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('51', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('51', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('51', '24', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('94', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('94', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('94', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('94', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('94', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('94', '9', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('94', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('94', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('95', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('93', '23', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('104', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('105', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('105', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('105', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('105', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('105', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('105', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('105', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '1', '5');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '3', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '9', '5');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('106', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('108', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('108', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('108', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('108', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('108', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('108', '23', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '21', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('109', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('114', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('114', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('114', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('114', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('114', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('114', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('114', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('114', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '9', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('115', '23', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('116', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('116', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('116', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('116', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('116', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('116', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('116', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('116', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('118', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('120', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('120', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('120', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('120', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('120', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('120', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('120', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('120', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('122', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('122', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('122', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('122', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('122', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('122', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('122', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('123', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('123', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('123', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('123', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('123', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('123', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('123', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('123', '12', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('124', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('124', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('124', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('124', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('124', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('124', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('124', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('124', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('125', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('125', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('125', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('125', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('125', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('125', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('132', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('133', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('136', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('136', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('136', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('136', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('136', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('136', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('136', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('136', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('137', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('137', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('137', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('137', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('137', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('137', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('139', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('139', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('139', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('139', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('139', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('139', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('139', '11', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('139', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '14', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '17', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '20', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '21', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('140', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('126', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('126', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('126', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('126', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('126', '8', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('126', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('126', '11', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '9', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '16', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('117', '22', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('121', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('121', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('121', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('121', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('121', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('121', '9', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('121', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('119', '1', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('119', '2', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('119', '3', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('119', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('119', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('119', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('119', '9', '3');
INSERT INTO `negocio_caracteristicas` VALUES ('119', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('107', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('107', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('107', '6', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('107', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('107', '10', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('107', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('107', '15', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('141', '1', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('141', '2', '2');
INSERT INTO `negocio_caracteristicas` VALUES ('141', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('141', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('141', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('141', '14', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('134', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('134', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('134', '6', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('134', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('134', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('134', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('144', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('144', '2', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('144', '6', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('144', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('144', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('144', '13', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('147', '1', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('147', '4', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('147', '5', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('147', '7', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('147', '9', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('147', '12', '1');
INSERT INTO `negocio_caracteristicas` VALUES ('147', '13', '1');

-- ----------------------------
-- Table structure for negocio_info_adicional
-- ----------------------------
DROP TABLE IF EXISTS `negocio_info_adicional`;
CREATE TABLE `negocio_info_adicional` (
  `id_negocio` int(11) NOT NULL,
  `id_info` int(11) NOT NULL,
  KEY `fk_informacion_adicional_has_negocio_negocio1` (`id_negocio`) USING BTREE,
  KEY `fk_informacion_adicional_has_negocio_informacion_adicional1` (`id_info`) USING BTREE,
  CONSTRAINT `negocio_info_adicional_ibfk_1` FOREIGN KEY (`id_info`) REFERENCES `informacion_adicional` (`id_info`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `negocio_info_adicional_ibfk_2` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of negocio_info_adicional
-- ----------------------------
INSERT INTO `negocio_info_adicional` VALUES ('34', '1');
INSERT INTO `negocio_info_adicional` VALUES ('34', '2');
INSERT INTO `negocio_info_adicional` VALUES ('34', '3');
INSERT INTO `negocio_info_adicional` VALUES ('34', '4');
INSERT INTO `negocio_info_adicional` VALUES ('34', '5');
INSERT INTO `negocio_info_adicional` VALUES ('34', '7');
INSERT INTO `negocio_info_adicional` VALUES ('34', '8');
INSERT INTO `negocio_info_adicional` VALUES ('34', '9');
INSERT INTO `negocio_info_adicional` VALUES ('35', '1');
INSERT INTO `negocio_info_adicional` VALUES ('35', '2');
INSERT INTO `negocio_info_adicional` VALUES ('35', '3');
INSERT INTO `negocio_info_adicional` VALUES ('35', '4');
INSERT INTO `negocio_info_adicional` VALUES ('35', '5');
INSERT INTO `negocio_info_adicional` VALUES ('35', '6');
INSERT INTO `negocio_info_adicional` VALUES ('35', '7');
INSERT INTO `negocio_info_adicional` VALUES ('35', '9');
INSERT INTO `negocio_info_adicional` VALUES ('35', '10');
INSERT INTO `negocio_info_adicional` VALUES ('35', '12');
INSERT INTO `negocio_info_adicional` VALUES ('35', '14');
INSERT INTO `negocio_info_adicional` VALUES ('38', '1');
INSERT INTO `negocio_info_adicional` VALUES ('38', '2');
INSERT INTO `negocio_info_adicional` VALUES ('38', '3');
INSERT INTO `negocio_info_adicional` VALUES ('38', '4');
INSERT INTO `negocio_info_adicional` VALUES ('38', '5');
INSERT INTO `negocio_info_adicional` VALUES ('38', '6');
INSERT INTO `negocio_info_adicional` VALUES ('38', '7');
INSERT INTO `negocio_info_adicional` VALUES ('38', '8');
INSERT INTO `negocio_info_adicional` VALUES ('38', '9');
INSERT INTO `negocio_info_adicional` VALUES ('38', '10');
INSERT INTO `negocio_info_adicional` VALUES ('42', '1');
INSERT INTO `negocio_info_adicional` VALUES ('42', '2');
INSERT INTO `negocio_info_adicional` VALUES ('42', '3');
INSERT INTO `negocio_info_adicional` VALUES ('42', '4');
INSERT INTO `negocio_info_adicional` VALUES ('42', '5');
INSERT INTO `negocio_info_adicional` VALUES ('42', '7');
INSERT INTO `negocio_info_adicional` VALUES ('42', '10');
INSERT INTO `negocio_info_adicional` VALUES ('44', '1');
INSERT INTO `negocio_info_adicional` VALUES ('44', '2');
INSERT INTO `negocio_info_adicional` VALUES ('44', '3');
INSERT INTO `negocio_info_adicional` VALUES ('44', '4');
INSERT INTO `negocio_info_adicional` VALUES ('44', '5');
INSERT INTO `negocio_info_adicional` VALUES ('44', '6');
INSERT INTO `negocio_info_adicional` VALUES ('44', '7');
INSERT INTO `negocio_info_adicional` VALUES ('44', '10');
INSERT INTO `negocio_info_adicional` VALUES ('46', '1');
INSERT INTO `negocio_info_adicional` VALUES ('46', '2');
INSERT INTO `negocio_info_adicional` VALUES ('46', '3');
INSERT INTO `negocio_info_adicional` VALUES ('46', '4');
INSERT INTO `negocio_info_adicional` VALUES ('46', '5');
INSERT INTO `negocio_info_adicional` VALUES ('46', '6');
INSERT INTO `negocio_info_adicional` VALUES ('46', '7');
INSERT INTO `negocio_info_adicional` VALUES ('46', '9');
INSERT INTO `negocio_info_adicional` VALUES ('46', '10');
INSERT INTO `negocio_info_adicional` VALUES ('51', '1');
INSERT INTO `negocio_info_adicional` VALUES ('51', '2');
INSERT INTO `negocio_info_adicional` VALUES ('51', '3');
INSERT INTO `negocio_info_adicional` VALUES ('51', '4');
INSERT INTO `negocio_info_adicional` VALUES ('51', '5');
INSERT INTO `negocio_info_adicional` VALUES ('51', '6');
INSERT INTO `negocio_info_adicional` VALUES ('51', '7');
INSERT INTO `negocio_info_adicional` VALUES ('51', '8');
INSERT INTO `negocio_info_adicional` VALUES ('51', '9');
INSERT INTO `negocio_info_adicional` VALUES ('51', '10');
INSERT INTO `negocio_info_adicional` VALUES ('55', '1');
INSERT INTO `negocio_info_adicional` VALUES ('55', '2');
INSERT INTO `negocio_info_adicional` VALUES ('55', '3');
INSERT INTO `negocio_info_adicional` VALUES ('55', '4');
INSERT INTO `negocio_info_adicional` VALUES ('55', '5');
INSERT INTO `negocio_info_adicional` VALUES ('55', '6');
INSERT INTO `negocio_info_adicional` VALUES ('55', '7');
INSERT INTO `negocio_info_adicional` VALUES ('55', '8');
INSERT INTO `negocio_info_adicional` VALUES ('55', '9');
INSERT INTO `negocio_info_adicional` VALUES ('55', '10');
INSERT INTO `negocio_info_adicional` VALUES ('55', '12');
INSERT INTO `negocio_info_adicional` VALUES ('56', '1');
INSERT INTO `negocio_info_adicional` VALUES ('56', '2');
INSERT INTO `negocio_info_adicional` VALUES ('56', '3');
INSERT INTO `negocio_info_adicional` VALUES ('56', '4');
INSERT INTO `negocio_info_adicional` VALUES ('56', '5');
INSERT INTO `negocio_info_adicional` VALUES ('56', '6');
INSERT INTO `negocio_info_adicional` VALUES ('56', '7');
INSERT INTO `negocio_info_adicional` VALUES ('56', '8');
INSERT INTO `negocio_info_adicional` VALUES ('56', '9');
INSERT INTO `negocio_info_adicional` VALUES ('56', '10');
INSERT INTO `negocio_info_adicional` VALUES ('56', '12');
INSERT INTO `negocio_info_adicional` VALUES ('64', '1');
INSERT INTO `negocio_info_adicional` VALUES ('64', '2');
INSERT INTO `negocio_info_adicional` VALUES ('64', '3');
INSERT INTO `negocio_info_adicional` VALUES ('64', '4');
INSERT INTO `negocio_info_adicional` VALUES ('64', '5');
INSERT INTO `negocio_info_adicional` VALUES ('64', '7');
INSERT INTO `negocio_info_adicional` VALUES ('64', '8');
INSERT INTO `negocio_info_adicional` VALUES ('64', '9');
INSERT INTO `negocio_info_adicional` VALUES ('64', '10');
INSERT INTO `negocio_info_adicional` VALUES ('64', '12');
INSERT INTO `negocio_info_adicional` VALUES ('65', '1');
INSERT INTO `negocio_info_adicional` VALUES ('65', '2');
INSERT INTO `negocio_info_adicional` VALUES ('65', '3');
INSERT INTO `negocio_info_adicional` VALUES ('65', '4');
INSERT INTO `negocio_info_adicional` VALUES ('65', '5');
INSERT INTO `negocio_info_adicional` VALUES ('65', '7');
INSERT INTO `negocio_info_adicional` VALUES ('65', '8');
INSERT INTO `negocio_info_adicional` VALUES ('65', '9');
INSERT INTO `negocio_info_adicional` VALUES ('65', '10');
INSERT INTO `negocio_info_adicional` VALUES ('65', '12');
INSERT INTO `negocio_info_adicional` VALUES ('67', '1');
INSERT INTO `negocio_info_adicional` VALUES ('67', '2');
INSERT INTO `negocio_info_adicional` VALUES ('67', '3');
INSERT INTO `negocio_info_adicional` VALUES ('67', '4');
INSERT INTO `negocio_info_adicional` VALUES ('67', '5');
INSERT INTO `negocio_info_adicional` VALUES ('67', '7');
INSERT INTO `negocio_info_adicional` VALUES ('67', '8');
INSERT INTO `negocio_info_adicional` VALUES ('67', '9');
INSERT INTO `negocio_info_adicional` VALUES ('67', '12');
INSERT INTO `negocio_info_adicional` VALUES ('69', '1');
INSERT INTO `negocio_info_adicional` VALUES ('69', '2');
INSERT INTO `negocio_info_adicional` VALUES ('69', '3');
INSERT INTO `negocio_info_adicional` VALUES ('69', '4');
INSERT INTO `negocio_info_adicional` VALUES ('69', '5');
INSERT INTO `negocio_info_adicional` VALUES ('69', '7');
INSERT INTO `negocio_info_adicional` VALUES ('69', '10');
INSERT INTO `negocio_info_adicional` VALUES ('69', '12');
INSERT INTO `negocio_info_adicional` VALUES ('74', '1');
INSERT INTO `negocio_info_adicional` VALUES ('74', '2');
INSERT INTO `negocio_info_adicional` VALUES ('74', '3');
INSERT INTO `negocio_info_adicional` VALUES ('74', '4');
INSERT INTO `negocio_info_adicional` VALUES ('74', '5');
INSERT INTO `negocio_info_adicional` VALUES ('74', '6');
INSERT INTO `negocio_info_adicional` VALUES ('74', '7');
INSERT INTO `negocio_info_adicional` VALUES ('74', '10');
INSERT INTO `negocio_info_adicional` VALUES ('75', '1');
INSERT INTO `negocio_info_adicional` VALUES ('75', '2');
INSERT INTO `negocio_info_adicional` VALUES ('75', '3');
INSERT INTO `negocio_info_adicional` VALUES ('75', '4');
INSERT INTO `negocio_info_adicional` VALUES ('75', '5');
INSERT INTO `negocio_info_adicional` VALUES ('75', '6');
INSERT INTO `negocio_info_adicional` VALUES ('75', '7');
INSERT INTO `negocio_info_adicional` VALUES ('75', '10');
INSERT INTO `negocio_info_adicional` VALUES ('76', '1');
INSERT INTO `negocio_info_adicional` VALUES ('76', '2');
INSERT INTO `negocio_info_adicional` VALUES ('76', '3');
INSERT INTO `negocio_info_adicional` VALUES ('76', '4');
INSERT INTO `negocio_info_adicional` VALUES ('76', '5');
INSERT INTO `negocio_info_adicional` VALUES ('76', '6');
INSERT INTO `negocio_info_adicional` VALUES ('76', '7');
INSERT INTO `negocio_info_adicional` VALUES ('76', '10');
INSERT INTO `negocio_info_adicional` VALUES ('79', '1');
INSERT INTO `negocio_info_adicional` VALUES ('79', '2');
INSERT INTO `negocio_info_adicional` VALUES ('79', '3');
INSERT INTO `negocio_info_adicional` VALUES ('79', '4');
INSERT INTO `negocio_info_adicional` VALUES ('79', '5');
INSERT INTO `negocio_info_adicional` VALUES ('79', '6');
INSERT INTO `negocio_info_adicional` VALUES ('79', '7');
INSERT INTO `negocio_info_adicional` VALUES ('79', '8');
INSERT INTO `negocio_info_adicional` VALUES ('79', '9');
INSERT INTO `negocio_info_adicional` VALUES ('79', '10');
INSERT INTO `negocio_info_adicional` VALUES ('80', '1');
INSERT INTO `negocio_info_adicional` VALUES ('80', '2');
INSERT INTO `negocio_info_adicional` VALUES ('80', '3');
INSERT INTO `negocio_info_adicional` VALUES ('80', '4');
INSERT INTO `negocio_info_adicional` VALUES ('80', '5');
INSERT INTO `negocio_info_adicional` VALUES ('80', '7');
INSERT INTO `negocio_info_adicional` VALUES ('80', '10');
INSERT INTO `negocio_info_adicional` VALUES ('80', '11');
INSERT INTO `negocio_info_adicional` VALUES ('81', '1');
INSERT INTO `negocio_info_adicional` VALUES ('81', '2');
INSERT INTO `negocio_info_adicional` VALUES ('81', '3');
INSERT INTO `negocio_info_adicional` VALUES ('81', '4');
INSERT INTO `negocio_info_adicional` VALUES ('81', '5');
INSERT INTO `negocio_info_adicional` VALUES ('81', '6');
INSERT INTO `negocio_info_adicional` VALUES ('81', '7');
INSERT INTO `negocio_info_adicional` VALUES ('81', '8');
INSERT INTO `negocio_info_adicional` VALUES ('81', '9');
INSERT INTO `negocio_info_adicional` VALUES ('81', '10');
INSERT INTO `negocio_info_adicional` VALUES ('81', '12');
INSERT INTO `negocio_info_adicional` VALUES ('83', '1');
INSERT INTO `negocio_info_adicional` VALUES ('83', '2');
INSERT INTO `negocio_info_adicional` VALUES ('83', '3');
INSERT INTO `negocio_info_adicional` VALUES ('83', '4');
INSERT INTO `negocio_info_adicional` VALUES ('83', '5');
INSERT INTO `negocio_info_adicional` VALUES ('83', '10');
INSERT INTO `negocio_info_adicional` VALUES ('84', '1');
INSERT INTO `negocio_info_adicional` VALUES ('84', '2');
INSERT INTO `negocio_info_adicional` VALUES ('84', '4');
INSERT INTO `negocio_info_adicional` VALUES ('84', '5');
INSERT INTO `negocio_info_adicional` VALUES ('84', '6');
INSERT INTO `negocio_info_adicional` VALUES ('84', '7');
INSERT INTO `negocio_info_adicional` VALUES ('84', '10');
INSERT INTO `negocio_info_adicional` VALUES ('84', '12');
INSERT INTO `negocio_info_adicional` VALUES ('85', '1');
INSERT INTO `negocio_info_adicional` VALUES ('85', '2');
INSERT INTO `negocio_info_adicional` VALUES ('85', '3');
INSERT INTO `negocio_info_adicional` VALUES ('85', '4');
INSERT INTO `negocio_info_adicional` VALUES ('85', '5');
INSERT INTO `negocio_info_adicional` VALUES ('85', '6');
INSERT INTO `negocio_info_adicional` VALUES ('85', '10');
INSERT INTO `negocio_info_adicional` VALUES ('87', '1');
INSERT INTO `negocio_info_adicional` VALUES ('87', '2');
INSERT INTO `negocio_info_adicional` VALUES ('87', '3');
INSERT INTO `negocio_info_adicional` VALUES ('87', '4');
INSERT INTO `negocio_info_adicional` VALUES ('87', '5');
INSERT INTO `negocio_info_adicional` VALUES ('87', '7');
INSERT INTO `negocio_info_adicional` VALUES ('87', '10');
INSERT INTO `negocio_info_adicional` VALUES ('87', '12');
INSERT INTO `negocio_info_adicional` VALUES ('88', '1');
INSERT INTO `negocio_info_adicional` VALUES ('88', '2');
INSERT INTO `negocio_info_adicional` VALUES ('88', '3');
INSERT INTO `negocio_info_adicional` VALUES ('88', '4');
INSERT INTO `negocio_info_adicional` VALUES ('88', '5');
INSERT INTO `negocio_info_adicional` VALUES ('88', '6');
INSERT INTO `negocio_info_adicional` VALUES ('88', '7');
INSERT INTO `negocio_info_adicional` VALUES ('88', '10');
INSERT INTO `negocio_info_adicional` VALUES ('88', '12');
INSERT INTO `negocio_info_adicional` VALUES ('91', '1');
INSERT INTO `negocio_info_adicional` VALUES ('91', '2');
INSERT INTO `negocio_info_adicional` VALUES ('91', '3');
INSERT INTO `negocio_info_adicional` VALUES ('91', '5');
INSERT INTO `negocio_info_adicional` VALUES ('91', '6');
INSERT INTO `negocio_info_adicional` VALUES ('91', '7');
INSERT INTO `negocio_info_adicional` VALUES ('91', '8');
INSERT INTO `negocio_info_adicional` VALUES ('91', '9');
INSERT INTO `negocio_info_adicional` VALUES ('91', '10');
INSERT INTO `negocio_info_adicional` VALUES ('91', '12');
INSERT INTO `negocio_info_adicional` VALUES ('91', '14');
INSERT INTO `negocio_info_adicional` VALUES ('91', '15');
INSERT INTO `negocio_info_adicional` VALUES ('92', '1');
INSERT INTO `negocio_info_adicional` VALUES ('92', '2');
INSERT INTO `negocio_info_adicional` VALUES ('92', '3');
INSERT INTO `negocio_info_adicional` VALUES ('92', '4');
INSERT INTO `negocio_info_adicional` VALUES ('92', '5');
INSERT INTO `negocio_info_adicional` VALUES ('92', '7');
INSERT INTO `negocio_info_adicional` VALUES ('92', '10');
INSERT INTO `negocio_info_adicional` VALUES ('92', '11');
INSERT INTO `negocio_info_adicional` VALUES ('93', '1');
INSERT INTO `negocio_info_adicional` VALUES ('93', '2');
INSERT INTO `negocio_info_adicional` VALUES ('93', '3');
INSERT INTO `negocio_info_adicional` VALUES ('93', '4');
INSERT INTO `negocio_info_adicional` VALUES ('93', '5');
INSERT INTO `negocio_info_adicional` VALUES ('93', '6');
INSERT INTO `negocio_info_adicional` VALUES ('93', '7');
INSERT INTO `negocio_info_adicional` VALUES ('93', '10');
INSERT INTO `negocio_info_adicional` VALUES ('93', '12');
INSERT INTO `negocio_info_adicional` VALUES ('94', '1');
INSERT INTO `negocio_info_adicional` VALUES ('94', '2');
INSERT INTO `negocio_info_adicional` VALUES ('94', '3');
INSERT INTO `negocio_info_adicional` VALUES ('94', '4');
INSERT INTO `negocio_info_adicional` VALUES ('94', '5');
INSERT INTO `negocio_info_adicional` VALUES ('94', '6');
INSERT INTO `negocio_info_adicional` VALUES ('94', '7');
INSERT INTO `negocio_info_adicional` VALUES ('94', '8');
INSERT INTO `negocio_info_adicional` VALUES ('94', '9');
INSERT INTO `negocio_info_adicional` VALUES ('94', '10');
INSERT INTO `negocio_info_adicional` VALUES ('94', '12');
INSERT INTO `negocio_info_adicional` VALUES ('94', '13');
INSERT INTO `negocio_info_adicional` VALUES ('95', '1');
INSERT INTO `negocio_info_adicional` VALUES ('95', '3');
INSERT INTO `negocio_info_adicional` VALUES ('95', '4');
INSERT INTO `negocio_info_adicional` VALUES ('95', '5');
INSERT INTO `negocio_info_adicional` VALUES ('95', '7');
INSERT INTO `negocio_info_adicional` VALUES ('95', '12');
INSERT INTO `negocio_info_adicional` VALUES ('104', '1');
INSERT INTO `negocio_info_adicional` VALUES ('104', '2');
INSERT INTO `negocio_info_adicional` VALUES ('104', '3');
INSERT INTO `negocio_info_adicional` VALUES ('104', '4');
INSERT INTO `negocio_info_adicional` VALUES ('104', '5');
INSERT INTO `negocio_info_adicional` VALUES ('104', '6');
INSERT INTO `negocio_info_adicional` VALUES ('104', '7');
INSERT INTO `negocio_info_adicional` VALUES ('104', '8');
INSERT INTO `negocio_info_adicional` VALUES ('104', '9');
INSERT INTO `negocio_info_adicional` VALUES ('104', '10');
INSERT INTO `negocio_info_adicional` VALUES ('105', '1');
INSERT INTO `negocio_info_adicional` VALUES ('105', '2');
INSERT INTO `negocio_info_adicional` VALUES ('105', '3');
INSERT INTO `negocio_info_adicional` VALUES ('105', '4');
INSERT INTO `negocio_info_adicional` VALUES ('105', '5');
INSERT INTO `negocio_info_adicional` VALUES ('105', '6');
INSERT INTO `negocio_info_adicional` VALUES ('105', '7');
INSERT INTO `negocio_info_adicional` VALUES ('105', '10');
INSERT INTO `negocio_info_adicional` VALUES ('106', '1');
INSERT INTO `negocio_info_adicional` VALUES ('106', '2');
INSERT INTO `negocio_info_adicional` VALUES ('106', '3');
INSERT INTO `negocio_info_adicional` VALUES ('106', '4');
INSERT INTO `negocio_info_adicional` VALUES ('106', '5');
INSERT INTO `negocio_info_adicional` VALUES ('106', '6');
INSERT INTO `negocio_info_adicional` VALUES ('106', '7');
INSERT INTO `negocio_info_adicional` VALUES ('106', '10');
INSERT INTO `negocio_info_adicional` VALUES ('106', '11');
INSERT INTO `negocio_info_adicional` VALUES ('107', '1');
INSERT INTO `negocio_info_adicional` VALUES ('107', '3');
INSERT INTO `negocio_info_adicional` VALUES ('107', '4');
INSERT INTO `negocio_info_adicional` VALUES ('107', '5');
INSERT INTO `negocio_info_adicional` VALUES ('107', '7');
INSERT INTO `negocio_info_adicional` VALUES ('107', '12');
INSERT INTO `negocio_info_adicional` VALUES ('108', '1');
INSERT INTO `negocio_info_adicional` VALUES ('108', '2');
INSERT INTO `negocio_info_adicional` VALUES ('108', '3');
INSERT INTO `negocio_info_adicional` VALUES ('108', '4');
INSERT INTO `negocio_info_adicional` VALUES ('108', '5');
INSERT INTO `negocio_info_adicional` VALUES ('108', '6');
INSERT INTO `negocio_info_adicional` VALUES ('108', '7');
INSERT INTO `negocio_info_adicional` VALUES ('108', '10');
INSERT INTO `negocio_info_adicional` VALUES ('109', '1');
INSERT INTO `negocio_info_adicional` VALUES ('109', '2');
INSERT INTO `negocio_info_adicional` VALUES ('109', '3');
INSERT INTO `negocio_info_adicional` VALUES ('109', '5');
INSERT INTO `negocio_info_adicional` VALUES ('109', '7');
INSERT INTO `negocio_info_adicional` VALUES ('109', '10');
INSERT INTO `negocio_info_adicional` VALUES ('114', '1');
INSERT INTO `negocio_info_adicional` VALUES ('114', '2');
INSERT INTO `negocio_info_adicional` VALUES ('114', '3');
INSERT INTO `negocio_info_adicional` VALUES ('114', '4');
INSERT INTO `negocio_info_adicional` VALUES ('114', '5');
INSERT INTO `negocio_info_adicional` VALUES ('114', '6');
INSERT INTO `negocio_info_adicional` VALUES ('114', '7');
INSERT INTO `negocio_info_adicional` VALUES ('114', '8');
INSERT INTO `negocio_info_adicional` VALUES ('114', '9');
INSERT INTO `negocio_info_adicional` VALUES ('114', '10');
INSERT INTO `negocio_info_adicional` VALUES ('115', '1');
INSERT INTO `negocio_info_adicional` VALUES ('115', '2');
INSERT INTO `negocio_info_adicional` VALUES ('115', '3');
INSERT INTO `negocio_info_adicional` VALUES ('115', '4');
INSERT INTO `negocio_info_adicional` VALUES ('115', '5');
INSERT INTO `negocio_info_adicional` VALUES ('115', '6');
INSERT INTO `negocio_info_adicional` VALUES ('115', '7');
INSERT INTO `negocio_info_adicional` VALUES ('115', '10');
INSERT INTO `negocio_info_adicional` VALUES ('116', '1');
INSERT INTO `negocio_info_adicional` VALUES ('116', '2');
INSERT INTO `negocio_info_adicional` VALUES ('116', '3');
INSERT INTO `negocio_info_adicional` VALUES ('116', '4');
INSERT INTO `negocio_info_adicional` VALUES ('116', '5');
INSERT INTO `negocio_info_adicional` VALUES ('116', '6');
INSERT INTO `negocio_info_adicional` VALUES ('116', '7');
INSERT INTO `negocio_info_adicional` VALUES ('116', '9');
INSERT INTO `negocio_info_adicional` VALUES ('116', '10');
INSERT INTO `negocio_info_adicional` VALUES ('117', '1');
INSERT INTO `negocio_info_adicional` VALUES ('117', '2');
INSERT INTO `negocio_info_adicional` VALUES ('117', '3');
INSERT INTO `negocio_info_adicional` VALUES ('117', '4');
INSERT INTO `negocio_info_adicional` VALUES ('117', '5');
INSERT INTO `negocio_info_adicional` VALUES ('117', '6');
INSERT INTO `negocio_info_adicional` VALUES ('117', '10');
INSERT INTO `negocio_info_adicional` VALUES ('118', '1');
INSERT INTO `negocio_info_adicional` VALUES ('118', '2');
INSERT INTO `negocio_info_adicional` VALUES ('118', '3');
INSERT INTO `negocio_info_adicional` VALUES ('118', '4');
INSERT INTO `negocio_info_adicional` VALUES ('118', '5');
INSERT INTO `negocio_info_adicional` VALUES ('118', '6');
INSERT INTO `negocio_info_adicional` VALUES ('118', '7');
INSERT INTO `negocio_info_adicional` VALUES ('118', '8');
INSERT INTO `negocio_info_adicional` VALUES ('118', '10');
INSERT INTO `negocio_info_adicional` VALUES ('118', '12');
INSERT INTO `negocio_info_adicional` VALUES ('119', '1');
INSERT INTO `negocio_info_adicional` VALUES ('119', '2');
INSERT INTO `negocio_info_adicional` VALUES ('119', '3');
INSERT INTO `negocio_info_adicional` VALUES ('119', '4');
INSERT INTO `negocio_info_adicional` VALUES ('119', '5');
INSERT INTO `negocio_info_adicional` VALUES ('119', '10');
INSERT INTO `negocio_info_adicional` VALUES ('119', '12');
INSERT INTO `negocio_info_adicional` VALUES ('120', '1');
INSERT INTO `negocio_info_adicional` VALUES ('120', '2');
INSERT INTO `negocio_info_adicional` VALUES ('120', '3');
INSERT INTO `negocio_info_adicional` VALUES ('120', '4');
INSERT INTO `negocio_info_adicional` VALUES ('120', '5');
INSERT INTO `negocio_info_adicional` VALUES ('120', '6');
INSERT INTO `negocio_info_adicional` VALUES ('120', '7');
INSERT INTO `negocio_info_adicional` VALUES ('120', '10');
INSERT INTO `negocio_info_adicional` VALUES ('120', '11');
INSERT INTO `negocio_info_adicional` VALUES ('121', '1');
INSERT INTO `negocio_info_adicional` VALUES ('121', '2');
INSERT INTO `negocio_info_adicional` VALUES ('121', '3');
INSERT INTO `negocio_info_adicional` VALUES ('121', '5');
INSERT INTO `negocio_info_adicional` VALUES ('121', '6');
INSERT INTO `negocio_info_adicional` VALUES ('121', '7');
INSERT INTO `negocio_info_adicional` VALUES ('121', '8');
INSERT INTO `negocio_info_adicional` VALUES ('121', '9');
INSERT INTO `negocio_info_adicional` VALUES ('121', '10');
INSERT INTO `negocio_info_adicional` VALUES ('122', '1');
INSERT INTO `negocio_info_adicional` VALUES ('122', '2');
INSERT INTO `negocio_info_adicional` VALUES ('122', '3');
INSERT INTO `negocio_info_adicional` VALUES ('122', '4');
INSERT INTO `negocio_info_adicional` VALUES ('122', '5');
INSERT INTO `negocio_info_adicional` VALUES ('122', '6');
INSERT INTO `negocio_info_adicional` VALUES ('122', '7');
INSERT INTO `negocio_info_adicional` VALUES ('122', '8');
INSERT INTO `negocio_info_adicional` VALUES ('122', '9');
INSERT INTO `negocio_info_adicional` VALUES ('122', '10');
INSERT INTO `negocio_info_adicional` VALUES ('123', '1');
INSERT INTO `negocio_info_adicional` VALUES ('123', '2');
INSERT INTO `negocio_info_adicional` VALUES ('123', '3');
INSERT INTO `negocio_info_adicional` VALUES ('123', '4');
INSERT INTO `negocio_info_adicional` VALUES ('123', '5');
INSERT INTO `negocio_info_adicional` VALUES ('123', '6');
INSERT INTO `negocio_info_adicional` VALUES ('123', '7');
INSERT INTO `negocio_info_adicional` VALUES ('123', '8');
INSERT INTO `negocio_info_adicional` VALUES ('123', '10');
INSERT INTO `negocio_info_adicional` VALUES ('123', '11');
INSERT INTO `negocio_info_adicional` VALUES ('124', '1');
INSERT INTO `negocio_info_adicional` VALUES ('124', '2');
INSERT INTO `negocio_info_adicional` VALUES ('124', '3');
INSERT INTO `negocio_info_adicional` VALUES ('124', '5');
INSERT INTO `negocio_info_adicional` VALUES ('124', '6');
INSERT INTO `negocio_info_adicional` VALUES ('124', '7');
INSERT INTO `negocio_info_adicional` VALUES ('124', '10');
INSERT INTO `negocio_info_adicional` VALUES ('124', '11');
INSERT INTO `negocio_info_adicional` VALUES ('125', '1');
INSERT INTO `negocio_info_adicional` VALUES ('125', '2');
INSERT INTO `negocio_info_adicional` VALUES ('125', '3');
INSERT INTO `negocio_info_adicional` VALUES ('125', '4');
INSERT INTO `negocio_info_adicional` VALUES ('125', '5');
INSERT INTO `negocio_info_adicional` VALUES ('125', '6');
INSERT INTO `negocio_info_adicional` VALUES ('125', '7');
INSERT INTO `negocio_info_adicional` VALUES ('125', '10');
INSERT INTO `negocio_info_adicional` VALUES ('126', '1');
INSERT INTO `negocio_info_adicional` VALUES ('126', '2');
INSERT INTO `negocio_info_adicional` VALUES ('126', '3');
INSERT INTO `negocio_info_adicional` VALUES ('126', '4');
INSERT INTO `negocio_info_adicional` VALUES ('126', '5');
INSERT INTO `negocio_info_adicional` VALUES ('126', '6');
INSERT INTO `negocio_info_adicional` VALUES ('126', '7');
INSERT INTO `negocio_info_adicional` VALUES ('126', '10');
INSERT INTO `negocio_info_adicional` VALUES ('132', '1');
INSERT INTO `negocio_info_adicional` VALUES ('132', '2');
INSERT INTO `negocio_info_adicional` VALUES ('132', '3');
INSERT INTO `negocio_info_adicional` VALUES ('132', '4');
INSERT INTO `negocio_info_adicional` VALUES ('132', '5');
INSERT INTO `negocio_info_adicional` VALUES ('132', '6');
INSERT INTO `negocio_info_adicional` VALUES ('132', '7');
INSERT INTO `negocio_info_adicional` VALUES ('132', '8');
INSERT INTO `negocio_info_adicional` VALUES ('132', '9');
INSERT INTO `negocio_info_adicional` VALUES ('132', '10');
INSERT INTO `negocio_info_adicional` VALUES ('132', '11');
INSERT INTO `negocio_info_adicional` VALUES ('133', '1');
INSERT INTO `negocio_info_adicional` VALUES ('133', '2');
INSERT INTO `negocio_info_adicional` VALUES ('133', '3');
INSERT INTO `negocio_info_adicional` VALUES ('133', '4');
INSERT INTO `negocio_info_adicional` VALUES ('133', '5');
INSERT INTO `negocio_info_adicional` VALUES ('133', '6');
INSERT INTO `negocio_info_adicional` VALUES ('133', '7');
INSERT INTO `negocio_info_adicional` VALUES ('133', '8');
INSERT INTO `negocio_info_adicional` VALUES ('133', '9');
INSERT INTO `negocio_info_adicional` VALUES ('133', '10');
INSERT INTO `negocio_info_adicional` VALUES ('136', '1');
INSERT INTO `negocio_info_adicional` VALUES ('136', '2');
INSERT INTO `negocio_info_adicional` VALUES ('136', '3');
INSERT INTO `negocio_info_adicional` VALUES ('136', '4');
INSERT INTO `negocio_info_adicional` VALUES ('136', '5');
INSERT INTO `negocio_info_adicional` VALUES ('136', '6');
INSERT INTO `negocio_info_adicional` VALUES ('136', '7');
INSERT INTO `negocio_info_adicional` VALUES ('136', '8');
INSERT INTO `negocio_info_adicional` VALUES ('136', '9');
INSERT INTO `negocio_info_adicional` VALUES ('136', '10');
INSERT INTO `negocio_info_adicional` VALUES ('136', '12');
INSERT INTO `negocio_info_adicional` VALUES ('137', '1');
INSERT INTO `negocio_info_adicional` VALUES ('137', '2');
INSERT INTO `negocio_info_adicional` VALUES ('137', '3');
INSERT INTO `negocio_info_adicional` VALUES ('137', '4');
INSERT INTO `negocio_info_adicional` VALUES ('137', '5');
INSERT INTO `negocio_info_adicional` VALUES ('137', '6');
INSERT INTO `negocio_info_adicional` VALUES ('137', '7');
INSERT INTO `negocio_info_adicional` VALUES ('137', '8');
INSERT INTO `negocio_info_adicional` VALUES ('137', '9');
INSERT INTO `negocio_info_adicional` VALUES ('137', '10');
INSERT INTO `negocio_info_adicional` VALUES ('137', '12');
INSERT INTO `negocio_info_adicional` VALUES ('139', '1');
INSERT INTO `negocio_info_adicional` VALUES ('139', '2');
INSERT INTO `negocio_info_adicional` VALUES ('139', '3');
INSERT INTO `negocio_info_adicional` VALUES ('139', '4');
INSERT INTO `negocio_info_adicional` VALUES ('139', '5');
INSERT INTO `negocio_info_adicional` VALUES ('139', '6');
INSERT INTO `negocio_info_adicional` VALUES ('139', '7');
INSERT INTO `negocio_info_adicional` VALUES ('139', '8');
INSERT INTO `negocio_info_adicional` VALUES ('139', '9');
INSERT INTO `negocio_info_adicional` VALUES ('139', '10');
INSERT INTO `negocio_info_adicional` VALUES ('139', '12');
INSERT INTO `negocio_info_adicional` VALUES ('140', '1');
INSERT INTO `negocio_info_adicional` VALUES ('140', '2');
INSERT INTO `negocio_info_adicional` VALUES ('140', '3');
INSERT INTO `negocio_info_adicional` VALUES ('140', '4');
INSERT INTO `negocio_info_adicional` VALUES ('140', '5');
INSERT INTO `negocio_info_adicional` VALUES ('140', '7');
INSERT INTO `negocio_info_adicional` VALUES ('140', '8');
INSERT INTO `negocio_info_adicional` VALUES ('140', '9');
INSERT INTO `negocio_info_adicional` VALUES ('140', '10');
INSERT INTO `negocio_info_adicional` VALUES ('140', '12');
INSERT INTO `negocio_info_adicional` VALUES ('141', '1');
INSERT INTO `negocio_info_adicional` VALUES ('141', '2');
INSERT INTO `negocio_info_adicional` VALUES ('141', '3');
INSERT INTO `negocio_info_adicional` VALUES ('141', '4');
INSERT INTO `negocio_info_adicional` VALUES ('141', '5');
INSERT INTO `negocio_info_adicional` VALUES ('141', '7');
INSERT INTO `negocio_info_adicional` VALUES ('141', '8');
INSERT INTO `negocio_info_adicional` VALUES ('141', '9');
INSERT INTO `negocio_info_adicional` VALUES ('141', '10');
INSERT INTO `negocio_info_adicional` VALUES ('141', '12');
INSERT INTO `negocio_info_adicional` VALUES ('134', '1');
INSERT INTO `negocio_info_adicional` VALUES ('134', '2');
INSERT INTO `negocio_info_adicional` VALUES ('134', '3');
INSERT INTO `negocio_info_adicional` VALUES ('134', '4');
INSERT INTO `negocio_info_adicional` VALUES ('134', '5');
INSERT INTO `negocio_info_adicional` VALUES ('134', '6');
INSERT INTO `negocio_info_adicional` VALUES ('134', '7');
INSERT INTO `negocio_info_adicional` VALUES ('134', '8');
INSERT INTO `negocio_info_adicional` VALUES ('134', '10');
INSERT INTO `negocio_info_adicional` VALUES ('144', '1');
INSERT INTO `negocio_info_adicional` VALUES ('144', '2');
INSERT INTO `negocio_info_adicional` VALUES ('144', '3');
INSERT INTO `negocio_info_adicional` VALUES ('144', '4');
INSERT INTO `negocio_info_adicional` VALUES ('144', '5');
INSERT INTO `negocio_info_adicional` VALUES ('144', '6');
INSERT INTO `negocio_info_adicional` VALUES ('144', '7');
INSERT INTO `negocio_info_adicional` VALUES ('144', '8');
INSERT INTO `negocio_info_adicional` VALUES ('144', '10');
INSERT INTO `negocio_info_adicional` VALUES ('147', '1');
INSERT INTO `negocio_info_adicional` VALUES ('147', '2');
INSERT INTO `negocio_info_adicional` VALUES ('147', '3');
INSERT INTO `negocio_info_adicional` VALUES ('147', '4');
INSERT INTO `negocio_info_adicional` VALUES ('147', '5');
INSERT INTO `negocio_info_adicional` VALUES ('147', '6');
INSERT INTO `negocio_info_adicional` VALUES ('147', '7');
INSERT INTO `negocio_info_adicional` VALUES ('147', '8');
INSERT INTO `negocio_info_adicional` VALUES ('147', '9');
INSERT INTO `negocio_info_adicional` VALUES ('147', '10');

-- ----------------------------
-- Table structure for negocio_servicio
-- ----------------------------
DROP TABLE IF EXISTS `negocio_servicio`;
CREATE TABLE `negocio_servicio` (
  `id_negocio` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  PRIMARY KEY (`id_negocio`,`id_servicio`),
  KEY `id_servicio` (`id_servicio`),
  CONSTRAINT `negocio_servicio_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE,
  CONSTRAINT `negocio_servicio_ibfk_2` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of negocio_servicio
-- ----------------------------
INSERT INTO `negocio_servicio` VALUES ('76', '0');
INSERT INTO `negocio_servicio` VALUES ('136', '0');
INSERT INTO `negocio_servicio` VALUES ('137', '0');
INSERT INTO `negocio_servicio` VALUES ('92', '1');
INSERT INTO `negocio_servicio` VALUES ('114', '1');
INSERT INTO `negocio_servicio` VALUES ('115', '1');
INSERT INTO `negocio_servicio` VALUES ('119', '1');
INSERT INTO `negocio_servicio` VALUES ('122', '1');
INSERT INTO `negocio_servicio` VALUES ('123', '1');
INSERT INTO `negocio_servicio` VALUES ('124', '1');
INSERT INTO `negocio_servicio` VALUES ('139', '1');
INSERT INTO `negocio_servicio` VALUES ('34', '2');
INSERT INTO `negocio_servicio` VALUES ('35', '2');
INSERT INTO `negocio_servicio` VALUES ('42', '2');
INSERT INTO `negocio_servicio` VALUES ('44', '2');
INSERT INTO `negocio_servicio` VALUES ('51', '2');
INSERT INTO `negocio_servicio` VALUES ('64', '2');
INSERT INTO `negocio_servicio` VALUES ('65', '2');
INSERT INTO `negocio_servicio` VALUES ('67', '2');
INSERT INTO `negocio_servicio` VALUES ('76', '2');
INSERT INTO `negocio_servicio` VALUES ('80', '2');
INSERT INTO `negocio_servicio` VALUES ('81', '2');
INSERT INTO `negocio_servicio` VALUES ('83', '2');
INSERT INTO `negocio_servicio` VALUES ('84', '2');
INSERT INTO `negocio_servicio` VALUES ('85', '2');
INSERT INTO `negocio_servicio` VALUES ('87', '2');
INSERT INTO `negocio_servicio` VALUES ('88', '2');
INSERT INTO `negocio_servicio` VALUES ('92', '2');
INSERT INTO `negocio_servicio` VALUES ('93', '2');
INSERT INTO `negocio_servicio` VALUES ('104', '2');
INSERT INTO `negocio_servicio` VALUES ('105', '2');
INSERT INTO `negocio_servicio` VALUES ('106', '2');
INSERT INTO `negocio_servicio` VALUES ('108', '2');
INSERT INTO `negocio_servicio` VALUES ('114', '2');
INSERT INTO `negocio_servicio` VALUES ('115', '2');
INSERT INTO `negocio_servicio` VALUES ('116', '2');
INSERT INTO `negocio_servicio` VALUES ('118', '2');
INSERT INTO `negocio_servicio` VALUES ('119', '2');
INSERT INTO `negocio_servicio` VALUES ('120', '2');
INSERT INTO `negocio_servicio` VALUES ('121', '2');
INSERT INTO `negocio_servicio` VALUES ('122', '2');
INSERT INTO `negocio_servicio` VALUES ('123', '2');
INSERT INTO `negocio_servicio` VALUES ('124', '2');
INSERT INTO `negocio_servicio` VALUES ('125', '2');
INSERT INTO `negocio_servicio` VALUES ('132', '2');
INSERT INTO `negocio_servicio` VALUES ('133', '2');
INSERT INTO `negocio_servicio` VALUES ('134', '2');
INSERT INTO `negocio_servicio` VALUES ('147', '2');
INSERT INTO `negocio_servicio` VALUES ('35', '3');
INSERT INTO `negocio_servicio` VALUES ('42', '3');
INSERT INTO `negocio_servicio` VALUES ('44', '3');
INSERT INTO `negocio_servicio` VALUES ('51', '3');
INSERT INTO `negocio_servicio` VALUES ('64', '3');
INSERT INTO `negocio_servicio` VALUES ('65', '3');
INSERT INTO `negocio_servicio` VALUES ('67', '3');
INSERT INTO `negocio_servicio` VALUES ('76', '3');
INSERT INTO `negocio_servicio` VALUES ('84', '3');
INSERT INTO `negocio_servicio` VALUES ('87', '3');
INSERT INTO `negocio_servicio` VALUES ('88', '3');
INSERT INTO `negocio_servicio` VALUES ('92', '3');
INSERT INTO `negocio_servicio` VALUES ('108', '3');
INSERT INTO `negocio_servicio` VALUES ('118', '3');
INSERT INTO `negocio_servicio` VALUES ('122', '3');
INSERT INTO `negocio_servicio` VALUES ('123', '3');
INSERT INTO `negocio_servicio` VALUES ('124', '3');
INSERT INTO `negocio_servicio` VALUES ('132', '3');
INSERT INTO `negocio_servicio` VALUES ('133', '3');
INSERT INTO `negocio_servicio` VALUES ('134', '3');
INSERT INTO `negocio_servicio` VALUES ('35', '4');
INSERT INTO `negocio_servicio` VALUES ('64', '4');
INSERT INTO `negocio_servicio` VALUES ('84', '4');
INSERT INTO `negocio_servicio` VALUES ('87', '4');
INSERT INTO `negocio_servicio` VALUES ('88', '4');
INSERT INTO `negocio_servicio` VALUES ('123', '4');
INSERT INTO `negocio_servicio` VALUES ('34', '5');
INSERT INTO `negocio_servicio` VALUES ('35', '5');
INSERT INTO `negocio_servicio` VALUES ('38', '5');
INSERT INTO `negocio_servicio` VALUES ('42', '5');
INSERT INTO `negocio_servicio` VALUES ('44', '5');
INSERT INTO `negocio_servicio` VALUES ('46', '5');
INSERT INTO `negocio_servicio` VALUES ('51', '5');
INSERT INTO `negocio_servicio` VALUES ('55', '5');
INSERT INTO `negocio_servicio` VALUES ('56', '5');
INSERT INTO `negocio_servicio` VALUES ('64', '5');
INSERT INTO `negocio_servicio` VALUES ('65', '5');
INSERT INTO `negocio_servicio` VALUES ('67', '5');
INSERT INTO `negocio_servicio` VALUES ('69', '5');
INSERT INTO `negocio_servicio` VALUES ('76', '5');
INSERT INTO `negocio_servicio` VALUES ('80', '5');
INSERT INTO `negocio_servicio` VALUES ('81', '5');
INSERT INTO `negocio_servicio` VALUES ('83', '5');
INSERT INTO `negocio_servicio` VALUES ('84', '5');
INSERT INTO `negocio_servicio` VALUES ('85', '5');
INSERT INTO `negocio_servicio` VALUES ('87', '5');
INSERT INTO `negocio_servicio` VALUES ('88', '5');
INSERT INTO `negocio_servicio` VALUES ('93', '5');
INSERT INTO `negocio_servicio` VALUES ('94', '5');
INSERT INTO `negocio_servicio` VALUES ('104', '5');
INSERT INTO `negocio_servicio` VALUES ('105', '5');
INSERT INTO `negocio_servicio` VALUES ('108', '5');
INSERT INTO `negocio_servicio` VALUES ('114', '5');
INSERT INTO `negocio_servicio` VALUES ('115', '5');
INSERT INTO `negocio_servicio` VALUES ('116', '5');
INSERT INTO `negocio_servicio` VALUES ('118', '5');
INSERT INTO `negocio_servicio` VALUES ('119', '5');
INSERT INTO `negocio_servicio` VALUES ('120', '5');
INSERT INTO `negocio_servicio` VALUES ('121', '5');
INSERT INTO `negocio_servicio` VALUES ('122', '5');
INSERT INTO `negocio_servicio` VALUES ('123', '5');
INSERT INTO `negocio_servicio` VALUES ('124', '5');
INSERT INTO `negocio_servicio` VALUES ('132', '5');
INSERT INTO `negocio_servicio` VALUES ('133', '5');
INSERT INTO `negocio_servicio` VALUES ('134', '5');
INSERT INTO `negocio_servicio` VALUES ('136', '5');
INSERT INTO `negocio_servicio` VALUES ('137', '5');
INSERT INTO `negocio_servicio` VALUES ('139', '5');
INSERT INTO `negocio_servicio` VALUES ('147', '5');
INSERT INTO `negocio_servicio` VALUES ('136', '6');
INSERT INTO `negocio_servicio` VALUES ('137', '6');
INSERT INTO `negocio_servicio` VALUES ('139', '6');
INSERT INTO `negocio_servicio` VALUES ('34', '7');
INSERT INTO `negocio_servicio` VALUES ('42', '7');
INSERT INTO `negocio_servicio` VALUES ('51', '7');
INSERT INTO `negocio_servicio` VALUES ('80', '7');
INSERT INTO `negocio_servicio` VALUES ('85', '7');
INSERT INTO `negocio_servicio` VALUES ('122', '7');
INSERT INTO `negocio_servicio` VALUES ('115', '8');
INSERT INTO `negocio_servicio` VALUES ('116', '9');
INSERT INTO `negocio_servicio` VALUES ('116', '10');
INSERT INTO `negocio_servicio` VALUES ('92', '11');
INSERT INTO `negocio_servicio` VALUES ('123', '12');

-- ----------------------------
-- Table structure for pais
-- ----------------------------
DROP TABLE IF EXISTS `pais`;
CREATE TABLE `pais` (
  `id_pais` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `descripcion_es` varchar(100) NOT NULL,
  `descripcion_en` varchar(100) NOT NULL,
  PRIMARY KEY (`id_pais`),
  UNIQUE KEY `id_pais` (`id_pais`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=241 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of pais
-- ----------------------------
INSERT INTO `pais` VALUES ('1', 'Afganist&aacute;n', 'Afghanistan');
INSERT INTO `pais` VALUES ('2', 'Islas Aland', 'Aland Islands');
INSERT INTO `pais` VALUES ('3', 'Albania', 'Albania');
INSERT INTO `pais` VALUES ('4', 'Alemania', 'Germany');
INSERT INTO `pais` VALUES ('5', 'Andorra', 'Andorra');
INSERT INTO `pais` VALUES ('6', 'Angola', 'Angola');
INSERT INTO `pais` VALUES ('7', 'Anguilla', 'Anguilla');
INSERT INTO `pais` VALUES ('8', 'Ant&aacute;rtida', 'Antarctica');
INSERT INTO `pais` VALUES ('9', 'Antigua y Barbuda', 'Antigua and Barbuda');
INSERT INTO `pais` VALUES ('10', 'Antillas Holandesas', 'Netherlands Antilles');
INSERT INTO `pais` VALUES ('11', 'Arabia Saud&iacute;', 'Saudi Arabia');
INSERT INTO `pais` VALUES ('12', 'Argelia', 'Algeria');
INSERT INTO `pais` VALUES ('13', 'Argentina', 'Argentina');
INSERT INTO `pais` VALUES ('14', 'Armenia', 'Armenia');
INSERT INTO `pais` VALUES ('15', 'Aruba', 'Aruba');
INSERT INTO `pais` VALUES ('16', 'Australia', 'Australia');
INSERT INTO `pais` VALUES ('17', 'Austria', 'Austria');
INSERT INTO `pais` VALUES ('18', 'Azerbaiy&aacute;n', 'Azerbaijan');
INSERT INTO `pais` VALUES ('19', 'Bahamas', 'Bahamas');
INSERT INTO `pais` VALUES ('20', 'Bahr&eacute;in', 'Bahrain');
INSERT INTO `pais` VALUES ('21', 'Bangladesh', 'Bangladesh');
INSERT INTO `pais` VALUES ('22', 'Barbados', 'Barbados');
INSERT INTO `pais` VALUES ('23', 'Bielorrusia', 'Belarus');
INSERT INTO `pais` VALUES ('24', 'B&eacute;lgica', 'Belgium');
INSERT INTO `pais` VALUES ('25', 'Belice', 'Belize');
INSERT INTO `pais` VALUES ('26', 'Benin', 'Benin');
INSERT INTO `pais` VALUES ('27', 'Bermudas', 'Bermuda');
INSERT INTO `pais` VALUES ('28', 'Bhut&aacute;n', 'Bhutan');
INSERT INTO `pais` VALUES ('29', 'Bolivia', 'Bolivia');
INSERT INTO `pais` VALUES ('30', 'Bosnia y Herzegovina', 'Bosnia and Herzegovina');
INSERT INTO `pais` VALUES ('31', 'Botsuana', 'Botswana');
INSERT INTO `pais` VALUES ('32', 'Isla Bouvet', 'Bouvet Island');
INSERT INTO `pais` VALUES ('33', 'Brasil', 'Brazil');
INSERT INTO `pais` VALUES ('34', 'Brun&eacute;i', 'Brunei Darussalam');
INSERT INTO `pais` VALUES ('35', 'Bulgaria', 'Bulgaria');
INSERT INTO `pais` VALUES ('36', 'Burkina Faso', 'Burkina Faso');
INSERT INTO `pais` VALUES ('37', 'Burundi', 'Burundi');
INSERT INTO `pais` VALUES ('38', 'Cabo Verde', 'Cape Verde');
INSERT INTO `pais` VALUES ('39', 'Islas Caim&aacute;n', 'Cayman Islands');
INSERT INTO `pais` VALUES ('40', 'Camboya', 'Cambodia');
INSERT INTO `pais` VALUES ('41', 'Camer&uacute;n', 'Cameroon');
INSERT INTO `pais` VALUES ('42', 'Canad&aacute;', 'Canada');
INSERT INTO `pais` VALUES ('43', 'Rep&uacute;blica Centroafricana', 'Central African Republic');
INSERT INTO `pais` VALUES ('44', 'Chad', 'Chad');
INSERT INTO `pais` VALUES ('45', 'Rep&uacute;blica Checa', 'Czech Republic');
INSERT INTO `pais` VALUES ('46', 'Chile', 'Chile');
INSERT INTO `pais` VALUES ('47', 'China', 'China');
INSERT INTO `pais` VALUES ('48', 'Chipre', 'Cyprus');
INSERT INTO `pais` VALUES ('49', 'Isla de Navidad', 'Christmas Island');
INSERT INTO `pais` VALUES ('50', 'Ciudad del Vaticano', 'Holy See (Vatican City State)');
INSERT INTO `pais` VALUES ('51', 'Islas Cocos', 'Cocos (Keeling) Islands');
INSERT INTO `pais` VALUES ('52', 'Colombia', 'Colombia');
INSERT INTO `pais` VALUES ('53', 'Comoras', 'Comoros');
INSERT INTO `pais` VALUES ('54', 'Rep&uacute;blica Democr&aacute;tica del Congo', 'Democratic Republic of the Congo');
INSERT INTO `pais` VALUES ('55', 'Congo', 'Congo');
INSERT INTO `pais` VALUES ('56', 'Islas Cook', 'Cook Islands');
INSERT INTO `pais` VALUES ('57', 'Corea del Norte', 'Republic of Korea');
INSERT INTO `pais` VALUES ('58', 'Corea del Sur', 'Democratic People\'s Republic of Korea');
INSERT INTO `pais` VALUES ('59', 'Costa de Marfil', 'Cote D\'\'Ivoire');
INSERT INTO `pais` VALUES ('60', 'Costa Rica', 'Costa Rica');
INSERT INTO `pais` VALUES ('61', 'Croacia', 'Croatia');
INSERT INTO `pais` VALUES ('62', 'Cuba', 'Cuba');
INSERT INTO `pais` VALUES ('63', 'Dinamarca', 'Denmark');
INSERT INTO `pais` VALUES ('64', 'Dominica', 'Dominica');
INSERT INTO `pais` VALUES ('65', 'Rep&uacute;blica Dominicana', 'Dominican Republic');
INSERT INTO `pais` VALUES ('66', 'Ecuador', 'Ecuador');
INSERT INTO `pais` VALUES ('67', 'Egipto', 'Egypt');
INSERT INTO `pais` VALUES ('68', 'El Salvador', 'El Salvador');
INSERT INTO `pais` VALUES ('69', 'Emiratos &Aacute;rabes Unidos', 'United Arab');
INSERT INTO `pais` VALUES ('70', 'Eritrea', 'Eritrea');
INSERT INTO `pais` VALUES ('71', 'Eslovaquia', 'Slovakia');
INSERT INTO `pais` VALUES ('72', 'Eslovenia', 'Slovenia');
INSERT INTO `pais` VALUES ('73', 'Espa&ntilde;a', 'Spain');
INSERT INTO `pais` VALUES ('74', 'Islas ultramarinas de Estados Unidos', 'United States Minor Outlying Islands');
INSERT INTO `pais` VALUES ('75', 'Estados Unidos', 'United States');
INSERT INTO `pais` VALUES ('76', 'Estonia', 'Estonia');
INSERT INTO `pais` VALUES ('77', 'Etiop&iacute;a', 'Ethiopia');
INSERT INTO `pais` VALUES ('78', 'Islas Feroe', 'Faroe Islands');
INSERT INTO `pais` VALUES ('79', 'Filipinas', 'Philippines');
INSERT INTO `pais` VALUES ('80', 'Finlandia', 'Finland');
INSERT INTO `pais` VALUES ('81', 'Fiyi', 'Fiji');
INSERT INTO `pais` VALUES ('82', 'Francia', 'France');
INSERT INTO `pais` VALUES ('83', 'Gab&oacute;n', 'Gabon');
INSERT INTO `pais` VALUES ('84', 'Gambia', 'Gambia');
INSERT INTO `pais` VALUES ('85', 'Georgia', 'Georgia');
INSERT INTO `pais` VALUES ('86', 'Islas Georgias del Sur y Sandwich del Sur', 'South Georgia and the South Sandwich Islands');
INSERT INTO `pais` VALUES ('87', 'Ghana', 'Ghana');
INSERT INTO `pais` VALUES ('88', 'Gibraltar', 'Gibraltar');
INSERT INTO `pais` VALUES ('89', 'Granada', 'Grenada');
INSERT INTO `pais` VALUES ('90', 'Grecia', 'Greece');
INSERT INTO `pais` VALUES ('91', 'Groenlandia', 'Greenland');
INSERT INTO `pais` VALUES ('92', 'Guadalupe', 'Guadeloupe');
INSERT INTO `pais` VALUES ('93', 'Guam', 'Guam');
INSERT INTO `pais` VALUES ('94', 'Guatemala', 'Guatemala');
INSERT INTO `pais` VALUES ('95', 'Guayana Francesa', 'French Guiana');
INSERT INTO `pais` VALUES ('96', 'Guinea', 'Guinea');
INSERT INTO `pais` VALUES ('97', 'Guinea Ecuatorial', 'Equatorial Guinea');
INSERT INTO `pais` VALUES ('98', 'Guinea-Bissau', 'Guinea-Bissau');
INSERT INTO `pais` VALUES ('99', 'Guyana', 'Guyana');
INSERT INTO `pais` VALUES ('100', 'Hait&iacute;', 'Haiti');
INSERT INTO `pais` VALUES ('101', 'Islas Heard y McDonald', 'Heard Island and Mcdonald Islands');
INSERT INTO `pais` VALUES ('102', 'Honduras', 'Honduras');
INSERT INTO `pais` VALUES ('103', 'Hong Kong', 'Hong Kong');
INSERT INTO `pais` VALUES ('104', 'Hungr&iacute;a', 'Hungary');
INSERT INTO `pais` VALUES ('105', 'India', 'India');
INSERT INTO `pais` VALUES ('106', 'Indonesia', 'Indonesia');
INSERT INTO `pais` VALUES ('107', 'Ir&aacute;n', 'Islamic Republic of Iran');
INSERT INTO `pais` VALUES ('108', 'Iraq', 'Iraq');
INSERT INTO `pais` VALUES ('109', 'Irlanda', 'Ireland');
INSERT INTO `pais` VALUES ('110', 'Islandia', 'Iceland');
INSERT INTO `pais` VALUES ('111', 'Israel', 'Israel');
INSERT INTO `pais` VALUES ('112', 'Italia', 'Italy');
INSERT INTO `pais` VALUES ('113', 'Jamaica', 'Jamaica');
INSERT INTO `pais` VALUES ('114', 'Jap&oacute;n', 'Japan');
INSERT INTO `pais` VALUES ('115', 'Jordania', 'Jordan');
INSERT INTO `pais` VALUES ('116', 'Kazajst&aacute;n', 'Kazakhstan');
INSERT INTO `pais` VALUES ('117', 'Kenia', 'Kenya');
INSERT INTO `pais` VALUES ('118', 'Kirguist&aacute;n', 'Kyrgyzstan');
INSERT INTO `pais` VALUES ('119', 'Kiribati', 'Kiribati');
INSERT INTO `pais` VALUES ('120', 'Kuwait', 'Kuwait');
INSERT INTO `pais` VALUES ('121', 'Laos', 'Lao People\'s Democratic Republic');
INSERT INTO `pais` VALUES ('122', 'Lesotho', 'Lesotho');
INSERT INTO `pais` VALUES ('123', 'Letonia', 'Latvia');
INSERT INTO `pais` VALUES ('124', 'L&iacute;bano', 'Lebanon');
INSERT INTO `pais` VALUES ('125', 'Liberia', 'Liberia');
INSERT INTO `pais` VALUES ('126', 'Libia', 'Libyan Arab Jamahiriya');
INSERT INTO `pais` VALUES ('127', 'Liechtenstein', 'Liechtenstein');
INSERT INTO `pais` VALUES ('128', 'Lituania', 'Lithuania');
INSERT INTO `pais` VALUES ('129', 'Luxemburgo', 'Luxembourg');
INSERT INTO `pais` VALUES ('130', 'Macao', 'Macao');
INSERT INTO `pais` VALUES ('131', 'ARY Macedonia', 'Former Yugoslav Republic of Macedonia');
INSERT INTO `pais` VALUES ('132', 'Madagascar', 'Madagascar');
INSERT INTO `pais` VALUES ('133', 'Malasia', 'Malaysia');
INSERT INTO `pais` VALUES ('134', 'Malawi', 'Malawi');
INSERT INTO `pais` VALUES ('135', 'Maldivas', 'Maldives');
INSERT INTO `pais` VALUES ('136', 'Mal&iacute;', 'Mali');
INSERT INTO `pais` VALUES ('137', 'Malta', 'Malta');
INSERT INTO `pais` VALUES ('138', 'Islas Malvinas', 'Falkland Islands (Malvinas)');
INSERT INTO `pais` VALUES ('139', 'Islas Marianas del Norte', 'Northern Mariana Islands');
INSERT INTO `pais` VALUES ('140', 'Marruecos', 'Morocco');
INSERT INTO `pais` VALUES ('141', 'Islas Marshall', 'Marshall Islands');
INSERT INTO `pais` VALUES ('142', 'Martinica', 'Martinique');
INSERT INTO `pais` VALUES ('143', 'Mauricio', 'Mauritius');
INSERT INTO `pais` VALUES ('144', 'Mauritania', 'Mauritania');
INSERT INTO `pais` VALUES ('145', 'Mayotte', 'Mayotte');
INSERT INTO `pais` VALUES ('146', 'M&eacute;xico', 'Mexico');
INSERT INTO `pais` VALUES ('147', 'Micronesia', 'Federated States of Micronesia');
INSERT INTO `pais` VALUES ('148', 'Moldavia', 'Republic of Moldova');
INSERT INTO `pais` VALUES ('149', 'M&oacute;naco', 'Monaco');
INSERT INTO `pais` VALUES ('150', 'Mongolia', 'Mongolia');
INSERT INTO `pais` VALUES ('151', 'Montserrat', 'Montserrat');
INSERT INTO `pais` VALUES ('152', 'Mozambique', 'Mozambique');
INSERT INTO `pais` VALUES ('153', 'Myanmar', 'Myanmar');
INSERT INTO `pais` VALUES ('154', 'Namibia', 'Namibia');
INSERT INTO `pais` VALUES ('155', 'Nauru', 'Nauru');
INSERT INTO `pais` VALUES ('156', 'Nepal', 'Nepal');
INSERT INTO `pais` VALUES ('157', 'Nicaragua', 'Nicaragua');
INSERT INTO `pais` VALUES ('158', 'N&iacute;ger', 'Niger');
INSERT INTO `pais` VALUES ('159', 'Nigeria', 'Nigeria');
INSERT INTO `pais` VALUES ('160', 'Niue', 'Niue');
INSERT INTO `pais` VALUES ('161', 'Isla Norfolk', 'Norfolk Island');
INSERT INTO `pais` VALUES ('162', 'Noruega', 'Norway');
INSERT INTO `pais` VALUES ('163', 'Nueva Caledonia', 'New Caledonia');
INSERT INTO `pais` VALUES ('164', 'Nueva Zelanda', 'New Zealand');
INSERT INTO `pais` VALUES ('165', 'Om&aacute;n', 'Oman');
INSERT INTO `pais` VALUES ('166', 'Pa&iacute;ses Bajos', 'Netherlands');
INSERT INTO `pais` VALUES ('167', 'Pakist&aacute;n', 'Pakistan');
INSERT INTO `pais` VALUES ('168', 'Palau', 'Palau');
INSERT INTO `pais` VALUES ('169', 'Palestina', 'Palestinian');
INSERT INTO `pais` VALUES ('170', 'Panam&aacute;', 'Panama');
INSERT INTO `pais` VALUES ('171', 'Pap&uacute;a Nueva Guinea', 'Papua New Guinea');
INSERT INTO `pais` VALUES ('172', 'Paraguay', 'Paraguay');
INSERT INTO `pais` VALUES ('173', 'Per&uacute;', 'Peru');
INSERT INTO `pais` VALUES ('174', 'Islas Pitcairn', 'Pitcairn');
INSERT INTO `pais` VALUES ('175', 'Polinesia Francesa', 'French Polynesia');
INSERT INTO `pais` VALUES ('176', 'Polonia', 'Poland');
INSERT INTO `pais` VALUES ('177', 'Portugal', 'Portugal');
INSERT INTO `pais` VALUES ('178', 'Puerto Rico', 'Puerto Rico');
INSERT INTO `pais` VALUES ('179', 'Qatar', 'Qatar');
INSERT INTO `pais` VALUES ('180', 'Reino Unido', 'United Kingdom');
INSERT INTO `pais` VALUES ('181', 'Reuni&oacute;n', 'Reunion');
INSERT INTO `pais` VALUES ('182', 'Ruanda', 'Rwanda');
INSERT INTO `pais` VALUES ('183', 'Rumania', 'Romania');
INSERT INTO `pais` VALUES ('184', 'Rusia', 'Russian Federation');
INSERT INTO `pais` VALUES ('185', 'Sahara Occidental', 'Western Sahara');
INSERT INTO `pais` VALUES ('186', 'Islas Salom&oacute;n', 'Solomon Islands');
INSERT INTO `pais` VALUES ('187', 'Samoa', 'Samoa');
INSERT INTO `pais` VALUES ('188', 'Samoa Americana', 'American Samoa');
INSERT INTO `pais` VALUES ('189', 'San Crist&oacute;bal y Nevis', 'Saint Kitts and Nevis');
INSERT INTO `pais` VALUES ('190', 'San Marino', 'San Marino');
INSERT INTO `pais` VALUES ('191', 'San Pedro y Miquel&oacute;n', 'Saint Pierre and Miquelon');
INSERT INTO `pais` VALUES ('192', 'San Vicente y las Granadinas', 'Saint Vincent and the Grenadines');
INSERT INTO `pais` VALUES ('193', 'Santa Helena', 'Saint Helena');
INSERT INTO `pais` VALUES ('194', 'Santa Luc&iacute;a', 'Saint Lucia');
INSERT INTO `pais` VALUES ('195', 'Santo Tom&eacute; y Pr&iacute;ncipe', 'Sao Tome and Principe');
INSERT INTO `pais` VALUES ('196', 'Senegal', 'Senegal');
INSERT INTO `pais` VALUES ('197', 'Serbia y Montenegro', 'Serbia and Montenegro');
INSERT INTO `pais` VALUES ('198', 'Seychelles', 'Seychelles');
INSERT INTO `pais` VALUES ('199', 'Sierra Leona', 'Sierra Leone');
INSERT INTO `pais` VALUES ('200', 'Singapur', 'Singapore');
INSERT INTO `pais` VALUES ('201', 'Siria', 'Syrian Arab Republic');
INSERT INTO `pais` VALUES ('202', 'Somalia', 'Somalia');
INSERT INTO `pais` VALUES ('203', 'Sri Lanka', 'Sri Lanka');
INSERT INTO `pais` VALUES ('204', 'Suazilandia', 'Swaziland');
INSERT INTO `pais` VALUES ('205', 'Sud&aacute;frica', 'South Africa');
INSERT INTO `pais` VALUES ('206', 'Sud&aacute;n', 'Sudan');
INSERT INTO `pais` VALUES ('207', 'Suecia', 'Sweden');
INSERT INTO `pais` VALUES ('208', 'Suiza', 'Switzerland');
INSERT INTO `pais` VALUES ('209', 'Surinam', 'Suriname');
INSERT INTO `pais` VALUES ('210', 'Svalbard y Jan Mayen', 'Svalbard and Jan Mayen');
INSERT INTO `pais` VALUES ('211', 'Tailandia', 'Thailand');
INSERT INTO `pais` VALUES ('212', 'Taiw&aacute;n', 'Taiwan');
INSERT INTO `pais` VALUES ('213', 'Tanzania', 'United Republic of Tanzania');
INSERT INTO `pais` VALUES ('214', 'Tayikist&aacute;n', 'Tajikistan');
INSERT INTO `pais` VALUES ('215', 'Territorio Brit&aacute;nico del Oc&eacute;ano &Iacute;ndico', 'British Indian Ocean Territory');
INSERT INTO `pais` VALUES ('216', 'Territorios Australes Franceses', 'French Southern Territories');
INSERT INTO `pais` VALUES ('217', 'Timor Oriental', 'Timor-Leste');
INSERT INTO `pais` VALUES ('218', 'Togo', 'Togo');
INSERT INTO `pais` VALUES ('219', 'Tokelau', 'Tokelau');
INSERT INTO `pais` VALUES ('220', 'Tonga', 'Tonga');
INSERT INTO `pais` VALUES ('221', 'Trinidad y Tobago', 'Trinidad and Tobago');
INSERT INTO `pais` VALUES ('222', 'T&uacute;nez', 'Tunisia');
INSERT INTO `pais` VALUES ('223', 'Islas Turcas y Caicos', 'Turks and Caicos Islands');
INSERT INTO `pais` VALUES ('224', 'Turkmenist&aacute;n', 'Turkmenistan');
INSERT INTO `pais` VALUES ('225', 'Turqu&iacute;a', 'Turkey');
INSERT INTO `pais` VALUES ('226', 'Tuvalu', 'Tuvalu');
INSERT INTO `pais` VALUES ('227', 'Ucrania', 'Ukraine');
INSERT INTO `pais` VALUES ('228', 'Uganda', 'Uganda');
INSERT INTO `pais` VALUES ('229', 'Uruguay', 'Uruguay');
INSERT INTO `pais` VALUES ('230', 'Uzbekist&aacute;n', 'Uzbekistan');
INSERT INTO `pais` VALUES ('231', 'Vanuatu', 'Vanuatu');
INSERT INTO `pais` VALUES ('232', 'Venezuela', 'Venezuela');
INSERT INTO `pais` VALUES ('233', 'Vietnam', 'Viet Nam');
INSERT INTO `pais` VALUES ('234', 'Islas V&iacute;rgenes Brit&aacute;nicas', 'Virgin Islands British');
INSERT INTO `pais` VALUES ('235', 'Islas V&iacute;rgenes de los Estados Unidos', 'Virgin Islands, U.S');
INSERT INTO `pais` VALUES ('236', 'Wallis y Futuna', 'Wallis and Futuna');
INSERT INTO `pais` VALUES ('237', 'Yemen', 'Yemen');
INSERT INTO `pais` VALUES ('238', 'Yibuti', 'Djibouti');
INSERT INTO `pais` VALUES ('239', 'Zambia', 'Zambia');
INSERT INTO `pais` VALUES ('240', 'Zimbabue', 'Zimbabwe');

-- ----------------------------
-- Table structure for provincia
-- ----------------------------
DROP TABLE IF EXISTS `provincia`;
CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_provincia` varchar(45) NOT NULL,
  PRIMARY KEY (`id_provincia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of provincia
-- ----------------------------
INSERT INTO `provincia` VALUES ('1', 'La Habana');

-- ----------------------------
-- Table structure for reservacion
-- ----------------------------
DROP TABLE IF EXISTS `reservacion`;
CREATE TABLE `reservacion` (
  `id_reservacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_negocio` int(11) NOT NULL,
  `nombre_completo` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `id_pais` int(11) NOT NULL,
  `fecha_entrada` varchar(100) NOT NULL,
  `fecha_salida` varchar(100) NOT NULL,
  `cant_viajeros` int(11) NOT NULL,
  `cant_habitaciones` int(11) NOT NULL,
  `hora_llegada` varchar(45) NOT NULL,
  `descripcion_reservacion` varchar(45) NOT NULL,
  PRIMARY KEY (`id_reservacion`),
  KEY `fk_reservacion_negocio1` (`id_negocio`) USING BTREE,
  CONSTRAINT `reservacion_ibfk_1` FOREIGN KEY (`id_negocio`) REFERENCES `negocio` (`id_negocio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reservacion
-- ----------------------------
INSERT INTO `reservacion` VALUES ('3', '35', 'Javier PÃ©rez', 'jperezzuferri@gmail.com', '13', '07-03-2016', '07-12-2016', '2', '1', '01:00 PM', 'nm');
INSERT INTO `reservacion` VALUES ('4', '46', 'Rodrigo Dominguez', 'rodrigo@yahoo.es', '13', '07-04-2016', '07-19-2016', '2', '1', '12:30 AM', 'Hola !!!');
INSERT INTO `reservacion` VALUES ('5', '34', 'Ernesto Dominguez', 'erenesto@gmail.com', '62', '07-12-2016', '07-19-2016', '1', '1', '01:00 PM', 'quietro jevitas');
INSERT INTO `reservacion` VALUES ('6', '34', 'Victor Lolo', 'victor@gmail.com', '62', '03-26-2016', '03-29-2016', '2', '1', '03:00 PM', 'aaaaa');
INSERT INTO `reservacion` VALUES ('7', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('8', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('9', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('10', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('11', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('12', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('13', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('14', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('15', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('16', '35', 'Lester Castillo', 'lester.castillo@gmail.com', '62', '08-26-2016', '08-27-2016', '2', '1', '01:00 AM', 'Proban2');
INSERT INTO `reservacion` VALUES ('17', '118', 'vitiman', 'vitimangs@gmail.com', '4', '08-27-2016', '08-30-2016', '2', '1', '01:00 AM', 'candela');
INSERT INTO `reservacion` VALUES ('18', '118', 'vitiman', 'vitimangs@gmail.com', '4', '08-27-2016', '08-30-2016', '2', '1', '01:00 AM', 'candela');
INSERT INTO `reservacion` VALUES ('19', '118', 'vitiman', 'vitimangs@gmail.com', '4', '08-27-2016', '08-30-2016', '2', '1', '01:00 AM', 'candela');
INSERT INTO `reservacion` VALUES ('20', '118', 'vitiman', 'vitimangs@gmail.com', '4', '08-27-2016', '08-30-2016', '2', '1', '01:00 AM', 'candela');
INSERT INTO `reservacion` VALUES ('21', '118', 'vitiman', 'vitimangs@gmail.com', '4', '08-27-2016', '08-30-2016', '2', '1', '01:00 AM', 'candela');
INSERT INTO `reservacion` VALUES ('22', '118', 'Hevhdughd', 'Hjugggg@ghyd.vh', '3', '08-31-2016', '09-01-2016', '6', '3', '11:00 PM', '');
INSERT INTO `reservacion` VALUES ('23', '34', 'adsl', 'vitiman@gmail.com', '7', '08-28-2016', '08-31-2016', '2', '2', '01:00 AM', 'lalalalallalal');
INSERT INTO `reservacion` VALUES ('24', '34', 'Victor', 'vitimangs@gmail.com', '10', '08-28-2016', '09-14-2016', '1', '1', '02:00 AM', 'kl');
INSERT INTO `reservacion` VALUES ('25', '34', 'Victor', 'vitimangs@gmail.com', '10', '08-28-2016', '09-14-2016', '1', '1', '02:00 AM', 'kl');
INSERT INTO `reservacion` VALUES ('26', '126', 'Victor garcia', 'vitico06@yahoo.com ', '180', '09-04-2016', '09-09-2016', '2', '1', '11:00 PM', '');
INSERT INTO `reservacion` VALUES ('27', '81', 'Nueva de vic', 'vitiman@nauta.cu', '9', '08-27-2016', '08-30-2016', '2', '2', '02:00 AM', 'probando varios correos');
INSERT INTO `reservacion` VALUES ('29', '34', 'xvxcv', 'sdfsdf@locahost.com', '19', '08-30-2016', '09-08-2016', '4', '1', '01:00 AM', '');
INSERT INTO `reservacion` VALUES ('30', '81', 'asdf', 'asdf@asd.com', '3', '08-29-2016', '08-30-2016', '1', '1', '01:00 AM', 'asd');
INSERT INTO `reservacion` VALUES ('31', '38', 'Victpr garcia', 'vicmanu2001@aol.com ', '180', '09-06-2016', '09-14-2016', '2', '1', '07:00 PM', '');
INSERT INTO `reservacion` VALUES ('32', '35', 'glenn', 'vicmanu2001@aol.com ', '162', '10-12-2016', '10-18-2016', '4', '2', '12:00 AM', 'Parece muy bueno');

-- ----------------------------
-- Table structure for rol
-- ----------------------------
DROP TABLE IF EXISTS `rol`;
CREATE TABLE `rol` (
  `id_rol` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_rol` varchar(45) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rol
-- ----------------------------

-- ----------------------------
-- Table structure for servicios
-- ----------------------------
DROP TABLE IF EXISTS `servicios`;
CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description_es` varchar(255) DEFAULT NULL,
  `description_en` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of servicios
-- ----------------------------
INSERT INTO `servicios` VALUES ('0', '', null, null);
INSERT INTO `servicios` VALUES ('1', 'Taxi', 'Taxi', 'Taxi');
INSERT INTO `servicios` VALUES ('2', 'Desayuno', 'Desayuno', 'Breakfast');
INSERT INTO `servicios` VALUES ('3', 'Comida', 'Comida', 'Dinner');
INSERT INTO `servicios` VALUES ('4', 'Almuerzo', 'Almuerzo', 'Lunch');
INSERT INTO `servicios` VALUES ('5', 'Lavanderia', 'Lavanderia', 'Loundry');
INSERT INTO `servicios` VALUES ('6', 'Traductor', 'Traductor', 'Traslator');
INSERT INTO `servicios` VALUES ('7', 'Planchado', 'Planchado', 'Iron');
INSERT INTO `servicios` VALUES ('8', 'Limpieza de Habitacion', 'Limpieza de Habitacion', 'Personal Room Attention');
INSERT INTO `servicios` VALUES ('9', 'Caja fuerte', 'Caja fuerte', 'Save Box');
INSERT INTO `servicios` VALUES ('10', 'Camas o cunas adicionales', 'Camas o cunas adicionales', 'Beds');
INSERT INTO `servicios` VALUES ('11', 'Gestion de alquiler', 'Gestion de alquiler para otros lugares del pais', 'Rent Management for other rentals in the country');
INSERT INTO `servicios` VALUES ('12', 'Religioso', 'Religioso', null);

-- ----------------------------
-- Table structure for tipo_renta
-- ----------------------------
DROP TABLE IF EXISTS `tipo_renta`;
CREATE TABLE `tipo_renta` (
  `id_tipo_renta` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_tipo_es` varchar(45) NOT NULL,
  `nombre_tipo_en` varchar(45) NOT NULL,
  PRIMARY KEY (`id_tipo_renta`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tipo_renta
-- ----------------------------
INSERT INTO `tipo_renta` VALUES ('1', 'Casa', 'House');
INSERT INTO `tipo_renta` VALUES ('2', 'Apartamento', 'Apartment');
INSERT INTO `tipo_renta` VALUES ('3', 'Habitaciones', 'Rooms');

-- ----------------------------
-- Table structure for usuario
-- ----------------------------
DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `telefono_casa` int(11) NOT NULL,
  `telefono_movil` int(11) DEFAULT NULL,
  `contrasenna` varchar(500) NOT NULL,
  `bloqueado` tinyint(4) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of usuario
-- ----------------------------
INSERT INTO `usuario` VALUES ('34', 'abarbie', 'Acela', 'Barbie', 'abarbie@infomed.sld.cu', '8337270', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('35', 'abello', 'Albita', 'Bello', 'albitadeguanabo@gmail.com', '7963223', '52461479', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('38', 'mdopico', 'Miguel', 'Dopico', 'migueldopico@nauta.cu', '8743321', '58173402', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('42', 'rlazo', 'Roberto', 'Lazo', 'isar@isla.caribeysol.net', '8735343', '52420174', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('44', 'mrodriguez', 'Madelyn', 'Rodriguez', 'mileidysmc@infomed.sld.cu', '8677039', '52849360', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('46', 'calonso', 'Carolin', 'Alonso', 'carolin@nauta.cu', '8606640', '52911597', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('51', 'cristyandpepe', 'Pepe', 'Hernandez', 'cristyandpepe@gmail.com', '8322232', '52844672', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('55', 'mhernandez', 'Marlene', 'Hernandez', 'rybak@enet.cu', '2024769', '52923336', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('56', 'mhernandez2', 'Marlene', 'Hernandez', 'rybak@enet.cu', '2024769', '52923336', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('64', 'cagarcia', 'Carlos', 'Garcia', 'doblackjack@gmail.com', '7962036', '52986684', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('65', 'nruiz', 'Nancy', 'Ruiz', 'barviba@infomed.sld.cu', '7962794', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('67', 'nruiz2', 'Nancy', 'Ruiz', 'barviba@infomed.sld.cu', '7962794', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('69', 'jechevarria', 'Janet', 'Echevarria', 'albitadeguanabo@gmail.com', '7990645', '53327883', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('74', 'nlopez', 'Nora', 'Lopez', '', '8337649', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('75', 'nlopez2', 'Nora', 'Lopez', '', '8337649', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('76', 'hpaizan', 'Hilda', 'Paizan', '', '8321138', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('79', 'igarcia', 'Idalmis', 'Garcia', '', '8328643', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('80', 'tpreval', 'Tomasa', 'Preval', '', '8331266', '52666419', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('81', 'mreyes', 'Maria', 'Reyes', '', '2035059', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('83', 'lrojas', 'Leonel', 'Rojas', '', '8672150', '54290255', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('84', 'cmrodriguez', 'Carlos', 'Rodriguez', '', '7964502', '53160995', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('85', 'rmarquez', 'Roberto', 'Marquez', 'ahicisnero97@gmail.com', '8678838', '53343183', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('87', 'erodriguez', 'Elaine', 'Rodriguez', '', '7990508', '52837372', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('88', 'dsantos', 'Daniel', 'Santos', '', '7964031', '53508516', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('91', 'bgonzalez', 'Bernardo', 'Gonzalez', '', '7963609', '53239818', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('92', 'jfleon', 'Jesus', 'Fernandez Leon', 'jesusfernandez@infomed.sld.cu', '8790317', '54019433', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('93', 'itecla', 'Irelia', 'Tecla', '', '7962293', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('94', 'vherrera', 'Valdomero', 'Herrera', 'marymon@infomed.sld.cu', '7962242', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('95', 'psosa', 'Pedro Felix', 'Sosa', '', '7966785', '5268134', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('104', 'angela', 'Angela', 'Lopez', '', '7203852', '58240451', '$2a$07$2K5601JJ3878H.IFFCK4DuaLzPlAfJ/D9g5F2gkBgEfYPHGBttMAa', '0');
INSERT INTO `usuario` VALUES ('105', 'irmisia', 'Irmisia', 'Ongora', '', '8622891', '53322396', '$2a$07$99H/4B1I.08D06J4J/5AK./QlFsWojt5rFNG7DwBgXatd0QzruDs2', '0');
INSERT INTO `usuario` VALUES ('106', 'lourde', 'Lourde', 'Vega', '', '7964540', '0', '$2a$07$D5H/7CDJCEBB2C7KCCC03.XTtqxj2ISgMcqDXYIRU3jL66Cz3eFQi', '0');
INSERT INTO `usuario` VALUES ('107', 'lazaro', 'Lazaro', 'Toviejo', '', '7777777', '58476812', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('108', 'CasaLula', 'Aurora', 'Govano', '', '8638651', '52916533', '$2a$07$/EB1D9.KDAIJ/G81KBC56..YdxPbItxMPeaJmTG1/Pt60iJYeWzJe', '0');
INSERT INTO `usuario` VALUES ('111', 'Marilin', 'Marilin', 'Rosales', '', '7966541', '53265476', '$2a$07$JE5H1BB32A5.52FKA2EA/utvIfFJuBajoZAfvchFlRswR9x6Aef8O', '0');
INSERT INTO `usuario` VALUES ('116', 'silvia', 'Silvia', 'Menendez', 'silviamc2015@nauta.cu', '2038281', '52636607', '$2a$07$CKE.6DD.95DE/2HK5E84K.TV8DuwCR3NGUEoBFvyUxeDKxeHBQ9PO', '0');
INSERT INTO `usuario` VALUES ('117', 'noelbia', 'Noelbia', 'Lorenzo', '', '2034766', '0', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('118', 'maritsa23yc', 'Maritsa', 'Chayuuoux', 'verdenatural23@nauta.cu', '8302348', '53060031', '$2a$07$550E400G764K9G6598B90.Dg/E3.ndJRlPCe74SfIZN9IdkULs2LS', '0');
INSERT INTO `usuario` VALUES ('119', 'Onelia', 'Onelia', 'Ortega', '', '7964087', '52759183', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('120', 'mariar', 'Maria', 'Rodriguez', 'mechy.yury@nauta.cu', '7963404', '58277553', '$2a$07$F8.3H3IDB8.G./BD7E227uvzWRmLLd9QmekyuRlexsJBZs.w81RhW', '0');
INSERT INTO `usuario` VALUES ('121', 'OneliaII', 'Onelia', 'orte', '', '7964087', '52759183', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('122', 'eldita', 'Elda', 'Maria', '', '8633412', '52769761', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('123', 'idania', 'Denia', 'Gell', '', '8669106', '52388567', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('124', 'antero', 'Idalmis', 'Garcia', '', '8328643', '0', '$2a$07$ADJ4I1K19G8BBCB9D8BE9uAbbtJ1cfyEzmLRumKoJUMwLUHgQza0K', '0');
INSERT INTO `usuario` VALUES ('125', 'areli', 'Areli', 'Maite', 'echuadde@nauta.cu', '2090141', '52013000', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('126', 'irene', 'Irene', 'Vital', '', '8648253', '53848493', '$2a$07$AKGKGH8/BB4K401GI.I4B.P/RGHP8LGtOQgDW.iZU3XxFvf6V/Ndy', '0');
INSERT INTO `usuario` VALUES ('127', 'lazaroc', 'Lazaro', 'Cespedez', '', '8634280', '53322067', '$2a$07$K6B0E717.00913602H4.J.P/6bAQnr3H6XjZwdMObOqO8rOTSaZ6e', '0');
INSERT INTO `usuario` VALUES ('128', 'carmen', 'Carmelina', 'Escribano', 'olivia83@nauta.cu', '8635697', '52492610', '$2a$07$/A8H0077/158D.K3668GK.duvEPbWq1qOyPu5iaoTZIXwKKkv6kbK', '0');
INSERT INTO `usuario` VALUES ('136', 'eduardo', 'Eduardo', 'Salas', 'eduardo.salas@nauta.cu', '78317728', '58697468', '$2a$07$E.AI59CF/78C18E987FFGukI5nkgbOajXT24BaxoUTOwcofYun3MK', '0');
INSERT INTO `usuario` VALUES ('137', 'caridad', 'Caridad', 'Dominguez', 'carydon@nauta.cu', '78305189', '52771264', '$2a$07$4.7G9.1C8.73JD4G7BK0Fu4GVeMYj8GJlwEd2ynVLrmti7gLrgFs2', '0');
INSERT INTO `usuario` VALUES ('139', 'vicente', 'Vicente', 'Barreneche', 'vistamar46805@gmail.com', '77966543', '52539544', '$2a$07$73DEHAC/KCJK3J3/AEI88u1BdCmrdUXVDA9J1XSYZXYLNB0iC/w6a', '0');
INSERT INTO `usuario` VALUES ('141', 'enrique', 'Enrique', 'Suarez', 'gsuarez@nauta.cu', '77963814', '52643116', '$2a$07$2D201H2/94.3GE1CF8C/C.rDozXu2MQy2kL18/4dYAAMhDRtBlBhW', '0');
INSERT INTO `usuario` VALUES ('142', 'enrique2', 'Enrique', 'Suarez', 'gsuarez@nauta.ccu', '77963814', '52643116', '$2a$07$1IAG6./F46JBK/AB2J8DEufyve9320OtHC/sOFF7PyOU0jiQRCW9G', '0');
INSERT INTO `usuario` VALUES ('144', 'enrique3', 'Enrique', 'Suarez', 'gsuarez@nauta.cu', '77963814', '52643116', '$2a$07$JGIJ1078AGGC29G/FEFI/.YHfZSpkJQDP2AHKZt1pOI0g6ueW4VO6', '0');
INSERT INTO `usuario` VALUES ('145', 'cagarcia1', 'CarlosA', 'GarciaAlonso', 'doblajck@gmail.com', '7962036', '52986684', '$2a$07$1.C/3IA5D9.9JG3/80G7IuvZb8qg4u1PegZ/wCj189wdZMwLTH4xm', '0');
INSERT INTO `usuario` VALUES ('146', 'chucho', 'Chucho', 'July', 'juliaefp@infomed.sld.cu', '77967365', '52494798', '$2a$07$8./HJ0G.JH/JHK1/650/4unURMKseD3jIpIlmpNGX/jVABn6nrBGu', '0');
INSERT INTO `usuario` VALUES ('148', 'sergio', 'Sergio', 'Perez', 'casapg@nauta.com', '76406419', '52816271', '$2a$07$E8/A3/J7HJCK92AK51A0F.vTKiC3fdDdiEBji37rCaXDgV5wy/.86', '0');
INSERT INTO `usuario` VALUES ('150', 'robert', 'Roberto', 'Cruz', 'carydon@nauta.cu', '78305189', '52771264', '$2a$07$206G117E96AH34HI14.KE.37uAu5ne4X9coWuQbBhX/nCa0aRUquW', '0');

-- ----------------------------
-- Table structure for zona
-- ----------------------------
DROP TABLE IF EXISTS `zona`;
CREATE TABLE `zona` (
  `id_zona` int(11) NOT NULL AUTO_INCREMENT,
  `id_municipio` int(11) NOT NULL,
  `nombre_zona` varchar(45) NOT NULL,
  PRIMARY KEY (`id_zona`),
  KEY `fk_zona_municipio1` (`id_municipio`) USING BTREE,
  CONSTRAINT `zona_ibfk_1` FOREIGN KEY (`id_municipio`) REFERENCES `municipio` (`id_municipio`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of zona
-- ----------------------------
INSERT INTO `zona` VALUES ('1', '1', 'Poey');
INSERT INTO `zona` VALUES ('2', '1', 'Santa Amalia');
INSERT INTO `zona` VALUES ('3', '1', 'Mantilla');
INSERT INTO `zona` VALUES ('4', '1', 'La Palma');
INSERT INTO `zona` VALUES ('5', '1', 'V&iacute;bora Park');
INSERT INTO `zona` VALUES ('6', '1', 'Los Pinos');
INSERT INTO `zona` VALUES ('7', '1', 'Managua');
INSERT INTO `zona` VALUES ('8', '1', 'Calvario');
INSERT INTO `zona` VALUES ('9', '1', 'G&uuml;inera');
INSERT INTO `zona` VALUES ('10', '1', 'El&eacute;ctrico');
INSERT INTO `zona` VALUES ('11', '1', 'P&aacute;rraga');
INSERT INTO `zona` VALUES ('12', '2', 'Santiago de las Vegas');
INSERT INTO `zona` VALUES ('13', '2', 'Rancho Boyeros');
INSERT INTO `zona` VALUES ('14', '2', 'Calabazar');
INSERT INTO `zona` VALUES ('15', '2', 'Abel Santmar&iacute;a');
INSERT INTO `zona` VALUES ('16', '2', 'Fontanar');
INSERT INTO `zona` VALUES ('17', '2', 'Wajay');
INSERT INTO `zona` VALUES ('18', '2', 'Altahabana');
INSERT INTO `zona` VALUES ('19', '2', 'Capdevila');
INSERT INTO `zona` VALUES ('20', '2', 'Aldab&oacute;');
INSERT INTO `zona` VALUES ('21', '3', 'Cayo Hueso');
INSERT INTO `zona` VALUES ('22', '3', 'Dragones (Barrio Chino)');
INSERT INTO `zona` VALUES ('23', '3', 'Col&oacute;n');
INSERT INTO `zona` VALUES ('24', '3', 'Los Sitios');
INSERT INTO `zona` VALUES ('25', '3', 'Pueblo Nuevo');
INSERT INTO `zona` VALUES ('26', '4', 'El Cerro');
INSERT INTO `zona` VALUES ('27', '4', 'Casino Deportivo');
INSERT INTO `zona` VALUES ('28', '4', 'Las Ca&ntilde;as');
INSERT INTO `zona` VALUES ('29', '4', 'Palatino');
INSERT INTO `zona` VALUES ('30', '4', 'El Canal');
INSERT INTO `zona` VALUES ('31', '5', 'Santa Mar&iacute;a del Rosario');
INSERT INTO `zona` VALUES ('32', '5', 'Cotorro');
INSERT INTO `zona` VALUES ('33', '5', 'Cuatro Caminos');
INSERT INTO `zona` VALUES ('34', '5', 'Alberro');
INSERT INTO `zona` VALUES ('35', '6', 'V&iacute;bora');
INSERT INTO `zona` VALUES ('36', '6', 'Santos Su&aacute;rez');
INSERT INTO `zona` VALUES ('37', '6', 'Lawton');
INSERT INTO `zona` VALUES ('38', '6', 'Luyan&oacute;');
INSERT INTO `zona` VALUES ('39', '6', 'Sevillano');
INSERT INTO `zona` VALUES ('40', '6', 'Vista Alegre');
INSERT INTO `zona` VALUES ('41', '6', 'Tamarindo');
INSERT INTO `zona` VALUES ('42', '7', 'Guanabacoa');
INSERT INTO `zona` VALUES ('43', '7', 'Chib&aacute;s');
INSERT INTO `zona` VALUES ('44', '7', 'D\'Beche');
INSERT INTO `zona` VALUES ('45', '7', 'Minas');
INSERT INTO `zona` VALUES ('46', '7', 'Barreras');
INSERT INTO `zona` VALUES ('47', '7', 'La Jata');
INSERT INTO `zona` VALUES ('48', '8', 'Alamar');
INSERT INTO `zona` VALUES ('49', '8', 'Camilo Cienfuegos');
INSERT INTO `zona` VALUES ('50', '8', 'Guiteras');
INSERT INTO `zona` VALUES ('51', '8', 'Villa Panamericana');
INSERT INTO `zona` VALUES ('52', '8', 'Coj&iacute;mar');
INSERT INTO `zona` VALUES ('53', '8', 'Guanabo');
INSERT INTO `zona` VALUES ('54', '8', 'Boca Ciega');
INSERT INTO `zona` VALUES ('55', '8', 'Campo Florido');
INSERT INTO `zona` VALUES ('56', '9', 'Barrios del casco hist&oacute;rico');
INSERT INTO `zona` VALUES ('57', '9', 'Tallapiedra');
INSERT INTO `zona` VALUES ('58', '10', 'La Lisa');
INSERT INTO `zona` VALUES ('59', '10', 'Alturas de la Lisa');
INSERT INTO `zona` VALUES ('60', '10', 'Arroyo Arenas');
INSERT INTO `zona` VALUES ('61', '10', 'Punta Brava');
INSERT INTO `zona` VALUES ('62', '10', 'Arimao');
INSERT INTO `zona` VALUES ('63', '10', 'El Cano');
INSERT INTO `zona` VALUES ('64', '10', 'San Agust&iacute;n');
INSERT INTO `zona` VALUES ('65', '10', 'La Coronela');
INSERT INTO `zona` VALUES ('66', '11', 'Los Quemados');
INSERT INTO `zona` VALUES ('67', '11', 'Pogolotti');
INSERT INTO `zona` VALUES ('68', '11', 'Los Pocitos');
INSERT INTO `zona` VALUES ('69', '11', 'Santa Felicia');
INSERT INTO `zona` VALUES ('70', '11', 'El Palmar');
INSERT INTO `zona` VALUES ('71', '11', 'Bel&eacute;n');
INSERT INTO `zona` VALUES ('72', '11', 'Zamora');
INSERT INTO `zona` VALUES ('73', '11', 'Coco Solo');
INSERT INTO `zona` VALUES ('74', '12', 'Miramar');
INSERT INTO `zona` VALUES ('75', '12', 'Buenavista');
INSERT INTO `zona` VALUES ('76', '12', 'La Ceiba');
INSERT INTO `zona` VALUES ('77', '12', 'La Sierra');
INSERT INTO `zona` VALUES ('78', '12', 'Kolhy');
INSERT INTO `zona` VALUES ('79', '12', 'Siboney');
INSERT INTO `zona` VALUES ('80', '12', 'Atabey');
INSERT INTO `zona` VALUES ('81', '12', 'Santa Fe');
INSERT INTO `zona` VALUES ('82', '12', 'Jaimanitas');
INSERT INTO `zona` VALUES ('83', '12', 'Flores');
INSERT INTO `zona` VALUES ('84', '12', 'Cubanac&aacute;n');
INSERT INTO `zona` VALUES ('85', '12', 'Almendares');
INSERT INTO `zona` VALUES ('86', '13', 'El Vedado');
INSERT INTO `zona` VALUES ('87', '13', 'Nuevo Vedado');
INSERT INTO `zona` VALUES ('88', '13', 'Pr&iacute;ncipe');
INSERT INTO `zona` VALUES ('89', '13', 'Plaza');
INSERT INTO `zona` VALUES ('90', '13', 'Puentes Grandes');
INSERT INTO `zona` VALUES ('91', '14', 'Regla');
INSERT INTO `zona` VALUES ('92', '14', 'Casablanca');
INSERT INTO `zona` VALUES ('95', '15', 'San Miguel');
INSERT INTO `zona` VALUES ('96', '15', 'Diezmero');
INSERT INTO `zona` VALUES ('97', '15', 'Alturas de Luyan&oacute;');
INSERT INTO `zona` VALUES ('98', '15', 'Rocafort');
INSERT INTO `zona` VALUES ('99', '15', 'San Fco. de Paula');
INSERT INTO `zona` VALUES ('100', '15', 'Jacomino');
INSERT INTO `zona` VALUES ('101', '15', 'California');
INSERT INTO `zona` VALUES ('102', '15', 'Juanelo');
INSERT INTO `zona` VALUES ('103', '15', 'La Rosal&iacute;a');
INSERT INTO `zona` VALUES ('104', '15', 'La Fernanda');
