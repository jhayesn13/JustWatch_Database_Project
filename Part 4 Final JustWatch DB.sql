-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: just_watch
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cast_member`
--

DROP TABLE IF EXISTS `cast_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_member` (
  `cast_id` int NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(40) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`cast_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_member`
--

LOCK TABLES `cast_member` WRITE;
/*!40000 ALTER TABLE `cast_member` DISABLE KEYS */;
INSERT INTO `cast_member` VALUES (123,'Carla','Gugino','1971-09-29','Carla Gugino (born August 29, 1971) is an American actress. After appearing in Troop Beverly Hills (1989) and This Boy\'s Life (1993), she received recognition for her starring roles as Ingrid Cortez in the Spy Kids trilogy (2001–2003), Rebecca Hutman in Night At The Museum (2006), Laurie Roberts in American Gangster (2007), Sally Jupiter in Watchmen (2009), Dr. Vera Gorski in Sucker Punch (2011), Emma Gaines in San Andreas (2015), and Jessie Burlingame in Gerald\'s Game (2017).\n\nGugino also starred as the lead character in the crime drama series Karen Sisco (2003), the science fiction series Threshold (2005–2006), the supernatural horror series The Haunting of Hill House (2018), and the crime drama series Jett (2019), and also appeared in The Haunting of Bly Manor (2020).'),(279,'Jaz','Sinclair','1994-07-22','Jacob Fortune-Lloyd is an actor, known for Star Wars: Episode IX - The Rise of Skywalker (2019), Wolf Hall (2015) and Crooked House (2017).'),(456,'Louis','Hofmann','1997-06-03','Louis Hofmann is a German film and television actor who was born in Bensberg but grew up in Cologne.\nHe is best known for his role in the original Netflix series Dark (2017-20), and his roles in the war drama Under Sandet (2015) for which he won a Bodil Award for Best Supporting Actor. He gained recognition in Germany through his work in Tom Sawyer (2011) and Freistatt (2015). He also starred as Phil in the romantic drama Die Mitte der Welt (2016)'),(789,'Jacob','Fortune-Lloyd','1971-01-18','Jacob Fortune-Lloyd is an actor, known for Star Wars: Episode IX - The Rise of Skywalker (2019), Wolf Hall (2015) and Crooked House (2017).');
/*!40000 ALTER TABLE `cast_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_stars_in_movie`
--

DROP TABLE IF EXISTS `cast_stars_in_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_stars_in_movie` (
  `cast_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `cast_role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cast_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `cast_stars_in_movie_ibfk_1` FOREIGN KEY (`cast_id`) REFERENCES `cast_member` (`cast_id`),
  CONSTRAINT `cast_stars_in_movie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_stars_in_movie`
--

LOCK TABLES `cast_stars_in_movie` WRITE;
/*!40000 ALTER TABLE `cast_stars_in_movie` DISABLE KEYS */;
INSERT INTO `cast_stars_in_movie` VALUES (123,1,'director'),(123,2,'actress'),(279,3,'director'),(279,4,'actor');
/*!40000 ALTER TABLE `cast_stars_in_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cast_stars_in_tv_show`
--

DROP TABLE IF EXISTS `cast_stars_in_tv_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cast_stars_in_tv_show` (
  `cast_id` int NOT NULL,
  `tv_show_id` int NOT NULL,
  `cast_role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cast_id`,`tv_show_id`),
  KEY `tv_show_id` (`tv_show_id`),
  CONSTRAINT `cast_stars_in_tv_show_ibfk_1` FOREIGN KEY (`cast_id`) REFERENCES `cast_member` (`cast_id`),
  CONSTRAINT `cast_stars_in_tv_show_ibfk_2` FOREIGN KEY (`tv_show_id`) REFERENCES `tv_show` (`tv_show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cast_stars_in_tv_show`
--

LOCK TABLES `cast_stars_in_tv_show` WRITE;
/*!40000 ALTER TABLE `cast_stars_in_tv_show` DISABLE KEYS */;
INSERT INTO `cast_stars_in_tv_show` VALUES (456,100000,'director'),(456,200000,'actor'),(789,100000,'director'),(789,200000,'actor');
/*!40000 ALTER TABLE `cast_stars_in_tv_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `episode`
--

