-- MySQL dump 10.13  Distrib 8.0.23, for osx10.15 (x86_64)
--
-- Host: 34.121.183.189    Database: prehistoric
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.18-MariaDB-1:10.4.18+maria~stretch

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ice_age`
--

DROP TABLE IF EXISTS `ice_age`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ice_age` (
  `name` varchar(100) NOT NULL,
  `intro_text` varchar(500) NOT NULL,
  `diet` varchar(500) NOT NULL,
  `proportions` varchar(300) NOT NULL,
  `habitat` varchar(500) NOT NULL,
  `era` varchar(300) NOT NULL,
  `photo1` text NOT NULL,
  `photo2` text NOT NULL,
  `photo3` text NOT NULL,
  `desc1` varchar(300) NOT NULL,
  `desc2` varchar(300) NOT NULL,
  `desc3` varchar(300) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ice_age`
--

LOCK TABLES `ice_age` WRITE;
/*!40000 ALTER TABLE `ice_age` DISABLE KEYS */;
INSERT INTO `ice_age` VALUES ('Wooly Mammoth','The Wooly Mammoth was one of the last in a long line of great mammoths to go extinct. Thanks to the discovery of frozen carcasses this is one of the best studied prehistoric animals','The Wooly Mammoth was a herbivore and ate mostly grass, as well as other plants and flowers.','Wooly Mammoths grew to around 4 metres tall (13 feet).  They weighed approximately 6 tons. Comparable to modern day African Elephants.','The Wooly Mammoth thrived in the Artic Tundra as well as an ecosystem conveinently named the Mammoth Steppe. They spanned all the way from modern North Western Canada through North Asia and Europe, as far south as Spain.','This great creature lived from the Pliocene eopch, 5 million years ago all the way to the Holocene eopch when they went extinct about 4000 years ago.','https://upload.wikimedia.org/wikipedia/commons/thumb/2/2b/Wooly_Mammoth-RBC.jpg/640px-Wooly_Mammoth-RBC.jpg','https://upload.wikimedia.org/wikipedia/commons/thumb/6/6a/Mammuthus_primigenius_%28baby_woolly_mammoth%29_%28Late_Pleistocene%2C_42_ka%3B_Yamal_Peninsula%2C_Siberia%2C_Russia%29_1_%2834834312015%29.jpg/640px-Mammuthus_primigenius_%28baby_woolly_mammoth%29_%28Late_Pleistocene%2C_42_ka%3B_Yamal_Peninsula%2C_Siberia%2C_Russia%29_1_%2834834312015%29.jpg','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f7/A_Herd_of_Mammoths_-_Kira_Sokolovskaia.jpg/640px-A_Herd_of_Mammoths_-_Kira_Sokolovskaia.jpg','The Wooly Mammoth protected itself from any predators willing to take on the giant Mammoth using it\'s huge tusks.','Lyuba (Russsian for love) is the best preserved mammoth ever found. This young mammoth was found with her mothers milk still in her stomach, along with pollen, algae, and mammoth dung. ','Mammoth\'s lived in herds and are believed to hvae been just as intelligent as modern day elephants. ',1),('Smilodon','The Smilodon is commonly known as the Saber tooth tiger, although it is not closely related to modern day tigers and cats. This big cat was one of the greatest predators of all time. ','The diet of the Smilodon consisited of whatever it could hunt and kill, this mainly consisted of other megafauna of the America\'s. Bison and american camels have been found in the stomachs of well preserved Smilodon.','The Smilodon weighed from 160kg to 180kg, they were about the size of modern Siberian tigers and were larger than modern day lions.','This big cat inhabitated the temperate regions of North America, spanning through grasslands, shrubby areas, and pine forests. ','This cat lived from the Eocene epoch 56 million years ago through to the Plestocene eopch 11,700 years ago. ','https://upload.wikimedia.org/wikipedia/commons/thumb/f/f4/Smilodon_stranding_up.jpg/640px-Smilodon_stranding_up.jpg','https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Smilodon_tooth.jpg/2560px-Smilodon_tooth.jpg','https://upload.wikimedia.org/wikipedia/commons/thumb/3/38/Smilodon_and_Canis_dirus.jpg/640px-Smilodon_and_Canis_dirus.jpg','There are many saber tooth animals, it just means that they evolved to have long sharp maximilary canines. The saber tooth cat is the most well known of these creatures. They used their teeth to stab and shred their prey.','Their long teeth were actually fairly fragile and needed. The cat would use the teeth to stab the neck of their prey.','The big cats would be attracted to the trapped, noisy megafauna in the tar pits and in their attempt to get an easy meal, end up trapped themselves.',2),('Giant Ground Sloth','The giant ground sloth was far different than modern day sloths. These sloths were nearly the size of todays elephants and are theorized to be hairless as well. ','Ground sloths were herbivores, feasting on leaves like Yucca, Agave, and grasses. They are also theoized to have eaten and passed avocados, which would have gone extinct with the ground sloths if not for human cultivation.','These were some of the largest mammals of all time, from head to tail they were nearly 6m (20ft) and weighed up to 4 tons. Dwarfed only by the mammoths of its time.','These sloths were native to South America and southern North America. Their vast appetites nessecitated a lush environment.','Ground sloths moved into North America about 8 million years ago and lived and thirved until the end of the Pleistocene era, about 12,000 years ago.','https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Giant_ground_sloth_NCMNS.jpg/640px-Giant_ground_sloth_NCMNS.jpg','https://upload.wikimedia.org/wikipedia/commons/thumb/4/40/Megatherium_americanum.jpg/640px-Megatherium_americanum.jpg','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Megatherium_NT_small.jpg/640px-Megatherium_NT_small.jpg','When standing on their hind legs they were even taller and could reach as high as modern giraffes.','These sloths are believed to have lived in groups, comparitive to the way that hippos live today. They are believed to have spent long hours relaxing in pools and other bodies of water.','These sloths had special teeth and mouths that were perfect for selecting the best fruits and plants and then grinding them up to eat.',3);
/*!40000 ALTER TABLE `ice_age` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'prehistoric'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-28  0:04:03
