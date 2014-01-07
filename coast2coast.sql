USE `heroku_47eaf2d74fb6561`;

DROP TABLE IF EXISTS `weeks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weeks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `week_number` int(11) DEFAULT NULL,
  `team` varchar(255) DEFAULT NULL,
  `goals` int(11) DEFAULT NULL,
  `assists` int(11) DEFAULT NULL,
  `plus_minus` int(11) DEFAULT NULL,
  `ppp` int(11) DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `blocks` int(11) DEFAULT NULL,
  `wins` int(11) DEFAULT NULL,
  `gaa` float DEFAULT NULL,
  `saves` int(11) DEFAULT NULL,
  `save_p` float DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `pims` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=418 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weeks`
--

LOCK TABLES `weeks` WRITE;
/*!40000 ALTER TABLE `weeks` DISABLE KEYS */;
INSERT INTO `weeks` VALUES (278,0,'Double Pennertration',19,24,7,15,125,49,7,1.9,307,0.936,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,45),(279,0,'Lookin Sharp',18,36,23,23,107,60,8,2.73,311,0.907,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,75),(280,0,'The Saadfather',20,23,16,12,101,45,1,2.86,297,0.917,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,60),(281,0,'Hamhuis Sandwich\'s',13,36,-6,19,34,47,3,3.51,273,0.898,'2013-12-30 22:20:16','2013-12-30 22:20:16',2,36),(282,0,'Yippee Kai Yo Paille',10,19,-23,10,112,66,6,2.01,210,0.929,'2013-12-30 22:20:16','2013-12-30 22:20:16',8,58),(283,0,'At the Helm',17,32,3,22,85,65,7,2.47,341,0.919,'2013-12-30 22:20:16','2013-12-30 22:20:16',8,41),(284,0,'Teemu\'s Salami',16,28,7,20,78,54,6,2.07,281,0.934,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,35),(285,0,'Chris\'s Team',23,29,14,20,65,49,4,2.28,146,0.918,'2013-12-30 22:20:16','2013-12-30 22:20:16',8,36),(286,0,'Big Douche-Hayne',22,29,-2,23,72,51,4,2.75,233,0.903,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,44),(287,0,'Keith\'s Great Team',8,26,9,12,71,65,3,3.68,207,0.892,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,49),(288,1,'Double Pennertration',7,12,6,5,73,34,3,2.33,160,0.92,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,33),(289,1,'Lookin Sharp',14,14,7,12,64,39,4,2.44,210,0.913,'2013-12-30 22:20:16','2013-12-30 22:20:16',11,55),(290,1,'The Saadfather',11,13,9,5,45,34,3,2.96,168,0.918,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,36),(291,1,'Hamhuis Sandwich\'s',6,17,-8,8,29,25,2,2.5,195,0.92,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,18),(292,1,'Yippee Kai Yo Paille',8,14,-7,9,68,32,5,1.82,181,0.943,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,22),(293,1,'At the Helm',6,17,2,9,39,27,4,2.42,200,0.926,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,15),(294,1,'Teemu\'s Salami',11,13,2,5,68,47,1,2.63,152,0.921,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,24),(295,1,'Chris\'s Team',11,18,5,9,35,32,3,2.22,118,0.922,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,18),(296,1,'Big Douche-Hayne',11,20,-2,6,42,25,4,1.36,122,0.946,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,8),(297,1,'Keith\'s Great Team',8,11,-2,7,37,33,2,2.67,86,0.896,'2013-12-30 22:20:16','2013-12-30 22:20:16',0,36),(298,2,'Double Pennertration',7,17,0,7,64,39,2,2.96,202,0.914,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,46),(299,2,'Lookin Sharp',10,13,10,3,60,43,3,1.65,179,0.937,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,14),(300,2,'The Saadfather',10,13,0,6,45,30,1,3.02,153,0.905,'2013-12-30 22:20:16','2013-12-30 22:20:16',2,23),(301,2,'Hamhuis Sandwich\'s',9,22,-8,13,28,30,4,2.75,95,0.896,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,30),(302,2,'Yippee Kai Yo Paille',9,17,6,8,66,40,1,2.23,133,0.924,'2013-12-30 22:20:16','2013-12-30 22:20:16',9,19),(303,2,'At the Helm',8,13,4,8,48,41,6,2.72,198,0.908,'2013-12-30 22:20:16','2013-12-30 22:20:16',9,20),(304,2,'Teemu\'s Salami',11,17,21,6,54,30,2,2.66,145,0.901,'2013-12-30 22:20:16','2013-12-30 22:20:16',8,28),(305,2,'Chris\'s Team',6,13,2,6,37,25,1,2.19,132,0.923,'2013-12-30 22:20:16','2013-12-30 22:20:16',1,16),(306,2,'Big Douche-Hayne',7,14,-4,2,35,32,3,3.11,96,0.881,'2013-12-30 22:20:16','2013-12-30 22:20:16',1,20),(307,2,'Keith\'s Great Team',22,15,1,16,37,27,1,1.92,40,0.909,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,35),(308,3,'Double Pennertration',8,20,14,4,73,37,4,2.61,138,0.896,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,10),(309,3,'Lookin Sharp',7,15,-1,5,56,37,0,3.67,87,0.87,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,25),(310,3,'The Saadfather',8,16,-6,7,36,35,0,3.8,136,0.901,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,28),(311,3,'Hamhuis Sandwich\'s',9,7,-10,5,32,13,6,1.42,215,0.956,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,36),(312,3,'Yippee Kai Yo Paille',6,18,4,6,56,40,4,2.01,125,0.926,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,37),(313,3,'At the Helm',10,16,18,4,37,28,2,2.32,60,0.896,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,18),(314,3,'Teemu\'s Salami',16,14,9,6,57,44,1,3.39,67,0.893,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,23),(315,3,'Chris\'s Team',11,12,4,8,35,38,3,2.45,131,0.897,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,16),(316,3,'Big Douche-Hayne',5,21,9,9,45,39,3,1.74,85,0.934,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,37),(317,3,'Keith\'s Great Team',9,12,-3,9,43,15,3,1.84,125,0.933,'2013-12-30 22:20:16','2013-12-30 22:20:16',8,32),(318,4,'Double Pennertration',7,17,15,3,73,25,2,2.92,221,0.913,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,20),(319,4,'Lookin Sharp',10,18,9,12,69,43,3,2.98,214,0.915,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,14),(320,4,'The Saadfather',11,11,3,4,46,20,1,5.5,97,0.866,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,12),(321,4,'Hamhuis Sandwich\'s',8,17,0,8,32,32,5,2.18,198,0.925,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,2),(322,4,'Yippee Kai Yo Paille',8,12,-3,5,69,39,3,2.31,164,0.921,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,29),(323,4,'At the Helm',7,9,13,4,60,35,4,1.77,144,0.941,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,28),(324,4,'Teemu\'s Salami',14,17,13,6,50,36,2,1.68,115,0.943,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,30),(325,4,'Chris\'s Team',9,18,1,12,36,26,2,2.93,76,0.894,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,22),(326,4,'Big Douche-Hayne',11,18,5,4,47,40,3,2.82,118,0.901,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,34),(327,4,'Keith\'s Great Team',5,15,-5,8,30,20,4,1.97,130,0.929,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,21),(328,5,'Double Pennertration',7,13,10,7,86,37,2,2.14,137,0.926,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,32),(329,5,'Lookin Sharp',18,13,14,9,64,52,3,2.31,151,0.926,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,24),(330,5,'The Saadfather',6,16,-8,7,49,31,1,3.67,133,0.875,'2013-12-30 22:20:16','2013-12-30 22:20:16',2,22),(331,5,'Hamhuis Sandwich\'s',8,20,2,8,31,21,7,2.13,237,0.929,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,12),(332,5,'Yippee Kai Yo Paille',6,20,-2,16,86,50,1,1.79,134,0.937,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,26),(333,5,'At the Helm',9,20,-1,7,58,20,3,2.16,119,0.93,'2013-12-30 22:20:16','2013-12-30 22:20:16',8,30),(334,5,'Teemu\'s Salami',7,16,-3,8,66,45,1,1.78,135,0.938,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,17),(335,5,'Chris\'s Team',8,17,-3,7,33,44,3,2.25,104,0.92,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,12),(336,5,'Big Douche-Hayne',8,9,-3,7,56,40,2,2.9,115,0.891,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,33),(337,5,'Keith\'s Great Team',10,15,2,8,48,16,1,3.71,87,0.853,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,18),(338,6,'Double Pennertration',7,13,3,8,92,44,3,1.36,162,0.959,'2013-12-30 22:20:16','2013-12-30 22:20:16',8,19),(339,6,'Lookin Sharp',8,8,8,4,56,31,3,2.17,146,0.93,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,24),(340,6,'The Saadfather',4,12,-1,2,58,28,3,1.95,117,0.936,'2013-12-30 22:20:16','2013-12-30 22:20:16',1,25),(341,6,'Hamhuis Sandwich\'s',8,15,-1,4,23,17,2,2.35,181,0.919,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,8),(342,6,'Yippee Kai Yo Paille',8,17,15,8,79,40,3,1.51,96,0.941,'2013-12-30 22:20:16','2013-12-30 22:20:16',9,31),(343,6,'At the Helm',9,17,-8,12,56,35,1,3.27,216,0.904,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,36),(344,6,'Teemu\'s Salami',8,11,9,6,46,32,3,3.26,159,0.898,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,15),(345,6,'Chris\'s Team',3,19,2,9,18,19,0,4.34,58,0.829,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,20),(346,6,'Big Douche-Hayne',9,19,-7,12,46,45,3,2.47,137,0.913,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,14),(347,6,'Keith\'s Great Team',8,7,6,6,47,20,3,1.72,113,0.942,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,13),(348,7,'Double Pennertration',9,7,-2,0,74,31,3,3.49,111,0.867,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,30),(349,7,'Lookin Sharp',10,11,4,7,78,29,5,2.23,206,0.928,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,39),(350,7,'The Saadfather',15,21,9,11,59,50,1,2.98,84,0.903,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,19),(351,7,'Hamhuis Sandwich\'s',9,21,-1,12,20,27,1,2.41,193,0.919,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,14),(352,7,'Yippee Kai Yo Paille',7,18,-6,11,81,53,3,2.31,107,0.915,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,42),(353,7,'At the Helm',12,14,-5,6,44,45,2,2.84,138,0.914,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,22),(354,7,'Teemu\'s Salami',10,13,-7,8,65,43,4,1.58,99,0.925,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,33),(355,7,'Chris\'s Team',11,21,17,9,34,35,0,1.85,87,0.935,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,24),(356,7,'Big Douche-Hayne',8,23,8,7,60,48,2,2.62,91,0.91,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,24),(357,7,'Keith\'s Great Team',8,9,-12,6,56,30,3,2.08,139,0.927,'2013-12-30 22:20:16','2013-12-30 22:20:16',6,36),(358,8,'Double Pennertration',10,13,2,5,65,42,1,3.04,118,0.908,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,30),(359,8,'Lookin Sharp',5,14,-9,8,51,44,2,3.78,136,0.872,'2013-12-30 22:20:16','2013-12-30 22:20:16',2,21),(360,8,'The Saadfather',12,19,0,12,55,49,0,5.6,34,0.756,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,43),(361,8,'Hamhuis Sandwich\'s',11,15,-5,11,25,23,6,1.7,192,0.941,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,16),(362,8,'Yippee Kai Yo Paille',9,18,-3,10,84,32,4,1.98,122,0.924,'2013-12-30 22:20:16','2013-12-30 22:20:16',7,32),(363,8,'At the Helm',11,18,0,13,51,30,1,3.4,72,0.889,'2013-12-30 22:20:16','2013-12-30 22:20:16',3,26),(364,8,'Teemu\'s Salami',9,7,-1,4,56,48,2,2.54,173,0.92,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,30),(365,8,'Chris\'s Team',11,15,0,12,43,26,2,2.36,140,0.933,'2013-12-30 22:20:16','2013-12-30 22:20:16',4,18),(366,8,'Big Douche-Hayne',9,15,-2,8,54,23,3,2.29,132,0.917,'2013-12-30 22:20:16','2013-12-30 22:20:16',8,22),(367,8,'Keith\'s Great Team',12,13,10,7,50,26,2,3.13,126,0.887,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,29),(368,9,'Double Pennertration',13,15,4,9,79,39,1,2.91,91,0.892,'2013-12-30 22:20:16','2013-12-30 22:20:16',5,10),(369,9,'Lookin Sharp',18,13,-5,16,56,43,1,3.03,198,0.888,'2013-12-30 22:20:17','2013-12-30 22:20:17',5,25),(370,9,'The Saadfather',12,17,-5,10,69,51,2,2.34,134,0.918,'2013-12-30 22:20:17','2013-12-30 22:20:17',10,38),(371,9,'Hamhuis Sandwich\'s',6,21,0,8,34,40,2,2.3,146,0.924,'2013-12-30 22:20:17','2013-12-30 22:20:17',3,16),(372,9,'Yippee Kai Yo Paille',12,20,8,12,75,48,3,2.03,127,0.934,'2013-12-30 22:20:17','2013-12-30 22:20:17',8,38),(373,9,'At the Helm',12,19,0,10,40,26,3,3.38,101,0.886,'2013-12-30 22:20:17','2013-12-30 22:20:17',4,36),(374,9,'Teemu\'s Salami',6,15,12,5,59,43,2,3.11,125,0.893,'2013-12-30 22:20:17','2013-12-30 22:20:17',7,39),(375,9,'Chris\'s Team',13,26,9,19,40,39,4,2.94,157,0.908,'2013-12-30 22:20:17','2013-12-30 22:20:17',8,24),(376,9,'Big Douche-Hayne',13,10,-6,4,65,47,2,1,58,0.967,'2013-12-30 22:20:17','2013-12-30 22:20:17',1,18),(377,9,'Keith\'s Great Team',12,15,8,8,50,23,3,3.28,117,0.893,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,22),(378,10,'Double Pennertration',10,14,-3,8,65,29,4,2.37,123,0.904,'2013-12-30 22:20:17','2013-12-30 22:20:17',7,33),(379,10,'Lookin Sharp',11,12,9,6,78,32,3,3.03,144,0.889,'2013-12-30 22:20:17','2013-12-30 22:20:17',5,28),(380,10,'The Saadfather',4,8,4,1,44,25,3,1.94,183,0.938,'2013-12-30 22:20:17','2013-12-30 22:20:17',4,16),(381,10,'Hamhuis Sandwich\'s',5,11,-4,4,30,28,2,1.89,54,0.931,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,16),(382,10,'Yippee Kai Yo Paille',9,13,13,4,106,52,5,2.81,194,0.907,'2013-12-30 22:20:17','2013-12-30 22:20:17',6,26),(383,10,'At the Helm',10,11,0,8,39,28,1,3.18,111,0.895,'2013-12-30 22:20:17','2013-12-30 22:20:17',7,25),(384,10,'Teemu\'s Salami',12,22,6,12,57,36,0,2.17,74,0.925,'2013-12-30 22:20:17','2013-12-30 22:20:17',5,10),(385,10,'Chris\'s Team',8,16,6,6,33,24,2,3.36,128,0.877,'2013-12-30 22:20:17','2013-12-30 22:20:17',4,8),(386,10,'Big Douche-Hayne',19,28,13,15,44,35,2,2.46,110,0.917,'2013-12-30 22:20:17','2013-12-30 22:20:17',11,51),(387,10,'Keith\'s Great Team',10,12,-13,10,62,21,4,2.11,170,0.919,'2013-12-30 22:20:17','2013-12-30 22:20:17',5,25),(388,11,'Double Pennertration',12,20,10,5,49,42,1,2.25,42,0.933,'2013-12-30 22:20:17','2013-12-30 22:20:17',8,10),(389,11,'Lookin Sharp',12,13,10,8,65,26,4,3.74,133,0.869,'2013-12-30 22:20:17','2013-12-30 22:20:17',7,36),(390,11,'The Saadfather',8,17,7,7,54,21,1,1.95,166,0.938,'2013-12-30 22:20:17','2013-12-30 22:20:17',4,19),(391,11,'Hamhuis Sandwich\'s',4,15,-1,7,18,29,1,2.28,74,0.914,'2013-12-30 22:20:17','2013-12-30 22:20:17',2,6),(392,11,'Yippee Kai Yo Paille',9,16,14,10,53,26,2,2.91,78,0.897,'2013-12-30 22:20:17','2013-12-30 22:20:17',5,12),(393,11,'At the Helm',11,27,5,14,27,27,2,2.92,46,0.836,'2013-12-30 22:20:17','2013-12-30 22:20:17',5,27),(394,11,'Teemu\'s Salami',6,11,-18,5,55,48,3,2.32,177,0.937,'2013-12-30 22:20:17','2013-12-30 22:20:17',7,16),(395,11,'Chris\'s Team',6,19,-14,12,16,25,3,2.68,105,0.905,'2013-12-30 22:20:17','2013-12-30 22:20:17',6,10),(396,11,'Big Douche-Hayne',7,11,-11,6,34,34,2,2.08,92,0.939,'2013-12-30 22:20:17','2013-12-30 22:20:17',5,6),(397,11,'Keith\'s Great Team',11,15,5,8,45,29,0,4.16,55,0.846,'2013-12-30 22:20:17','2013-12-30 22:20:17',4,14),(398,12,'Double Pennertration',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(399,12,'Lookin Sharp',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(400,12,'The Saadfather',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(401,12,'Hamhuis Sandwich\'s',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(402,12,'Yippee Kai Yo Paille',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(403,12,'At the Helm',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(404,12,'Teemu\'s Salami',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(405,12,'Chris\'s Team',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(406,12,'Big Douche-Hayne',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(407,12,'Keith\'s Great Team',0,0,0,0,0,0,0,0,0,0,'2013-12-30 22:20:17','2013-12-30 22:20:17',0,0),(408,12,'Double Pennertration',3,20,-5,6,56,22,1,3.35,78,0.907,'2014-01-06 21:26:50','2014-01-06 21:26:50',6,16),(409,12,'Lookin Sharp',17,22,5,10,54,48,3,3.3,159,0.903,'2014-01-06 21:26:50','2014-01-06 21:26:50',8,41),(410,12,'The Saadfather',13,9,6,2,56,26,3,3.09,206,0.9,'2014-01-06 21:26:50','2014-01-06 21:26:50',8,20),(411,12,'Hamhuis Sandwich\'s',9,20,2,10,28,15,2,2.27,77,0.906,'2014-01-06 21:26:50','2014-01-06 21:26:50',2,22),(412,12,'Yippee Kai Yo Paille',16,21,-3,13,71,31,3,3.63,185,0.894,'2014-01-06 21:26:50','2014-01-06 21:26:50',5,14),(413,12,'At the Helm',13,12,6,3,35,25,2,2.68,58,0.879,'2014-01-06 21:26:50','2014-01-06 21:26:50',5,6),(414,12,'Teemu\'s Salami',16,15,7,10,52,60,1,3.37,88,0.907,'2014-01-06 21:26:50','2014-01-06 21:26:50',4,27),(415,12,'Chris\'s Team',16,18,12,10,36,27,4,3.26,142,0.866,'2014-01-06 21:26:50','2014-01-06 21:26:50',5,20),(416,12,'Big Douche-Hayne',10,18,1,7,47,32,3,1.58,144,0.947,'2014-01-06 21:26:50','2014-01-06 21:26:50',5,26),(417,12,'Keith\'s Great Team',8,16,-3,2,40,33,0,3.18,64,0.889,'2014-01-06 21:26:50','2014-01-06 21:26:50',2,15);
/*!40000 ALTER TABLE `weeks` ENABLE KEYS */;
UNLOCK TABLES;