DROP TABLE IF EXISTS `episode`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `episode` (
  `episode_id` int NOT NULL,
  `season_id` int NOT NULL,
  `episode_name` varchar(50) DEFAULT NULL,
  `episode_description` tinytext,
  `release_date` date DEFAULT NULL,
  `episode_no` int DEFAULT NULL,
  PRIMARY KEY (`episode_id`,`season_id`),
  KEY `season_id` (`season_id`),
  CONSTRAINT `episode_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `season` (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `episode`
--

LOCK TABLES `episode` WRITE;
/*!40000 ALTER TABLE `episode` DISABLE KEYS */;
INSERT INTO `episode` VALUES (2,222,'Episode 2','During an intense interrogation, Marie recalls the Nazi invasion of Paris as Werner remembers a fateful visit from an SS officer to his orphanage.','2023-11-23',2),(6,111,'Goldbug','Pym digs up disturbing information on Verna. With her marriage on the decline, Tamerlane hosts a turbulent product launch that shatters expectations.','2023-10-12',6),(7,111,'The Pit and the Pendulum','A furious Frederick sets out to handle unfinished business. Madeline receives an ominous message at an old haunt. Dupin grows wary of Roderick\'s motives.','2023-10-12',7),(8,111,'The Raven','In 1980, Roderick and Madeline seize a chance to cement their fortune — for a price. Decades later, the remaining Ushers reckon with the consequences.','2023-10-12',8);
/*!40000 ALTER TABLE `episode` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie`
--

DROP TABLE IF EXISTS `movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie` (
  `movie_id` int NOT NULL,
  `movie_title` varchar(45) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `what_to_know` text,
  `official_just_watch_writer` varchar(20) DEFAULT NULL,
  `age_rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  `just_watch_rating` varchar(7) DEFAULT NULL,
  `imdb_rating` float DEFAULT NULL,
  `synopsis` text,
  `runtime` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie`
--

LOCK TABLES `movie` WRITE;
/*!40000 ALTER TABLE `movie` DISABLE KEYS */;
INSERT INTO `movie` VALUES (1,'No Hard Feelings','2023-06-23',' ',' ','R','77%',6.4,'Maddie is working as an Uber driver in Montauk, New York. She’s already struggling to make ends meet but when her car gets repossessed she looks set to face bankruptcy if she can’t find a solution. Desperate for something, she accepts an unusual posting on Craigslist that would win her a Buick Regal. In exchange for the car, she needs to date Percy, the introverted son of the helicopter parents behind the ad. Hoping to bring him out of his social seclusion, the parents agree that Maddie will seduce him and become Percy’s girlfriend in order to teach him about adult life. But unleashing the full force of Percy’s pent-up adolescence has consequences no one could imagine.','1h 44min'),(2,'The Killer','2023-10-07',' ',' ','R','76%',6.5,'Fans who love a thrilling revenge story will be intrigued by David Fincher\'s The Killer. Although it is a straightforward revenge story, Fincher makes it unique by examining the titular Killer\'s struggles with OCD and giving the film a noir flare. Michael Fassbender is convincing as a stone-cold killer, while Fincher\'s meticulous filmmaking and direction shine through in the Killer\'s quirks and the smooth and thrilling ride the plot provides. The Killer is a revenge story at heart but also elevates its premise with a few unique touches.\", \'Rachel Ulatowski\', \'R\', \'78%\', \'6.9\', \'In The Killer, a botched hit changes everything for a callous hitman with no moral compass\nThe Killer is a cold-blooded and methodological assassin, renowned for his precision and unpitying outlook. When a routine hit goes wrong, he contemplates retirement but he is not the only person invested in his career. When his employers learn of the events and his intention to step down, the Killer becomes the target.','1h 58min'),(3,'Spider-Man: Across the Spider-Verse','2023-06-02',' ',' ','PG','77%',6.4,'After his mind-bending introduction to the multiverse, Miles Morales is back for another reality-altering trip\nBetter known as the web-slinging Spider-Man, Miles reteams with Gwen Stacey a.k.a. Spider-Woman to fight a dangerous foe. As the pair learn of a supervillain with multi-dimensional powers, they must warn all Spider-People across different universes of the oncoming threat. In the process the pair meet the Spider-Force, sworn protectors of the multiverse who have their own ideas of how to deal with the menace.','2h 20min'),(4,'Blue Beetle','2023-08-18',' ',' ','PG-13','76%',6.1,'Villains, beware! Blue Beetle fights for justice throughout the cosmos\nJaime Reyes is a freshly graduated college student returning home to a new life. Facing new challenges and struggles, Jaime must find his purpose and position in society. What he doesn\'t know is that destiny has a plan for him. When a mysterious ancient scarab attaches to his spine, it gives him the ability to travel through space in blue alien armor. Suddenly the host of this symbiotic power, Jaime becomes a superhero protected and powered by this alien technology.','2h 8min');
/*!40000 ALTER TABLE `movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_audio_language`
--

DROP TABLE IF EXISTS `movie_audio_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_audio_language` (
  `movie_id` int NOT NULL,
  `aud_language` varchar(20) NOT NULL,
  PRIMARY KEY (`movie_id`,`aud_language`),
  CONSTRAINT `movie_audio_language_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_audio_language`
--

LOCK TABLES `movie_audio_language` WRITE;
/*!40000 ALTER TABLE `movie_audio_language` DISABLE KEYS */;
INSERT INTO `movie_audio_language` VALUES (1,'English'),(1,'Spanish'),(2,'Portuguese'),(4,'German');
/*!40000 ALTER TABLE `movie_audio_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_genre`
--

DROP TABLE IF EXISTS `movie_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_genre` (
  `movie_id` int NOT NULL,
  `genre` varchar(20) NOT NULL,
  PRIMARY KEY (`movie_id`,`genre`),
  CONSTRAINT `movie_genre_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genre`
--

LOCK TABLES `movie_genre` WRITE;
/*!40000 ALTER TABLE `movie_genre` DISABLE KEYS */;
INSERT INTO `movie_genre` VALUES (1,'Comedy'),(1,'Romance'),(2,'Crime'),(2,'Mystery&Thriller');
/*!40000 ALTER TABLE `movie_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_production_country`
--

DROP TABLE IF EXISTS `movie_production_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_production_country` (
  `movie_id` int NOT NULL,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`movie_id`,`country`),
  CONSTRAINT `movie_production_country_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_production_country`
--

LOCK TABLES `movie_production_country` WRITE;
/*!40000 ALTER TABLE `movie_production_country` DISABLE KEYS */;
INSERT INTO `movie_production_country` VALUES (1,'United States'),(2,'United States'),(3,'United States'),(4,'United States');
/*!40000 ALTER TABLE `movie_production_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_subtitle_language`
--

DROP TABLE IF EXISTS `movie_subtitle_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_subtitle_language` (
  `movie_id` int NOT NULL,
  `sub_language` varchar(20) NOT NULL,
  PRIMARY KEY (`movie_id`,`sub_language`),
  CONSTRAINT `movie_subtitle_language_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_subtitle_language`
--

LOCK TABLES `movie_subtitle_language` WRITE;
/*!40000 ALTER TABLE `movie_subtitle_language` DISABLE KEYS */;
INSERT INTO `movie_subtitle_language` VALUES (1,'English'),(1,'Spanish'),(2,'Portuguese'),(4,'German');
/*!40000 ALTER TABLE `movie_subtitle_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season`
--

DROP TABLE IF EXISTS `season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season` (
  `season_id` int NOT NULL,
  `tv_show_id` int NOT NULL,
  `season_no` int DEFAULT NULL,
  `synopsis` text,
  `runtime` varchar(15) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `official_just_watch_writer` varchar(20) DEFAULT NULL,
  `what_to_know` text,
  PRIMARY KEY (`season_id`,`tv_show_id`),
  KEY `tv_show_id` (`tv_show_id`),
  CONSTRAINT `season_ibfk_1` FOREIGN KEY (`tv_show_id`) REFERENCES `tv_show` (`tv_show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season`
--

LOCK TABLES `season` WRITE;
/*!40000 ALTER TABLE `season` DISABLE KEYS */;
INSERT INTO `season` VALUES (111,100000,1,'An ever-changing demon from the past haunts the House of Usher \nA wealthy family who owns a pharmaceutical company is haunted by a dark spirit from their past. The CEO of Fortunata Pharmaceuticals is Roderick Usher who runs the corporate empire with his twin sister Madeline. But the pair must face their past deeds and reckon with all the ways in which they have been corrupt as a demon haunts their house. Shape-shifting and out for blood, this demon from the past threatens the lives of the entire House of Usher.','1h 2min','2023-10-12','',''),(222,200000,1,'In Nazi-occupied France, a father and daughter must escape from a relentless pursuit Marie-Laure LeBlanc is a blind teenage girl on the run from the Nazis. Along with her father, Daniel, the pair are trying to stop an important diamond from falling into Nazi possession. But there is one Gestapo officer who will stop at nothing to find it. They must take refuge with Marie-Laure’s great-uncle Etienne who is part of the resistance. But nowhere is safe from Nazi persecution and the trio must do everything they can to evade capture and protect everything they love from being destroyed. One of their pursuers is a young German soldier, Werner Pfennig. Horrified by all that is happening around him, Pfennig is a teenage boy who grew up or orphan. Entering the story in a key moment of discovery, Pfennig must make a choice about what he does with the secret information he uncovers.','57min','2023-11-02','',''),(333,300000,1,'One victim, found dead on a London street. Four detectives, in four different time periods, must solve the mystery to protect Britain\'s future.','57min','2023-10-12','',''),(444,400000,1,'Even superheroes need to go to school. In fact, those with supernatural powers are the ones who need guidance and teaching. The Godolkin University of Crimefighting is the only college dedicated exclusively to teaching young supes how to save the day. The Godolkin way involves pitching angsty teens against each other to compete for crimefighting contracts across US cities. While competition can certainly breed success, it will also leave plenty nursing wounds and mopping up their own blood from the cafeteria floor. Leading the drama are Marie M. and Emma Shaw the powerful pair trying to navigate what wider conspiracies are at play. Meanwhile, in some ways, Godolkin offers a regular college experience. Expect sexual tension and hormonal stress, drama and dirt-dishing, gossip at parties, and a fair share of trademark R-rated randomness.','47min','2023-09-29','',''),(555,400000,2,'No plot details are currently available for this season.','47min','2024-09-29','',''),(667,400000,3,'No plot details are currently available for this season.','47min','2025-09-29','','');
/*!40000 ALTER TABLE `season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season_audio_language`
--

DROP TABLE IF EXISTS `season_audio_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season_audio_language` (
  `season_id` int NOT NULL,
  `aud_language` varchar(20) NOT NULL,
  PRIMARY KEY (`season_id`,`aud_language`),
  CONSTRAINT `season_audio_language_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `season` (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season_audio_language`
--

LOCK TABLES `season_audio_language` WRITE;
/*!40000 ALTER TABLE `season_audio_language` DISABLE KEYS */;
INSERT INTO `season_audio_language` VALUES (111,'English'),(222,'Spanish'),(333,'Portuguese'),(444,'German');
/*!40000 ALTER TABLE `season_audio_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `season_production_country`
--

DROP TABLE IF EXISTS `season_production_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `season_production_country` (
  `season_id` int NOT NULL,
  `country` varchar(30) NOT NULL,
  PRIMARY KEY (`season_id`,`country`),
  CONSTRAINT `season_production_country_ibfk_1` FOREIGN KEY (`season_id`) REFERENCES `season` (`season_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `season_production_country`
--

LOCK TABLES `season_production_country` WRITE;
/*!40000 ALTER TABLE `season_production_country` DISABLE KEYS */;
INSERT INTO `season_production_country` VALUES (111,'United States'),(222,'United States'),(333,'United States'),(444,'United States');
/*!40000 ALTER TABLE `season_production_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_streams_movie`
--

DROP TABLE IF EXISTS `service_streams_movie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_streams_movie` (
  `service_id` int NOT NULL,
  `movie_id` int NOT NULL,
  PRIMARY KEY (`service_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `service_streams_movie_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `streaming_service` (`service_id`),
  CONSTRAINT `service_streams_movie_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_streams_movie`
--

LOCK TABLES `service_streams_movie` WRITE;
/*!40000 ALTER TABLE `service_streams_movie` DISABLE KEYS */;
INSERT INTO `service_streams_movie` VALUES (1,1),(1,2),(1,3),(2,4);
/*!40000 ALTER TABLE `service_streams_movie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_streams_movie_price_quality`
--

DROP TABLE IF EXISTS `service_streams_movie_price_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_streams_movie_price_quality` (
  `service_id` int NOT NULL,
  `movie_id` int NOT NULL,
  `rent_price` varchar(7) DEFAULT NULL,
  `buy_price` varchar(7) DEFAULT NULL,
  `avail_free` enum('y','n') DEFAULT NULL,
  `avail_sd` enum('y','n') DEFAULT NULL,
  `avail_hd` enum('Y','N') DEFAULT NULL,
  `avail_4k` enum('Y','N') DEFAULT NULL,
  PRIMARY KEY (`service_id`,`movie_id`),
  KEY `movie_id` (`movie_id`),
  CONSTRAINT `service_streams_movie_price_quality_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `streaming_service` (`service_id`),
  CONSTRAINT `service_streams_movie_price_quality_ibfk_2` FOREIGN KEY (`movie_id`) REFERENCES `movie` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_streams_movie_price_quality`
--

LOCK TABLES `service_streams_movie_price_quality` WRITE;
/*!40000 ALTER TABLE `service_streams_movie_price_quality` DISABLE KEYS */;
INSERT INTO `service_streams_movie_price_quality` VALUES (1,1,'','','n','y','Y','Y'),(1,3,'','','n','y','Y','Y'),(2,1,'$5.99','$7.99','n','y','Y','Y'),(2,4,'$5.99','$9.99','n','y','Y','Y');
/*!40000 ALTER TABLE `service_streams_movie_price_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_streams_sporting_event`
--

DROP TABLE IF EXISTS `service_streams_sporting_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_streams_sporting_event` (
  `service_id` int NOT NULL,
  `event_id` int NOT NULL,
  PRIMARY KEY (`service_id`,`event_id`),
  KEY `event_id` (`event_id`),
  CONSTRAINT `service_streams_sporting_event_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `sporting_event` (`event_id`),
  CONSTRAINT `service_streams_sporting_event_ibfk_2` FOREIGN KEY (`event_id`) REFERENCES `sporting_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_streams_sporting_event`
--

LOCK TABLES `service_streams_sporting_event` WRITE;
/*!40000 ALTER TABLE `service_streams_sporting_event` DISABLE KEYS */;
INSERT INTO `service_streams_sporting_event` VALUES (4,111),(3,114),(4,122),(4,311);
/*!40000 ALTER TABLE `service_streams_sporting_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_streams_tv_show`
--

DROP TABLE IF EXISTS `service_streams_tv_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_streams_tv_show` (
  `service_id` int NOT NULL,
  `tv_show_id` int NOT NULL,
  PRIMARY KEY (`service_id`,`tv_show_id`),
  KEY `tv_show_id` (`tv_show_id`),
  CONSTRAINT `service_streams_tv_show_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `streaming_service` (`service_id`),
  CONSTRAINT `service_streams_tv_show_ibfk_2` FOREIGN KEY (`tv_show_id`) REFERENCES `tv_show` (`tv_show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_streams_tv_show`
--

LOCK TABLES `service_streams_tv_show` WRITE;
/*!40000 ALTER TABLE `service_streams_tv_show` DISABLE KEYS */;
INSERT INTO `service_streams_tv_show` VALUES (1,100000),(1,200000),(1,300000),(3,400000);
/*!40000 ALTER TABLE `service_streams_tv_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_streams_tv_show_price_quality`
--

DROP TABLE IF EXISTS `service_streams_tv_show_price_quality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_streams_tv_show_price_quality` (
  `service_id` int NOT NULL,
  `tv_show_id` int NOT NULL,
  `rent_price` varchar(7) DEFAULT NULL,
  `buy_price` varchar(7) DEFAULT NULL,
  `avail_free` enum('y','n') DEFAULT NULL,
  `avail_sd` enum('y','n') DEFAULT NULL,
  `avail_hd` enum('y','n') DEFAULT NULL,
  `avail_4k` enum('y','n') DEFAULT NULL,
  PRIMARY KEY (`service_id`,`tv_show_id`),
  KEY `tv_show_id` (`tv_show_id`),
  CONSTRAINT `service_streams_tv_show_price_quality_ibfk_1` FOREIGN KEY (`service_id`) REFERENCES `streaming_service` (`service_id`),
  CONSTRAINT `service_streams_tv_show_price_quality_ibfk_2` FOREIGN KEY (`tv_show_id`) REFERENCES `tv_show` (`tv_show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_streams_tv_show_price_quality`
--

LOCK TABLES `service_streams_tv_show_price_quality` WRITE;
/*!40000 ALTER TABLE `service_streams_tv_show_price_quality` DISABLE KEYS */;
INSERT INTO `service_streams_tv_show_price_quality` VALUES (1,100000,'','','n','y','y','y'),(1,200000,'','','n','y','y','y'),(1,300000,'','','n','y','y','y'),(3,400000,'','','n','y','y','y');
/*!40000 ALTER TABLE `service_streams_tv_show_price_quality` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sporting_event`
--

DROP TABLE IF EXISTS `sporting_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sporting_event` (
  `event_id` int NOT NULL,
  `event_name` varchar(50) DEFAULT NULL,
  `event_description` text,
  `competition` varchar(30) DEFAULT NULL,
  `league` varchar(30) DEFAULT NULL,
  `airdate` date DEFAULT NULL,
  `venue` varchar(30) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sporting_event`
--

LOCK TABLES `sporting_event` WRITE;
/*!40000 ALTER TABLE `sporting_event` DISABLE KEYS */;
INSERT INTO `sporting_event` VALUES (111,'Sacramento Kings @ Dallas Mavericks','SACRAMENTO KINGS @ DALLAS MAVERICKS: LIVE STREAM & ON TV TODAY\nSacramento Kings @ Dallas Mavericks is a Basketball event happening live right now. It is available to livestream on fuboTV. You can watch this event live on fuboTV, NBA League Pass, and NBA League Pass Amazon Channel.','Regular Season','NBA','2023-11-19','American Airlines Center','19:30:00','22:00:00'),(114,'Oklahoma City Thunder @ Portland Trail Blazers','OKLAHOMA CITY THUNDER @ PORTLAND TRAIL BLAZERS: LIVE STREAM & ON TV TODAY\nOklahoma City Thunder @ Portland Trail Blazers is a Basketball event happening live right now. It is available to livestream on fuboTV. You can watch this event live on fuboTV, NBA League Pass, NBA League Pass Amazon Channel, and NBA League Pass on YouTube TV.','Regular Season','NBA','2023-11-19','Moda Center','19:30:00','22:00:00'),(122,'Boston Celtics @ Memphis Grizzlies','BOSTON CELTICS @ MEMPHIS GRIZZLIES: LIVE STREAM & ON TV TODAY\nBoston Celtics @ Memphis Grizzlies is a Basketball event happening live right now. It is available to livestream on fuboTV. You can watch this event live on fuboTV, USA Network, NBA League Pass, and NBA League Pass Amazon Channel.','Regular Season','NBA','2023-11-19','FedExForum','19:30:00','22:00:00'),(311,'Phoenix Suns @ Utah Jazz','PHOENIX SUNS @ UTAH JAZZ: LIVE STREAM & ON TV TODAY\nPhoenix Suns @ Utah Jazz is a Basketball event happening live right now. It is available to livestream on fuboTV. You can watch this event live on fuboTV, NBA League Pass, NBA TV Amazon Channel, NBA League Pass Amazon Channel, and Sling TV Sports Extras.','Regular Season','NBA','2023-11-19','Vivint Arena','19:30:00','22:00:00');
/*!40000 ALTER TABLE `sporting_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sporting_event_participants`
--

DROP TABLE IF EXISTS `sporting_event_participants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sporting_event_participants` (
  `event_id` int NOT NULL,
  `participant_name` varchar(30) NOT NULL,
  PRIMARY KEY (`event_id`,`participant_name`),
  CONSTRAINT `sporting_event_participants_ibfk_1` FOREIGN KEY (`event_id`) REFERENCES `sporting_event` (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sporting_event_participants`
--

LOCK TABLES `sporting_event_participants` WRITE;
/*!40000 ALTER TABLE `sporting_event_participants` DISABLE KEYS */;
INSERT INTO `sporting_event_participants` VALUES (111,'Dallas Mavericks'),(111,'Sacramento Kings'),(122,'Boston Celtics'),(122,'Memphis Grizzlies');
/*!40000 ALTER TABLE `sporting_event_participants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `streaming_service`
--

DROP TABLE IF EXISTS `streaming_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `streaming_service` (
  `service_id` int NOT NULL,
  `service_name` varchar(20) DEFAULT NULL,
  `service_url` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `streaming_service`
--

LOCK TABLES `streaming_service` WRITE;
/*!40000 ALTER TABLE `streaming_service` DISABLE KEYS */;
INSERT INTO `streaming_service` VALUES (1,'Netflix','www.netflix.com'),(2,'Apple Tv','www.appletv.com'),(3,'Amazon Prime','www.amazonprime.com'),(4,'Fubo TV','www.fubo.tv');
/*!40000 ALTER TABLE `streaming_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show`
--

DROP TABLE IF EXISTS `tv_show`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show` (
  `tv_show_id` int NOT NULL,
  `tv_show_title` varchar(45) DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `age_rating` enum('TV-Y','TV-Y7','TV-Y7 FV','TV-G','TV-PG','TV-14','TV-MA') DEFAULT NULL,
  `just_watch_rating` varchar(7) DEFAULT NULL,
  `imdb_rating` float DEFAULT NULL,
  `runtime` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`tv_show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show`
--

LOCK TABLES `tv_show` WRITE;
/*!40000 ALTER TABLE `tv_show` DISABLE KEYS */;
INSERT INTO `tv_show` VALUES (100000,'The Fall of the House of Usher','2023-10-12','TV-MA','87%',8,'57min'),(200000,'All the Light We Cannot See','2023-11-02','TV-MA','85%',7.6,'1h 2min'),(300000,'Bodies','2023-10-12','TV-MA','80%',7.4,'57min'),(400000,'Gen V','2023-09-29','TV-MA','89%',7.8,'47min');
/*!40000 ALTER TABLE `tv_show` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_genre`
--

DROP TABLE IF EXISTS `tv_show_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show_genre` (
  `tv_show_id` int NOT NULL,
  `genre` varchar(20) NOT NULL,
  PRIMARY KEY (`tv_show_id`,`genre`),
  CONSTRAINT `tv_show_genre_ibfk_1` FOREIGN KEY (`tv_show_id`) REFERENCES `tv_show` (`tv_show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_genre`
--

LOCK TABLES `tv_show_genre` WRITE;
/*!40000 ALTER TABLE `tv_show_genre` DISABLE KEYS */;
INSERT INTO `tv_show_genre` VALUES (100000,'Drama'),(100000,'Horror'),(200000,'Drama'),(200000,'History');
/*!40000 ALTER TABLE `tv_show_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tv_show_subtitle_language`
--

DROP TABLE IF EXISTS `tv_show_subtitle_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tv_show_subtitle_language` (
  `tv_show_id` int NOT NULL,
  `sub_language` varchar(20) NOT NULL,
  PRIMARY KEY (`tv_show_id`,`sub_language`),
  CONSTRAINT `tv_show_subtitle_language_ibfk_1` FOREIGN KEY (`tv_show_id`) REFERENCES `tv_show` (`tv_show_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tv_show_subtitle_language`
--

LOCK TABLES `tv_show_subtitle_language` WRITE;
/*!40000 ALTER TABLE `tv_show_subtitle_language` DISABLE KEYS */;
INSERT INTO `tv_show_subtitle_language` VALUES (100000,'English'),(200000,'Spanish'),(300000,'Portuguese'),(400000,'German');
/*!40000 ALTER TABLE `tv_show_subtitle_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `user_country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1@gmail.com','password1','United States'),(2,'user2@gmail.com','password2','United Arab Emrites'),(3,'user3@gmail.com','password3','United Kingdom'),(4,'user4@gmail.com','password4','Puerto Rico');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'just_watch'
--

--
-- Dumping routines for database 'just_watch'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03 20:00:21
