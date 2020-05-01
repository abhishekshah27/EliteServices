/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 5.5.0-m2-community : Database - eliteservices
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`eliteservices` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `eliteservices`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `id` varchar(10) NOT NULL,
  `pass` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`id`,`pass`) values ('a','1'),('abhi','1234'),('admin','1234');

/*Table structure for table `allservices` */

DROP TABLE IF EXISTS `allservices`;

CREATE TABLE `allservices` (
  `se_id` int(2) NOT NULL AUTO_INCREMENT,
  `se_name` varchar(50) NOT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `allservices` */

insert  into `allservices`(`se_id`,`se_name`) values (1,'Interior Designer'),(2,'Home Deep Cleaning'),(3,'Kitchen Deep Cleaning'),(4,'Bathroom Cleaning'),(5,'Sofa Cleaning'),(6,'Pest Control'),(7,'Electrician'),(8,'Plumber'),(9,'Carpenter'),(10,'Laptop or PC repair'),(11,'TV Installation & Repair'),(12,'AC Service & Repair'),(13,'Refrigerator Repair'),(14,'Washing Machine Repair'),(15,'Pre-Wedding Photoshoot'),(16,'Wedding Planner'),(17,'Wedding Photographer'),(18,'Wedding Caterer'),(19,'Event Photographer'),(20,'Birthday Party Planner'),(21,'Yoga Trainer at Home'),(22,'Physiotherapy at Home'),(23,'Dietician'),(24,'Fitness Trainer at Home'),(25,'Makeup & Hairstyling'),(26,'Bridal Makeup Artist'),(27,'Massage For Men'),(28,'Web Designer & Developer'),(29,'Income-Tax Filing'),(30,'CA for Small Business');

/*Table structure for table `beauty_master` */

DROP TABLE IF EXISTS `beauty_master`;

CREATE TABLE `beauty_master` (
  `se_id` int(2) NOT NULL AUTO_INCREMENT,
  `se_name` varchar(50) NOT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

/*Data for the table `beauty_master` */

insert  into `beauty_master`(`se_id`,`se_name`) values (25,'Makeup & Hairstyling'),(26,'Bridal Makeup Artist'),(27,'Massage For Men');

/*Table structure for table `booking` */

DROP TABLE IF EXISTS `booking`;

CREATE TABLE `booking` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `ser` varchar(50) NOT NULL,
  `req` varchar(300) DEFAULT NULL,
  `date1` date NOT NULL,
  `time1` varchar(50) NOT NULL,
  `name1` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `add1` varchar(200) NOT NULL,
  `phon` varchar(10) NOT NULL,
  `sp_name` varchar(50) NOT NULL,
  `feedback` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `booking` */

insert  into `booking`(`id`,`ser`,`req`,`date1`,`time1`,`name1`,`email`,`add1`,`phon`,`sp_name`,`feedback`) values (1,'Home Interiors','','2019-05-02','10:00','manav','manav@gmail.com','c-26 omniketan','9329487644','ankit','1'),(2,'Yoga Trainer At Home','','2019-04-28','09:00','manav','manav@gmail.com','c-26 omniketan','9329487644','meet','0'),(3,'Lights','','2019-04-27','09:00','tirth','tirth@gmail.com','aarti avenue','9273347383','nirav','0'),(4,'Income-Tax Filing','','2019-04-27','16:05','abhishek','adsh1135@gmail.com','c-14, omniketan soc','9104614266','chirag','0'),(5,'Full Wedding Planner','','2019-04-23','13:00','abhishek','adsh1135@gmail.com','c-14, omniketan soc','9104614266','hetal','0'),(6,'Fitness Trainer At Home','','2019-04-24','15:00','tirth','tirth@gmail.com','aarti avenue','9273347383','bhavin','0'),(7,'Photos Only','','2019-04-30','14:00','nirmal','nirmal@gmail.com','kulin appartment','7554743434','keyur','0'),(8,'Hairstyles','','2019-04-25','11:00','helly','helly@gmail.com','c-14 omniketan','9236372823','krunal','0'),(9,'AC Gas Refill','gas','2019-04-28','15:30','helly','helly@gmail.com','c-14 omniketan','9236372823','manan','0');

/*Table structure for table `business_master` */

DROP TABLE IF EXISTS `business_master`;

CREATE TABLE `business_master` (
  `se_id` int(2) NOT NULL AUTO_INCREMENT,
  `se_name` varchar(50) NOT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `business_master` */

insert  into `business_master`(`se_id`,`se_name`) values (28,'Web Designer & Developer'),(29,'Income-Tax Filing'),(30,'CA for Small Business');

/*Table structure for table `contact` */

DROP TABLE IF EXISTS `contact`;

CREATE TABLE `contact` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `message` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `contact` */

insert  into `contact`(`id`,`name`,`phone`,`email`,`message`) values (1,'abhi','9329448484','abhi@gmail.com','hello'),(2,'shubham','9765453232','shubham@gmail.com','hii'),(3,'manav','9218218118','mana@gmail.com','contact me'),(4,'hemal','9372323823','hem@gmail.com','call me');

/*Table structure for table `events_master` */

DROP TABLE IF EXISTS `events_master`;

CREATE TABLE `events_master` (
  `se_id` int(2) NOT NULL AUTO_INCREMENT,
  `se_name` varchar(50) NOT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `events_master` */

insert  into `events_master`(`se_id`,`se_name`) values (15,'Pre-Wedding Photoshoot'),(16,'Wedding Planner'),(17,'Wedding Photographer'),(18,'Wedding Caterer'),(19,'Event Photographer'),(20,'Birthday Party Planner');

/*Table structure for table `feedback` */

DROP TABLE IF EXISTS `feedback`;

CREATE TABLE `feedback` (
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `feedbackmsg` varchar(300) NOT NULL,
  `sp_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `feedback` */

insert  into `feedback`(`name`,`email`,`feedbackmsg`,`sp_name`) values ('manav','manav@gmail.com','awesome\r\n','ankit');

/*Table structure for table `health_master` */

DROP TABLE IF EXISTS `health_master`;

CREATE TABLE `health_master` (
  `se_id` int(2) NOT NULL AUTO_INCREMENT,
  `se_name` varchar(50) NOT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `health_master` */

insert  into `health_master`(`se_id`,`se_name`) values (21,'Yoga Trainer At Home'),(22,'Physiotherapy At Home'),(23,'Dietician'),(24,'Fitness Trainer At Home');

/*Table structure for table `homecare_master` */

DROP TABLE IF EXISTS `homecare_master`;

CREATE TABLE `homecare_master` (
  `se_id` int(2) NOT NULL AUTO_INCREMENT,
  `se_name` varchar(50) NOT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `homecare_master` */

insert  into `homecare_master`(`se_id`,`se_name`) values (1,'Interior Designer'),(2,'Home Deep Cleaning'),(3,'Kitchen Deep Cleaning'),(4,'Bathroom Cleaning'),(5,'Sofa Cleaning'),(6,'Pest Control');

/*Table structure for table `repair_master` */

DROP TABLE IF EXISTS `repair_master`;

CREATE TABLE `repair_master` (
  `se_id` int(2) NOT NULL AUTO_INCREMENT,
  `se_name` varchar(50) NOT NULL,
  PRIMARY KEY (`se_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `repair_master` */

insert  into `repair_master`(`se_id`,`se_name`) values (7,'Electrician'),(8,'Plumber'),(9,'Carpenter'),(10,'Laptop or PC Repair'),(11,'TV Installation & Repair'),(12,'AC Service & Repair'),(13,'Refrigerator Repair'),(14,'Washing Machine Repair');

/*Table structure for table `serviceprovider` */

DROP TABLE IF EXISTS `serviceprovider`;

CREATE TABLE `serviceprovider` (
  `id` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phon` varchar(10) NOT NULL,
  `se_name` varchar(50) NOT NULL,
  `se_id` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `serviceprovider` */

insert  into `serviceprovider`(`id`,`pass`,`email`,`phon`,`se_name`,`se_id`) values ('ankit','Ankit@123','ankit@gmail.com','9212468298','Interior Designer',1),('nirav','Nirav@123','nirav@gmail.com','9233845764','Electrician',7),('henil','Henil@123','henil@gmail.com','9745467582','Wedding Photographer',17),('meet','Meet@123','meet@gmail.com','9843547382','Yoga Trainer at Home',21),('krunal','Krunal@123','krunal@gmail.com','9384783499','Makeup & Hairstyling',25),('chirag','Chirag@123','chirag@gmail.com','7534372832','Income-Tax Filing',29),('arvind','Arvind@123','arvind@gmail.com','9324757434','Home Deep Cleaning',2),('prit','Prit@123','prit@gmail.com','9347583232','Kitchen Deep Cleaning',3),('rasesh','Rasesh@123','rasesh@gmail.com','9765432345','Laptop or PC repair',10),('jitu','Jitu@123','jitu@gmail.com','9283457833','CA for Small Business',30),('hitesh','Hitesh@123','hitesh@gmail.com','7343434431','Bridal Makeup Artist',26),('saket','Saket@123','saket@gmail.com','9328494584','Physiotherapy at Home',22),('hetal','Hetal@123','hetal@gmail.com','8765342233','Wedding Planner',16),('hiral','Hiral@123','hiral@gmail.com','9284358753','Dietician',23),('divya','Divya@123','divya@gmail.com','9347343434','Washing Machine Repair',0),('vijay','Vijay@123','vijay@gmail.com','9937533434','Plumber',8),('haresh','Haresh@123','haresh@gmail.com','9238435344','Pest Control',6),('malay','Malay@123','malay@gmail.com','9238435243','Sofa Cleaning',0),('manish','Manish@123','manish@gmail.com','9327323232','Carpenter',0),('anil','Anil@123','anil@gmail.com','9334743232','Wedding Caterer',18),('rahul','Rahul@123','rahul@gmail.com','9237323222','TV Installation & Repair',0),('manan','Manan@123','manan@gmail.com','8237232322','AC Service & Repair',12),('ashwin','Ashwin@123','ashwin@gmail.com','8232323211','Washing Machine Repair',13),('keyur','Keyur@123','keyur@gmail.com','8343434343','Pre-Wedding Photoshoot',15),('bharat','Bharat@123','bharat@gmail.com','7343334332','Event Photographer',19),('bhavdip','Bhavdip@123','bhavdip@gmail.com','8433232322','Birthday Party Planner',20),('bhavin','Bhavin@123','bhavin@gmail.com','8326323232','Fitness Trainer At Home',24),('dhruv','Dhruv@123','dhruv@gmail.com','7483434342','Bathroom Cleaning',4),('hardik','Hardik@123','hardik@gmail.com','8323232321','Massage For Men',27),('harsh','Harsh@123','harsh@gmail.com','9237232322','Web Designer & Developer',28);

/*Table structure for table `services` */

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `se_id` int(4) NOT NULL,
  `se_sub_id` int(4) NOT NULL AUTO_INCREMENT,
  `se_sub_name` varchar(50) NOT NULL,
  PRIMARY KEY (`se_sub_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=latin1;

/*Data for the table `services` */

insert  into `services`(`se_id`,`se_sub_id`,`se_sub_name`) values (1,1,'Home Interiors'),(1,2,'Office Interiors'),(1,3,'Other Spaces'),(2,4,'Full Home Deep Cleaning'),(2,5,'General Cleaning(Manual Cleaning)'),(2,6,'Post-Party Cleaning'),(2,7,'Floor Scrubbing & Polishing'),(3,8,'1 Kitchen'),(3,9,'2 Kitchens'),(3,10,'3 or More Kitchens'),(4,11,'1 Bathroom'),(4,12,'2 Bathrooms'),(4,13,'3 or More Bathrooms'),(5,14,'1 Sofa'),(5,15,'2 Sofas'),(5,16,'3 or More Sofas'),(6,17,'Termite Control'),(6,18,'Cockroach Control'),(6,19,'Ant Control'),(6,20,'Mosquito Control'),(6,21,'General Pest Control'),(6,22,'Wood Borer Control'),(7,23,'Wiring'),(7,24,'Fans'),(7,25,'Lights'),(7,26,'Switches,Meters & Fuses'),(7,27,'Other Electric Problem'),(8,28,'Tap, Wash Basin & Sink'),(8,29,'Toilet & Sanitary Work'),(8,30,'Bathroom Fittings'),(8,31,'Pipelines & Pumps'),(8,32,'Other Plumbing Work'),(9,33,'Bolt, Latch, Handle Work'),(9,34,'Furniture Installation, Assembly or Repair'),(9,35,'Other Carpentry Work'),(10,36,'Hardware Problem'),(10,37,'Software Problem'),(11,38,'TV Installation'),(11,39,'TV Repair'),(12,40,'AC Gas Refill'),(12,41,'AC General Service'),(12,42,'AC Repair'),(13,43,'Refrigerator Gas Refill'),(13,44,'Refrigerator General Service'),(13,45,'Refrigerator Repair'),(14,46,'Washing Machine General Service'),(14,47,'Washing Machine Repair'),(15,48,'Photos Only'),(15,49,'Photos & Videos Both'),(16,50,'Full Wedding Planner'),(16,51,'Engagement Only'),(16,52,'Reception Only'),(16,53,'Sangeet Only'),(16,54,'Other Wedding Events'),(17,55,'Only  Photography'),(17,56,'Only  Videography'),(17,57,'Both Photography & Videography'),(18,58,'Rs. 300/dish'),(18,59,'Rs. 500/dish'),(18,60,'Rs. 700/dish'),(18,61,'Other Budget'),(19,62,'For 1 Hour'),(19,63,'1-3 hours'),(19,64,'Half Day'),(19,65,'Full Day'),(20,66,'Kid\'s Birthday'),(20,67,'Teen\'s Birthday'),(20,68,'Adult\'s Birthday'),(21,69,'Yoga Trainer At Home'),(22,70,'Physiotherapy At Home'),(23,71,'Dietician'),(24,72,'Fitness Trainer At Home'),(25,73,'Makeup'),(25,74,'Hairstyles'),(26,75,'Bridal Makeup'),(27,76,'Massage For Men'),(28,77,'For New Website'),(28,78,'Re-Design/Update in Existing Website'),(29,79,'Income-Tax Filing'),(30,80,'CA for Small Business');

/*Table structure for table `signup` */

DROP TABLE IF EXISTS `signup`;

CREATE TABLE `signup` (
  `uid` int(3) NOT NULL AUTO_INCREMENT,
  `uname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `phon` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `signup` */

insert  into `signup`(`uid`,`uname`,`email`,`pass`,`address`,`phon`,`city`) values (1,'abhishek','adsh1135@gmail.com','Abhi@123','c-14, omniketan soc','9104614266','Ahmedabad'),(2,'shubham','shubh17399@gmail.com','Shubh@123','susmita flat','9234942322','Ahmedabad'),(3,'manav','manav@gmail.com','Manav@123','c-26 omniketan','9329487644','Ahmedabad'),(4,'tirth','tirth@gmail.com','Tirth@123','aarti avenue','9273347383','Ahmedabad'),(5,'hemal','hemal@gmail.com','Hemal@123','c-39 omniketan','9286434634','Ahmedabad'),(6,'bhavya','bhavya@gmail.com','Bhavya@123','b-5, omniketan','9328736889','Ahmedabad'),(7,'viransh','viransh@gmail.com','Viransh@123','a-8 omniketan','9376354636','Ahmedabad'),(8,'manush','manush@gmail.com','Manush@123','aanand dham','9238232323','Ahmedabad'),(9,'nirmal','nirmal@gmail.com','Nirmal@123','kulin appartment','7554743434','Ahmedabad'),(10,'darshit','darshit@gmail.com','Darshit@123','siddharth flat','8934543923','Ahmedabad'),(11,'jay','jay@gmail.com','Jay@1234','malay tenament','6734834349','Ahmedabad'),(12,'helly','helly@gmail.com','Helly@123','c-14 omniketan','9236372823','Ahmedabad'),(13,'priyal','priyal@gmail.com','Priyal@123','maninagar','6783923248','Ahmedabad'),(14,'shilpa','shilpa@gmail.com','Shilpa@123','c-14 omniketan','9234576748','Ahmedabad'),(15,'deepak','deepak@gmail.com','Deepak@123','c-14 omniketan ','9423283283','Ahmedabad');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
