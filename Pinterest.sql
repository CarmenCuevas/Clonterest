-- MySQL dump 10.13  Distrib 5.6.17, for Win32 (x86)
--
-- Host: localhost    Database: pinterest
-- ------------------------------------------------------
-- Server version	5.6.23-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comentario`
--

DROP TABLE IF EXISTS `comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comentario` (
  `Id_comentario` int(2) NOT NULL AUTO_INCREMENT,
  `Comentario` varchar(45) NOT NULL,
  `Id_imagen` int(2) NOT NULL,
  PRIMARY KEY (`Id_comentario`),
  KEY `Id_imagen_idx` (`Id_imagen`),
  CONSTRAINT `Id_imagen` FOREIGN KEY (`Id_imagen`) REFERENCES `imagen` (`Id_imagen`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comentario`
--

LOCK TABLES `comentario` WRITE;
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` VALUES (1,'Esta bien chida',2),(2,'Comentario',4);
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagen`
--

DROP TABLE IF EXISTS `imagen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagen` (
  `Id_imagen` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `URL` varchar(200) NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  `Likes` varchar(50) NOT NULL,
  PRIMARY KEY (`Id_imagen`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagen`
--

LOCK TABLES `imagen` WRITE;
/*!40000 ALTER TABLE `imagen` DISABLE KEYS */;
INSERT INTO `imagen` VALUES (1,'perro','http://www.mamacitalacuponera.com/wp-content/uploads/2014/04/animales.jpg','Animales','13'),(2,'lobo','http://2.bp.blogspot.com/-dvzuZ69UtAc/UKRAlvfnGRI/AAAAAAAAAA0/gorBAXSQa_k/s1600/lobo.jpg','Animales','1'),(3,'conejo','http://www.ecologiaverde.com/wp-content/2011/10/Dia-Mundial-de-los-Animales.jpg','Animales','2'),(4,'gatos','http://m1.paperblog.com/i/153/1532529/cuadros-maravillosos-animales-que-cuentan-una-L-IvIRyg.jpeg','Animales','35'),(5,'leopardo','http://g.cdn.ecn.cl/mascotas/files/2012/12/animales-olimpicos.jpg','Animales','87'),(6,'tigre','http://st-listas.20minutos.es/images/2012-04/327616/list_640px.jpg?1334776326','Animales','5'),(7,'leon','http://www.bestfon.info/images/joomgallery/originals/animales_7/animal_118_20120518_1511321022.jpg','Animales','34'),(8,'pandas','http://www.mamatrillizos.com/imagenes/imagenes-de-animales-11.jpg','Animales','65'),(9,'coneja','http://cmapspublic2.ihmc.us/rid=1LDWVX08V-93SHM-1HTF/fondos-animales-conejos.jpg','Animales','35'),(10,'pinguinos','http://www.kienyke.com/wp-content/uploads/2013/11/Sexualidad-pinguino-P-549x366.jpg','Animales','57'),(11,'comida rapida','http://www.franquiciasdecomida.com.mx/wp-content/uploads/2014/02/negocio-de-comida-rapida.jpg','Alimentos','72'),(12,'brochetas','http://vignette1.wikia.nocookie.net/halonocanon/images/f/f6/Comida_chida.jpg/revision/latest?cb=20130805193253&path-prefix=es','Alimentos','73'),(13,'tacos gringos','https://rincondelchili.files.wordpress.com/2012/11/comida-mexicana1.jpg','Alimentos','35'),(14,'hamburguesa','http://lasoposiciones.net/wp-content/uploads/2011/03/Evitar-la-comida-chatarra1.jpg','Alimentos','6'),(15,'saludable','http://catalinagomez.net/wp-content/uploads/2014/11/comida.jpg','Alimentos','7'),(16,'pizza','http://curiosidades.batanga.com/sites/curiosidades.batanga.com/files/Comida-para-Marte-impresiones-3D-y-pizza-3.jpg','Alimentos','4'),(17,'buffete','http://www.tubanda.com.ve/Archivos/Notas/201410031305411893.jpg','Alimentos','3'),(18,'pescado','http://www.bolsademulher.com/sites/www.bolsademulher.com/files/medicina-alternativa/Comida-para-fortalecer-o-cabelo-2.jpg','Alimentos','4'),(19,'argentina','http://www.cantabriaenlamesa.com/gastronomia_img/img4041_27175627.jpg','Alimentos','2'),(20,'mar','http://www.llanoalmundo.com/images/abril/ASALU.jpg','Alimentos','3'),(21,'mundo atomo','http://www.ragc.cesga.es/sites/default/files/blog/foro-ciencia-y-tecnologia-copia1.jpg','Ciencia','4'),(22,'atomo','http://www.innovainternetmx.com/wp-content/uploads/2011/07/Ciencia.jpg','Ciencia','5'),(23,'calculos','http://espiritualidadcontemporanea.com/blog/wp-content/uploads/2014/11/ciencia-2..png','Ciencia','6'),(24,'mente','http://escolapiosalcala.es/ea_centro/ea_blog/eso/wp-content/uploads/2013/11/ciencia-y-fe-...jpg','Ciencia','7'),(25,'medicina','http://www.cienciacanaria.es/images/TeInteresa/mujerciencia1.jpg','Ciencia','8'),(26,'cerebro','http://www.abc.es/Media/201407/13/cerebro-humano-mitos-ciencia--644x362.jpg','Ciencia','12'),(27,'robot','http://www.thelemming.com/lemming/POP-CULTURE/asimo-robot_48.jpg','Ciencia','12'),(28,'yorobot','http://www.theheraldng.com/wp-content/uploads/2014/02/Robot_Blue.jpg','Ciencia','34'),(29,'morado','http://nestorriba.com/wp-content/uploads/2011/12/ciencia-medica-zz.jpg','Ciencia','5'),(30,'corazon','http://img.informador.com.mx/biblioteca/imagen/370x277/442/441018.jpg','Ciencia','67'),(31,'futbol','http://dhseagles.kpdsb.on.ca/wp-content/uploads/soccer_graphic1.jpg','Deportes','8'),(32,'balon','http://manvelsoccer.org/wp-content/uploads/2014/02/soccer.jpg','Deportes','45'),(33,'basquetball','http://upload.wikimedia.org/wikipedia/commons/c/c3/Jordan_by_Lipofsky_16577.jpg','Deportes','65'),(34,'canasta','http://heyworthsports.com/wp-content/uploads/2014/11/basketball.jpg','Deportes','76'),(35,'nfl','http://cdn.playbuzz.com/cdn/f746f6c6-0f4e-4366-8ffd-0e9810f3c922/6d14b526-d57b-47d4-8aaf-9776a3e1622c.jpg','Deportes','23'),(36,'americano','https://my3senths.files.wordpress.com/2014/08/madden-25-nfl-week-11-predictions.jpg','Deportes','4'),(37,'hokey','http://emlentertainment.com/wp-content/uploads/2015/02/hockey.jpg','Deportes','5'),(38,'hielo','http://3ms4ve1eb1we30q8w527h1j9f4u.wpengine.netdna-cdn.com/wp-content//uploads/2014/02/canada1.jpg','Deportes','6'),(39,'raquetas','http://www.pirec.org/wp-content/uploads/2013/02/tennis-balls-and-rackets.jpg','Deportes','7'),(40,'tenis','http://i.telegraph.co.uk/multimedia/archive/01498/tennis_1498874c.jpg','Deportes','8'),(41,'vestidos','http://es.testsworld.net/files/2013/07/test-de-moda.jpg','Moda','9'),(42,'miley ','http://www.1001consejos.com/wp-content/uploads/2012/05/ropa-de-moda-juvenil.jpg','Moda','45'),(43,'mono','http://www.claraavilac.com/wp-content/uploads/moda-y-redes-sociales.jpg','Moda','45'),(44,'morado','http://4.bp.blogspot.com/-w6G9r6DuJPg/UbrfC-pclPI/AAAAAAAAABE/-2Ag8JvWmOs/s1600/fotos-ropas-moda-2013-L-Hzrw2C.jpeg','Moda','4'),(45,'bikini','http://cdn.gq.com.mx/uploads/images/thumbs/201247/agua_bendita_en_la_semana_de_la_moda_de_mexico_422309850_605x900.jpg','Moda','5'),(46,'top','http://www.teenvogue.com/blog/teen-vogue-daily/mkerr.jpg','Moda','9'),(47,'lentes','http://e.fastcompany.net/multisite_files/fastcompany/imagecache/1280/poster/2014/04/3028600-poster-p-fashion.jpg','Moda','5'),(48,'invierno','http://www.knowledgeidea.com/wp-content/uploads/2014/09/Fashion-And-Modern-Youth.jpg','Moda','8'),(49,'tango','http://www.tangoworld.it/wp-content/uploads/2015/01/Tango_argentino.jpg','Moda','7'),(50,'rojo','http://cdn.backyardchickens.com/7/73/733ebd6f_Girl-Fashion-Dress-Red-Desktop-Wallpaper.jpeg','Moda','6'),(51,'blanco','http://www.top10supercars.com/wp-content/uploads/2012/11/Screen-Shot-2012-11-20-at-13.42.31.png','Coches','5'),(52,'batman','http://www.top10supercars.com/wp-content/uploads/2012/11/Screen-Shot-2012-11-20-at-13.37.06.png','Coches','4'),(53,'elegancia','http://www.top10supercars.com/wp-content/uploads/2012/11/Screen-Shot-2012-11-20-at-13.10.571-e1353488144384.png','Coches','3'),(54,'chaca','http://media.caranddriver.com/images/media/51/10-worst-supercars-lamborghini-egoista-inline-photo-547101-s-original.jpg','Coches','2'),(55,'transformer','http://images4.fanpop.com/image/photos/22200000/Random-Supercars-autorev-22286594-1024-768.jpg','Coches','1'),(56,'honda','http://www.diseno-art.com/news_content/wp-content/uploads/2012/07/Honda_Air.jpg','Coches','2'),(57,'concept','http://www.cruzine.com/wp-content/uploads/2011/01/039-concept-cars.jpg','Coches','10'),(58,'bmw','http://carwikipedia.com/wp-content/uploads/2014/05/Citroen_concept_car_-_Flickr_-_Supermac1961.jpg','Coches','56'),(59,'audi','http://cdn1.getnetworth.com/wp-content/uploads/2013/05/audi_R10_concept_car.jpg','Coches','7'),(60,'narcos','http://images.askmen.com/cars/galleries/lf-lc-concept-car-132578160391.jpg','Coches','5'),(61,'Cosa','http://www.ganasporqueganas.mx/imagenes/anuncios/1011-tacos.png','Alimentos','0'),(62,'Algo','http://cocinartescuela.files.wordpress.com/2012/11/pastor.jpg','Alimentos','0'),(63,'Nuevo','http://www.dcohn.com/wp-content/uploads/2015/01/pinterest-pin.jpg','Alimentos','0'),(64,'NUEVA IMAGEN','http://curiosidades.batanga.com/sites/curiosidades.batanga.com/files/imagecache/completa/Cual-es-el-animal-mas-rapido-del-mundo-1.jpg','Animales','0');
/*!40000 ALTER TABLE `imagen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-04-10 20:02:37
