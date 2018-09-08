-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: hta
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `__efmigrationshistory`
--

DROP TABLE IF EXISTS `__efmigrationshistory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `__efmigrationshistory` (
  `MigrationId` varchar(95) NOT NULL,
  `ProductVersion` varchar(32) NOT NULL,
  PRIMARY KEY (`MigrationId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `__efmigrationshistory`
--

LOCK TABLES `__efmigrationshistory` WRITE;
/*!40000 ALTER TABLE `__efmigrationshistory` DISABLE KEYS */;
INSERT INTO `__efmigrationshistory` VALUES ('20170909132259_thuan_000001','2.0.0-rtm-26452'),('20170910052929_thuan_000002','2.0.0-rtm-26452'),('20170910131321_thuan_000003','2.0.0-rtm-26452'),('20170911050135_thuan_000004','2.0.0-rtm-26452'),('20170911073238_thuan_000005','2.0.0-rtm-26452'),('20170912050112_thuan_000006','2.0.0-rtm-26452'),('20170912050559_thuan_000007','2.0.0-rtm-26452'),('20170912062954_thuan_000008','2.0.0-rtm-26452'),('20170913064301_thuan_000009','2.0.0-rtm-26452'),('20170913081326_thuan_000010','2.0.0-rtm-26452'),('20170913081828_thuan_000011','2.0.0-rtm-26452'),('20170915040908_thuan_000012','2.0.0-rtm-26452'),('20170915041553_thuan_000013','2.0.0-rtm-26452'),('20170915103325_thuan_000014','2.0.0-rtm-26452'),('20170915103919_thuan_000015','2.0.0-rtm-26452'),('20170915105312_thuan_000016','2.0.0-rtm-26452'),('20170915143703_thuan_000017','2.0.0-rtm-26452'),('20170915144546_thuan_000018','2.0.0-rtm-26452'),('20170915153708_thuan_000019','2.0.0-rtm-26452'),('20170916161226_thuan_000020','2.0.0-rtm-26452'),('20170917032516_thuan_000021','2.0.0-rtm-26452'),('20171006020554_thuan_000022','2.0.0-rtm-26452');
/*!40000 ALTER TABLE `__efmigrationshistory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `claim`
--

DROP TABLE IF EXISTS `claim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `claim` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimName` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `claim`
--

LOCK TABLES `claim` WRITE;
/*!40000 ALTER TABLE `claim` DISABLE KEYS */;
/*!40000 ALTER TABLE `claim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentcontact`
--

DROP TABLE IF EXISTS `contentcontact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentcontact` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(512) DEFAULT NULL,
  `Button` varchar(512) DEFAULT NULL,
  `ContactUs` varchar(512) DEFAULT NULL,
  `Content` varchar(512) DEFAULT NULL,
  `ErrorMessage` varchar(512) DEFAULT NULL,
  `HTEmail` varchar(512) DEFAULT NULL,
  `Language` int(11) DEFAULT NULL,
  `Loading` varchar(512) DEFAULT NULL,
  `Mail` varchar(512) DEFAULT NULL,
  `MailHolder` varchar(512) DEFAULT NULL,
  `Message` varchar(512) DEFAULT NULL,
  `MessageHolder` varchar(512) DEFAULT NULL,
  `Name` varchar(512) DEFAULT NULL,
  `NameHolder` varchar(512) DEFAULT NULL,
  `Phone` varchar(512) DEFAULT NULL,
  `Received` varchar(512) DEFAULT NULL,
  `Skype` varchar(512) DEFAULT NULL,
  `Sorry` varchar(512) DEFAULT NULL,
  `SorryMessage` varchar(512) DEFAULT NULL,
  `Subject` varchar(512) DEFAULT NULL,
  `SubjectHolder` varchar(512) DEFAULT NULL,
  `Thanks` varchar(512) DEFAULT NULL,
  `ThanksMessage` varchar(512) DEFAULT NULL,
  `Title` varchar(512) DEFAULT NULL,
  `ContactPageTitle` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentcontact`
--

LOCK TABLES `contentcontact` WRITE;
/*!40000 ALTER TABLE `contentcontact` DISABLE KEYS */;
INSERT INTO `contentcontact` VALUES (1,'91 Võ Như Hưng, Đà Nẵng','GỬI','<br /> LIÊN HỆ','Nếu bạn cần bất kì sự giúp đỡ gì, hãy cho chung tôi biết bằng cách nhập vào form bên dưới. Chúng tôi sẽ liên lạc với bạn sớm nhất có thể.','Lỗi! Có lỗi xảy ra, xin vui lòng làm mới trang và thử lại. Nếu bạn vẫn tiếp tục gặp lỗi này, xin liên hệ với chúng tôi qua skype hoặc email.','services@htactive.com',1,'ĐANG GỬI...','Email của bạn','Vui lòng nhập email của bạn','Nội dung tin nhắn','Hãy cho chúng tôi biết vấn đề của bạn','Tên','Vui lòng nhập tên của bạn','0905 610 229','HT Active đã nhận được tin nhắn của bạn, chúng tôi sẽ liên lạc với bạn sớm nhất có thể.','hoangvhh','Không thể gửi.','Xin lỗi, đã có lỗi xảy ra, vui lòng thử lại sau.','Tiêu đề','Chúng tôi có thể giúp gì cho bạn?','Cảm ơn bạn!','Cảm ơn bạn đã gửi tin nhắn cho HT Active, chúng tôi sẽ liên lạc với bạn sớm nhất có thể.','<strong>HT ACTIVE</strong>','Liên hệ'),(2,'91 Vo Nhu Hung, Danang, Vietnam.','SEND','<br /> CONTACT','If you need anything from us, please don\'t hesitate to contact with us via bellow form. We will contact you as soon as possible.','Oops! Something went wrong please refresh the page and try again.','services@htactive.com',2,'SENDING...','Your Email','Please input your email address','Your Message','Please let us know your idea','Name','Please input your name','0905 610 229','We have received your message, we will contact you very soon.','hoangvhh','Submit fail...','Sorry, we meet some problems right now, please try again later','Subject','What can we do to assist you?','Thank you!','Thanks you for contacting with us. We will contact you as soon as possible!','<strong>HT ACTIVE</strong>','Contact');
/*!40000 ALTER TABLE `contentcontact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentfooter`
--

DROP TABLE IF EXISTS `contentfooter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentfooter` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AboutUsHref` varchar(512) DEFAULT NULL,
  `AboutUsText` varchar(512) DEFAULT NULL,
  `Address` varchar(512) DEFAULT NULL,
  `Address2` varchar(512) DEFAULT NULL,
  `Content1` varchar(512) DEFAULT NULL,
  `CopyRight` varchar(512) DEFAULT NULL,
  `Email` varchar(512) DEFAULT NULL,
  `Facebook` varchar(512) DEFAULT NULL,
  `Flickr` varchar(512) DEFAULT NULL,
  `GooglePlus` varchar(512) DEFAULT NULL,
  `Language` int(11) DEFAULT NULL,
  `LinkedIn` varchar(512) DEFAULT NULL,
  `Mobile` varchar(512) DEFAULT NULL,
  `Phone` varchar(512) DEFAULT NULL,
  `Pinterest` varchar(512) DEFAULT NULL,
  `Skype` varchar(512) DEFAULT NULL,
  `Slogan` varchar(512) DEFAULT NULL,
  `Twitter` varchar(512) DEFAULT NULL,
  `YouTube` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentfooter`
--

LOCK TABLES `contentfooter` WRITE;
/*!40000 ALTER TABLE `contentfooter` DISABLE KEYS */;
INSERT INTO `contentfooter` VALUES (1,'/about','About Us','63 Phan Dang Luu<br><span style=\"margin-left: 30px;\">Da Nang, Viet Nam</span>','Da Nang, Viet Nam','Your satisfaction is our success!','Copyright © 2016 by HT Active. All Rights Reserved.','services@htactive.com','https://facebook.com/vhhoang','https://www.flickr.com/photos/124606867@N06/','https://plus.google.com/u/0/117715430853979848085',2,'https://www.linkedin.com/in/hoang-pham-6236b8b7','(+84) 1227 423 919','(+84) 905 610 229','https://www.pinterest.com/vhhoang/','skype:hoangvhh','Your Satisfaction Is Our Success','https://twitter.com/hoangvhh','http://www.youtube.com'),(2,'/about','Về chúng tôi','63 Phan Đăng Lưu<br><span style=\"margin-left: 30px;\">Đà Nẵng, Việt Nam</span>','Da Nang, Viet Nam','HT Active - Sự hài lòng của bạn là thành công của chúng tôi.','Copyright © 2016 by HT Active. All Rights Reserved.','services@htactive.com','https://facebook.com/vhhoang','https://www.flickr.com/photos/124606867@N06/','https://plus.google.com/u/0/117715430853979848085',1,'https://www.linkedin.com/in/hoang-pham-6236b8b7','01227 423 919','0905 610 229','https://www.pinterest.com/vhhoang/','skype:hoangvhh','Your Satisfaction Is Our Success','https://twitter.com/hoangvhh','http://www.youtube.com');
/*!40000 ALTER TABLE `contentfooter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentindex`
--

DROP TABLE IF EXISTS `contentindex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentindex` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `AboutUsContent` varchar(512) DEFAULT NULL,
  `AboutUsLeftContent` varchar(512) DEFAULT NULL,
  `AboutUsLeftSrc` varchar(512) DEFAULT NULL,
  `AboutUsLeftSubContent` varchar(512) DEFAULT NULL,
  `AboutUsLeftTitle` varchar(512) DEFAULT NULL,
  `AboutUsLeftUrl` varchar(512) DEFAULT NULL,
  `AboutUsTitle` varchar(512) DEFAULT NULL,
  `ButtonContact` varchar(512) DEFAULT NULL,
  `ButtonReadMore` varchar(512) DEFAULT NULL,
  `ContactContent` varchar(512) DEFAULT NULL,
  `ContactTitle` varchar(512) DEFAULT NULL,
  `FeatureContent` varchar(512) DEFAULT NULL,
  `FeatureTitle` varchar(512) DEFAULT NULL,
  `Language` int(11) DEFAULT NULL,
  `PolicyContent` varchar(512) DEFAULT NULL,
  `PolicyTitle` varchar(512) DEFAULT NULL,
  `WhyChooseContent` varchar(512) DEFAULT NULL,
  `WhyChooseTitle` varchar(512) DEFAULT NULL,
  `HomePageTitle` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentindex`
--

LOCK TABLES `contentindex` WRITE;
/*!40000 ALTER TABLE `contentindex` DISABLE KEYS */;
INSERT INTO `contentindex` VALUES (1,'HT Active is the team of Young & Brilliant people. We will help and support all you need about Software Solutions. We’re developers, designers, support specialists and gamers. We have all you needs.','HT Active wouldn’t be what it is without the incredible and loving contributions of our member. Thanks to everyone who’s put their heart and their energy into this community.','/assets/voc/images/section-image-2.png','We work on the services, product and comunication. We love what we do, and who we do it with. To HT Active, all customers are friends.','Meet the team - HT Active','/about','ABOUT HT ACTIVE','Contact','Read More','We will reply your message as soon as possible.','DON\'T MISS OUT, CONTACT US NOW!','By using our services, you will get all of the great experience.','SERVICE',2,'We strive to offer the best solution for your business.','WELCOME TO HT ACTIVE!','HT Active offers a great service in the design, development and programming of your website/application. We strive to offer the best solution for your business and impartial advice at an honest price. We are constantly investigating new technologies and recommend them when they make sense.','WHY CHOOSE HT ACTIVE','Home'),(2,'Chúng tôi, những bạn trẻ năng động và sáng tạo, những con người đam mê và cầu tiến, những chuyên viên phần mền đầy năng lực và nhiệt huyết, sẵn sàng mang đến tính chuyên nghiệp và sự hài lòng.','HT Active sẽ không bao giờ hoạt động nếu thiếu đi sự đóng góp của mỗi thành viên, sự tin tưởng của khách hàng. Cảm ơn mọi người vì đã luôn ủng hộ và đặt niềm tin vào HT Active.','/assets/voc/images/section-image-2.png','Chúng tôi hỗ trợ những dịch vụ, tạo ra các sản phẩm và truyển thông. Chúng tôi yêu thích những gì mình làm ra, và cả những người bạn cùng hợp tác.','Đến với HT Active','/about','VỀ HT ACTIVE','Liên hệ','Tìm hiểu thêm','Chúng tôi sẽ trả lời yêu cầu của bạn trong thời gian sớm nhất.','ĐỪNG BỎ LỠ CƠ HỘI, LIÊN HỆ NGAY','Cung cấp các giải pháp phần mềm chuyên nghiệp hỗ trợ mọi nền tảng, mọi ngôn ngữ.','DỊCH VỤ',1,'Chúng tôi cung cấp cho bạn một giải pháp công nghệ toàn diện!','WELCOME!','HT Active cung cấp chất lượng tuyệt vời trong thiết kế, phát triển và lập trình trang web hay ứng dụng của bạn. Chúng tôi hướng đến những giải pháp tốt nhất cho công việc của bạn và tư vấn nhiệt tình với một mực giá thấp nhất. Chúng tôi không ngừng nghiên cứu những công nghệ mới và áp dụng vào sản p','TẠI SAO NÊN CHỌN HT ACTIVE','Trang chủ');
/*!40000 ALTER TABLE `contentindex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentindexaboutusright`
--

DROP TABLE IF EXISTS `contentindexaboutusright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentindexaboutusright` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(512) DEFAULT NULL,
  `ContentIndexId` int(11) DEFAULT NULL,
  `Icon` varchar(512) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Title` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ContentIndexAboutUsRight_ContentIndexId` (`ContentIndexId`),
  CONSTRAINT `FK_ContentIndexAboutUsRight_ContentIndex_ContentIndexId` FOREIGN KEY (`ContentIndexId`) REFERENCES `contentindex` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentindexaboutusright`
--

LOCK TABLES `contentindexaboutusright` WRITE;
/*!40000 ALTER TABLE `contentindexaboutusright` DISABLE KEYS */;
INSERT INTO `contentindexaboutusright` VALUES (1,'Professional ethics is the number one criteria. For customer, we will always be honest because only the trust and satisfaction of customers bring us success.',1,'fa fa-gavel',1,'Reliance'),(2,'We measure our success as a company by how well we achieve, not by the size of our profits. We\'ll do our best to bring you just the satisfied in the fastest way. When the service provider is not good just as committed, HT Active will refund to you. There will always be so.',1,'fa fa-star',2,'Fast and high quality commitment'),(3,'We do services not only for the profits, but also by the passion. We’re developers, designers, support specialists and gamers. We all love programing. Our services will savings and efficiency.',1,'fa fa-usd',3,'Savings and Efficiency'),(4,'HT Active will always support, serve, and maintain our customer for long term. Beside that, we provide a live chat system, working 24/7, that will help you immediate access to help.',1,'fa fa-weixin',4,'24/7 Supporting'),(5,'Phong cách làm việc chuyên nghiệp là tiêu chí hàng đầu của chúng tôi. HT Active luôn hỗ trợ khách hàng tốt nhất có thể bỏi vì chỉ có lòng tin và sự hài lòng của bạn là mục tiêu của chúng tôi.',2,'fa fa-gavel',1,'Sự tín nhiệm'),(6,'Sự phát triển của HT Active dựa vào chất lượng sản phẩm do chúng tôi làm ra, luôn làm những gì tốt nhất để mang đến sự hài lòng nhanh nhất. Nếu như chất lượng sản phẩm không đúng như đã cam kết, HT Active sẽ hoàn lại tiền đầu tư của các bạn, sẽ luôn là như vậy.',2,'fa fa-star',2,'Cam kết chất lượng tốt nhất cho sản phẩm'),(7,'Chúng tôi làm với sự đam mê công việc, và luôn xem khách hàng làm ưu tiên cao nhất. Vì vậy, cung cấp những giải pháp tối ưu với mức giá phải chăng luôn là mục tiêu của HT Active.',2,'fa fa-usd',3,'Tiết kiệm và hiệu quả'),(8,'HT Active luôn luôn hỗ trợ, bảo trì sản phẩm dài hạn. Ngoài ra, chúng tôi còn có hệ thống kênh chat hoạt động 24/7, sẵn sàng phục vụ khi bạn cần.',2,'fa fa-weixin',4,'Hỗ trợ 24/7');
/*!40000 ALTER TABLE `contentindexaboutusright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentindexfeature`
--

DROP TABLE IF EXISTS `contentindexfeature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentindexfeature` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(512) DEFAULT NULL,
  `ContentIndexId` int(11) DEFAULT NULL,
  `Icon` varchar(512) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Title` varchar(512) DEFAULT NULL,
  `Url` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ContentIndexFeature_ContentIndexId` (`ContentIndexId`),
  CONSTRAINT `FK_ContentIndexFeature_ContentIndex_ContentIndexId` FOREIGN KEY (`ContentIndexId`) REFERENCES `contentindex` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentindexfeature`
--

LOCK TABLES `contentindexfeature` WRITE;
/*!40000 ALTER TABLE `contentindexfeature` DISABLE KEYS */;
INSERT INTO `contentindexfeature` VALUES (1,'Design and develop web applications, hosting service, domain, SEO.',1,'fa fa-laptop',1,'Web applications','services'),(2,'Design and develop mobile applications, publish and app store optimization.',1,'fa fa-mobile',2,'Mobile Applications','services'),(3,'Design and develop mobile games, publish and app store optimization.',1,'fa fa-gamepad',3,'Mobile Games','services'),(4,'Gia công và thiết kế website theo yêu cầu, giải pháp máy chủ, tên miền, tối ưu hóa SEO...',2,'fa fa-laptop',1,'Ứng dụng web','services'),(5,'Thiết kế và lập trình ứng dụng di động, cung cấp giải pháp xuất bản và quảng bá...',2,'fa fa-mobile',2,'Ứng dụng di động','services'),(6,'Thiết kế và lập trình game di động, cung cấp giải pháp xuất bản và quảng bá, tối ưu hóa.',2,'fa fa-gamepad',3,'Game di động','services');
/*!40000 ALTER TABLE `contentindexfeature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentindextopslide`
--

DROP TABLE IF EXISTS `contentindextopslide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentindextopslide` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ContentIndexId` int(11) DEFAULT NULL,
  `MainImageAlt` varchar(512) DEFAULT NULL,
  `MainImageSrc` varchar(512) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `RightImageAlt` varchar(512) DEFAULT NULL,
  `RightImageSrc` varchar(512) DEFAULT NULL,
  `SlideContents` varchar(512) DEFAULT NULL,
  `SlideFooter` varchar(512) DEFAULT NULL,
  `SlideTitle` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ContentIndexTopSlide_ContentIndexId` (`ContentIndexId`),
  CONSTRAINT `FK_ContentIndexTopSlide_ContentIndex_ContentIndexId` FOREIGN KEY (`ContentIndexId`) REFERENCES `contentindex` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentindextopslide`
--

LOCK TABLES `contentindextopslide` WRITE;
/*!40000 ALTER TABLE `contentindextopslide` DISABLE KEYS */;
INSERT INTO `contentindextopslide` VALUES (1,1,'HT','/assets/voc/images/slider-1.jpg',1,'HT','/assets/voc/images/slider-transparent.png','Provide Best Service_$_New Technology_$_Best quality_$_Support 24/7','And much more...','HT Active - Professional Software Solutions'),(2,1,'Services','/assets/voc/images/slider-background.jpg',2,'Services','/assets/voc/images/slider-2.png','Website Application_$_Windows Application_$_Mobile Application_$_Game','And more software solutions...','We Provide All You Need'),(3,1,'Services','/assets/voc/images/slider-3.jpg',3,'Services','/assets/voc/images/slider-transparent.png','Clean & Unique Design_$_After Sale Support_$_Cross-Browser / Cross-Platform Compatible_$_Young & Brilliant Team','Don\'t miss out!','Satisfaction Is What You Get'),(4,2,'HT','/assets/voc/images/slider-1.jpg',1,'HT Active','/assets/voc/images/slider-transparent.png','Mang đến dịch vụ tốt nhất_$_Công nghệ mới nhất_$_Chất lượng đảm bảo_$_Hỗ trợ 24/7','Và hơn thế nữa...','HT Active - Giải pháp công nghệ'),(5,2,'Services','/assets/voc/images/slider-background.jpg',2,'Services','/assets/voc/images/slider-2.png','Ứng dụng web_$_Ứng dụng Windows_$_Ứng dụng di động_$_Game di động','Và những giải pháp công nghệ mới nhất...','Cung cấp tất cả những gì bạn cần'),(6,2,'Services','/assets/voc/images/slider-3.jpg',3,'Services','/assets/voc/images/slider-transparent.png','Thiết kế độc đáo_$_Bảo hành sản phẩm_$_Tương thích đa nền tảng_$_Hỗ trợ toàn diện','Đừng bỏ lỡ cơ hội!','Sự hài lòng của bạn là mục tiêu của HT Active');
/*!40000 ALTER TABLE `contentindextopslide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentindexwhychoose`
--

DROP TABLE IF EXISTS `contentindexwhychoose`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentindexwhychoose` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(512) DEFAULT NULL,
  `ContentIndexId` int(11) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Src` varchar(512) DEFAULT NULL,
  `SubTitle` varchar(512) DEFAULT NULL,
  `Title` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ContentIndexWhyChoose_ContentIndexId` (`ContentIndexId`),
  CONSTRAINT `FK_ContentIndexWhyChoose_ContentIndex_ContentIndexId` FOREIGN KEY (`ContentIndexId`) REFERENCES `contentindex` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentindexwhychoose`
--

LOCK TABLES `contentindexwhychoose` WRITE;
/*!40000 ALTER TABLE `contentindexwhychoose` DISABLE KEYS */;
INSERT INTO `contentindexwhychoose` VALUES (1,'We love what we do, some might say a bit too much, and we bring enthusiasm and commitment to every project we work on. Put simply, if you want a partner who cares about your business, choose HT Active.',1,1,'/assets/voc/images/whychooseus.png','The Right Team For Your Project','THE RIGHT TEAM'),(2,'We listen, we discuss, we advise. We then select the best solution to fit. We don’t shoehorn projects and if we feel we’re not a good fit we’ll be honest and tell you from the outset. <br />We\'re experienced programmers, we love discussing and planning new projects and have years of knowledge and ex',1,2,'/assets/voc/images/whychooseus1.jpg','We Listen &amp; We Have Experience','WE LISTEN'),(3,'Whether it’s website or application, game..., system development or custom programming, we like to keep everything under one roof to make it easier for our customers. <br />We love nothing more than working on a great project with a fantastic client. We care about our clients and can often be found ',1,3,'/assets/voc/images/whychooseus2.jpg','More Creative & Technical, More Passionate','CREATIVE & TECHNICAL'),(4,'HT Active is \'one-stop-shop\' software solution agency providing everything you need to successfully market your business to customers. <br />Our services include planning and strategy, design and development, building and deploying web applications/mobile application/game belong with graphic design,',1,4,'/assets/voc/images/studio.png','Keep Everything Under One Roof','UNDER ONE ROOF'),(5,'Chúng tôi yêu thích những gì chúng tôi đang làm, mang đến sự hăng hái và cam kết trong từng sản phẩm, áp dụng những công nghệ mới nhất, với hiệu suất cao nhất cho khách hàng.',2,1,'/assets/voc/images/whychooseus.png','Mang đến chất lượng tốt nhất cho sản phẩm','Giải pháp tốt nhất'),(6,'Lắng nghe, thảo luận và đưa ra lời khuyên. Ý tưởng, kế hoạch và mục tiêu của bạn là ưu tiên của chúng tôi. Với HT Active, mỗi khách hàng cũng là một người bạn.',2,2,'/assets/voc/images/whychooseus1.jpg','Chúng tôi lắng nghe, chúng tôi tư vấn','Chúng tôi lắng nghe'),(7,'Dù đó là website, ứng dụng, game..., chúng tôi đều làm những sản phẩm tốt nhất cho bạn. Nếu bạn có ý tưởng, chúng tôi sẽ hoàn thiện nó. HT Active muốn làm ra những sản phẩm tuyệt vời cùng những khách hàng tuyệt vời.',2,3,'/assets/voc/images/whychooseus2.jpg','Nhiều sáng tạo, nhiều đam mê','Sáng tạo và chất lượng'),(8,'Những dịch vụ của HT Active bao gồm lên ý tưởng sản phẩm, thiết kế và phát triển, xây dựng và triển khai ứng dụng web/di động/game. Mọi thứ luôn được thống nhất, và hoạt động tại mọi nơi.',2,4,'/assets/voc/images/studio.png','Làm cho mọi thứ trở nên thống nhất','Tất cả trong một');
/*!40000 ALTER TABLE `contentindexwhychoose` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentmenu`
--

DROP TABLE IF EXISTS `contentmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentmenu` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ContentFooterId` int(11) DEFAULT NULL,
  `Link` varchar(512) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Tab` varchar(512) DEFAULT NULL,
  `Text` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ContentMenu_ContentFooterId` (`ContentFooterId`),
  CONSTRAINT `FK_ContentMenu_ContentFooter_ContentFooterId` FOREIGN KEY (`ContentFooterId`) REFERENCES `contentfooter` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentmenu`
--

LOCK TABLES `contentmenu` WRITE;
/*!40000 ALTER TABLE `contentmenu` DISABLE KEYS */;
INSERT INTO `contentmenu` VALUES (1,1,'',1,'index','Home'),(2,1,'services',2,'services','Service'),(3,1,'products',3,'products','Portfolios'),(4,1,'contact',5,'contact','Contact'),(5,2,'',1,'index','Trang chủ'),(6,2,'services',2,'services','Dịch vụ'),(7,2,'products',3,'products','Portfolios'),(8,2,'contact',5,'contact','Liên hệ'),(9,1,'news',4,'news','Blogs'),(10,2,'news',4,'news','Bài viết');
/*!40000 ALTER TABLE `contentmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentnews`
--

DROP TABLE IF EXISTS `contentnews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentnews` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ByText` varchar(512) DEFAULT NULL,
  `Language` int(11) NOT NULL,
  `ReadMoreText` varchar(512) DEFAULT NULL,
  `NewsPageTitle` varchar(512) DEFAULT NULL,
  `RelatedText` varchar(512) DEFAULT NULL,
  `ShareThisText` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentnews`
--

LOCK TABLES `contentnews` WRITE;
/*!40000 ALTER TABLE `contentnews` DISABLE KEYS */;
INSERT INTO `contentnews` VALUES (1,'bởi',1,'Đọc thêm','Tin tức','Bài liên quan','Chia sẻ'),(2,'by',2,'Read more','News','Related posts','Share this');
/*!40000 ALTER TABLE `contentnews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentproduct`
--

DROP TABLE IF EXISTS `contentproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentproduct` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ButtonReadMore` varchar(512) DEFAULT NULL,
  `Content` varchar(512) DEFAULT NULL,
  `Header1` varchar(512) DEFAULT NULL,
  `Header1Content` varchar(512) DEFAULT NULL,
  `Header2` varchar(512) DEFAULT NULL,
  `Header2Content` varchar(512) DEFAULT NULL,
  `Header3` varchar(512) DEFAULT NULL,
  `Header3Content` varchar(512) DEFAULT NULL,
  `Language` int(11) NOT NULL,
  `Title` varchar(512) DEFAULT NULL,
  `ProductPageTitle` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentproduct`
--

LOCK TABLES `contentproduct` WRITE;
/*!40000 ALTER TABLE `contentproduct` DISABLE KEYS */;
INSERT INTO `contentproduct` VALUES (1,'Read More','Projects made by HT Active, from mobile applications, mobile games to website. Our products work perfectly on Android, iOS and Windows. <br /><br />Please click on each item to see detail.','MOBILE APPLICATIONS','List of mobile applications on Android/iOS/Windows.','MOBILE GAMES','List of mobile games on Android/iOS/Windows.','WEB APPLICATIONS','List of web applications.',2,'Our Portfolios','Our Portfolios'),(2,'Xem Thêm','Những dự án được thực hiện bởi HT Active, từ ứng dụng di động, mobile game cho đến những website doanh nghiệp. Sản phầm của chúng tôi hoạt động trên cả Android, iOS, Windows. <br /><br />Bạn có thể click vào từng dự án để xem chi tiết.','ỨNG DỤNG DI ĐỘNG','','GAME DI ĐỘNG','','ỨNG DỤNG WEB','',1,'Portfolios','Portfolios');
/*!40000 ALTER TABLE `contentproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentservice`
--

DROP TABLE IF EXISTS `contentservice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentservice` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(512) DEFAULT NULL,
  `Language` int(11) NOT NULL,
  `Title` varchar(512) DEFAULT NULL,
  `ServicePageTitle` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentservice`
--

LOCK TABLES `contentservice` WRITE;
/*!40000 ALTER TABLE `contentservice` DISABLE KEYS */;
INSERT INTO `contentservice` VALUES (1,'Chúng tôi cung cấp các giải pháp phần mền chuyên nghiệp và toàn diện.<br/>Từ gia công cho đến thiết kế, phát triển cho đến vận hành và bảo trì.<br/>Cho mọi ứng dụng phần mềm, trên mọi nền tảng, dưới mọi ngôn ngữ.',1,'Dịch vụ của chúng tôi','Dịch vụ'),(2,'We strive to offer the best solution for your business.<br/>Including design, develop and maintenance.<br/>All kind of applications, platforms and system.',2,'Our Services','Services');
/*!40000 ALTER TABLE `contentservice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contentservicepartition`
--

DROP TABLE IF EXISTS `contentservicepartition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contentservicepartition` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(512) DEFAULT NULL,
  `ContentServiceId` int(11) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `ServiceType` int(11) NOT NULL,
  `Title` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ContentServicePartition_ContentServiceId` (`ContentServiceId`),
  CONSTRAINT `FK_ContentServicePartition_ContentService_ContentServiceId` FOREIGN KEY (`ContentServiceId`) REFERENCES `contentservice` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contentservicepartition`
--

LOCK TABLES `contentservicepartition` WRITE;
/*!40000 ALTER TABLE `contentservicepartition` DISABLE KEYS */;
INSERT INTO `contentservicepartition` VALUES (1,'Tất cả các giải pháp liên quan đến ứng dụng web, từ gia công cho đến thiết kế website, vận hành và bảo trì, cho thuê host, thuê tên miền, tối ưu hóa SEO...',1,1,2,'VỀ MẢNG WEB'),(2,'Gia công và thiết kế ứng dụng game 2D trên di dộng, trên web, trên desktop. Cung cấp giải pháp xuất bản, quản bá cho ứng dụng game trên mọi nền tảng.',1,2,1,'VỀ MẢNG GAME'),(3,'Gia công và thiết kế ứng dụng trên IOS, Android, Windows Phone.',1,3,3,'VỀ MẢNG ỨNG DỤNG DI ĐỘNG'),(4,'',2,1,2,'WEB APPLICATION'),(5,'',2,2,1,'MOBILE GAME'),(6,'',2,3,3,'MOBILE APPLICATION');
/*!40000 ALTER TABLE `contentservicepartition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `S3FileKey` varchar(256) DEFAULT NULL,
  `Url` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Priority` int(11) NOT NULL,
  `CreatedDate` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,1,'2017-09-15 09:00:01.000000'),(2,2,'2017-09-16 09:00:00.000000'),(3,3,'2017-09-17 09:00:00.000000'),(4,4,'2017-09-18 09:00:00.000000'),(5,5,'2017-09-28 09:00:00.000000'),(6,6,'2017-11-02 09:00:00.000000'),(7,7,'2017-11-17 09:00:00.000000'),(8,8,'2017-11-17 10:00:00.000000'),(9,9,'2018-03-19 10:00:00.000000'),(10,10,'2018-06-15 10:00:00.000000'),(11,11,'2018-06-20 10:00:00.000000');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newslanguage`
--

DROP TABLE IF EXISTS `newslanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newslanguage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Author` varchar(512) DEFAULT NULL,
  `CoverSource` varchar(512) DEFAULT NULL,
  `CoverType` int(11) DEFAULT NULL,
  `Description` varchar(512) DEFAULT NULL,
  `Html` longtext,
  `Language` int(11) DEFAULT NULL,
  `NewsId` int(11) DEFAULT NULL,
  `Title` varchar(512) DEFAULT NULL,
  `Slug` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_NewsLanguage_NewsId` (`NewsId`),
  CONSTRAINT `FK_NewsLanguage_News_NewsId` FOREIGN KEY (`NewsId`) REFERENCES `news` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newslanguage`
--

LOCK TABLES `newslanguage` WRITE;
/*!40000 ALTER TABLE `newslanguage` DISABLE KEYS */;
INSERT INTO `newslanguage` VALUES (1,'Khiêm Trần','https://scontent.fdad3-2.fna.fbcdn.net/v/t31.0-8/12186373_10153851288373984_354069952193557672_o.jpg?oh=1a4e88ac97875ff3569966473960ea12&oe=5A44A77C',1,'Hôm nay mình sẽ hướng dẫn các bạn viết chương trình Hello World sử dụng Swift. Để bắt đầu, chúng ta sẽ viết 1 chương trình đơn giản như sau ...','<div>\n  <h2>Bắt đầu</h2><p>Hôm nay mình sẽ hướng dẫn các bạn viết chương trình Hello World sử dụng Swift. Để bắt đầu, chúng ta sẽ viết 1 chương trình đơn giản:</p>\n<pre><code>print(\"Hello World!\")</code></pre>\n<h2>Sử dụng lại</h2>\n  <p>Chương trình trên sẽ in ra dòng chữ <code>Hello World!</code>. <strong>Đơn giản vãi nồi!!!</strong> Để có thể sử dụng lại mã nguồn trên ở nhiều nơi, bây giờ chúng ta sẽ phát triển một kiểu (Type) thực hiện nhiệm vụ in ra dòng <code>Hello World!</code> trên. Có 2 lựa chọn trong Swift là value type và reference type, nói nhiều các bạn sẽ rối, theo mấy bác bên Apple thì nên sử dụng value type để tránh implicit sharing và dễ kiểm soát hơn (éo hiểu nhưng mà cũng éo cần quan tâm, làm theo phát!). Mình sẽ viết lại chương trình trên như sau:</p><pre><code>struct Greeter {\n\n  /// \n  /// Display Message `Hello World`\n  /// \n  func sayHelloWorld() {\n    print(\"Hello World!\")\n  }\n} \nlet greeter = Greeter()\ngreeter.sayHelloWorld()</code></pre><h2>Mở rộng</h2><p>Vậy là mình vừa phát triển được 1 kiểu <code>Greeter</code> hiển thị dòng chữ <code>HelloWorld!</code>.  Nhưng hiện tại, lớp của mình chỉ có thể hiển thị lên <code>console</code>. Mình muốn phát triển ra để chương trình của mình có thể hiển thị thông điệp lên nhiều nơi khác nhau như lên <i>màn hình đồ họa, gửi thông điệp qua email, SMS, </i>... Để làm được điều đó, mình sẽ định nghĩa một giao thức là Displayer chung cho tất cả các đối tượng kể trên. Trong swift gọi là <code>protocol</code>, một lớp có thể cài đặt nhiều protocol khác nhau nên nghe đồn việc sử dụng protocol sẽ linh hoạt hơn.</p><p>Chương trình được viết lại như sau:</p><pre><code>// common protocol for displaying a message\nprotocol Displayer {\n  func display(message: String)\n}\n\nstruct ConsoleDisplayer: Displayer {\n  func display(message: String) {\n    print(message)\n  }\n}\n\nstruct Greeter {\n  let helloWorldMessage = \"Hello World!\"\n\n  func sayHelloWorld() {\n    let displayer = ConsoleDisplayer()\n    displayer.display(helloWorldMessage)\n  }\n}\n\nlet greeter = Greeter()\ngreeter.sayHelloWorld()</code></pre><h2>Inject Dependencies</h2><p>Chương trình trên có 1 vấn đề đó là lớp <code>ConsoleDisplayer</code> được khởi tạo bên trong lớp Greeter, sau này nếu chúng ta muốn thay đổi implement sang một lớp khác như GraphicDisplayer thì chúng ta phải sửa lớp <code>Greeter</code>, do đó chúng ta sẽ sửa lớp <code>Greeter</code> lại để cho phép đưa một phụ thuộc vào lớp này (xem <a href=\"https://en.wikipedia.org/wiki/Dependency_injection\" target=\"blank\">Dependency Injection</a>).</p><pre><code>\nprotocol Displayer {\n  func display(message: String)\n}\n\nstruct ConsoleDisplayer: Displayer {\n  func display(message: String) {\n    print(message)\n  }\n}\n\nstruct Greeter {\n  let helloWorldMessage = \"Hello World\"\n  var displayer: Displayer\n   \n  init(displayer aDisplayer: Displayer) {\n    displayer = aDisplayer\n  }\n\n  func sayHelloWorld() {\n    displayer.display(helloWorldMessage)\n  }\n}\n\nlet displayer = ConsoleDisplayer()\nlet greeter = Greeter(displayer: displayer)\ngreeter.sayHelloWorld()</code></pre><h2>In thông điệp ra UILabel</h2><p>Bây giờ chúng ta đã có 1 lớp <code>Greeter</code> tương đối ổn định. Chúng ta có thể sử dụng lớp <code>Greeter</code> này bất cứ đâu. Ví dụ, chúng ta sẽ sử dụng lớp <code>Greeter</code> của chúng ta để hiển thị dòng chữ <code>Hello World!</code> lên một <code>UILabel</code> như dưới đây:</p><pre><code>extension UILabel: Displayer {\n  func display(message: String) {\n    text = message\n  }\n}\n\nlet greeter = Greeter(displayer: helloWorldLabel) // helloWorldLabel is an outlet to a UILabel\ngreeter.sayHelloWorld()</code>\n</pre><p><i>xong đoạn này Swift extension quá chất.</i></p><h2>Kiểm thử</h2><p>Chúng ta sẽ kiểm tra tính đúng đắn của hàm sayHelloWorld bằng cách viết một đơn vị kiểm thử. Để làm điều này, chúng ta sẽ mock một lớp Displayer như sau:</p><pre><code>struct TestDisplayer: Displayer {\n  var messages = [String]()\n  func display(message: String) {\n    messages.append(message)\n  }\n}\n\nlet expectedHelloWorldMessage = \"Hello World!\"\n\nfunc testSayHelloWorld() {\n\n  let displayer = TestDisplayer()\n  let greeter = Greeter(displayer: displayer)\n  greeter.sayHelloWorld()\n \n  // check result\n  XCTAssertEqual(1, displayer.messages.count, \"Should display a message\")\n  XCTAssertEqual(expectedHelloWorldMessage, displayer.messages[0], \"Should display (expectedHelloWorldMessage) message\") \n}</code></pre><p><i>Đón đọc phần tiếp theo: hiển thị Hello World! theo nhiều ngôn ngữ khác nhau.</i></p>\n</div>',1,1,'Hello World với Swift','hello-world-voi-swift'),(2,'Khiêm Trần','https://scontent.fdad3-2.fna.fbcdn.net/v/t31.0-0/p180x540/14054324_10154624375358984_2240899986652458346_o.jpg?oh=53816cd88c9c9eb2305b12fd8bcbd1de&oe=5A46DDF2',1,'Suốt hàng ngàn năm, con người đã sử dụng các ngôn ngữ lập trình để bắt máy tính phải “hiểu\" mình và làm theo mệnh lệnh của mình. Các bạn đừng bị thầy cô lừa dối, bởi vì máy tính vốn chỉ hiểu một ngôn ngữ duy nhất, đó là ngôn ngữ máy (machine code).','<h2>LỜI NÓI ĐẦU</h2>\n<p>\nSuốt hàng ngàn năm, con người đã sử dụng các ngôn ngữ lập trình để bắt máy tính phải “hiểu\" mình và làm theo mệnh lệnh của mình. Các bạn đừng bị thầy cô lừa dối, bởi vì máy tính vốn chỉ hiểu một ngôn ngữ duy nhất, đó là ngôn ngữ máy (machine code). Và trong khi các bạn diễn giải ý định của mình bằng java hay c# thì máy tính hoàn toàn không hiểu được. Và phải qua các bước biên dịch phức tạp thì máy mới hiểu được bạn muốn nói gì. Nhưng mà “tam sao thất bản\", chắc chắn máy tính sẽ không hiểu đúng 100% bạn ý định nói gì đâu. Mà coi như là máy tính hiểu bạn rồi, thì khi nào bạn sẽ hiểu máy tính? \n</p>\n<p>\nNếu bạn là người yêu máy tính, thích lập trình thì hãy nhanh chân học ngôn ngữ mà máy cũng hiểu và bạn cũng hiểu. Mình sẽ không bắt các bạn phải học mã máy, nhưng chí ít bạn nên học <strong>Assemb-Lư</strong> vì với máy tính, như thế là tuyệt lắm rồi. Assembly - Machine code nó tương đương 1-1 nên nếu biết assembly thì cũng tạm chấp nhận.\nĐối với các bạn học bách khoa thì quả thật là may mắn vì các bạn đã được học assembly. Nhưng mà chắc là đã quên hết rồi nên trong bài này mình sẽ hướng dẫn lại căn bản cho các bạn.</p>\n<p>Trong bài viết sử dụng MacOS để lập trình nên bạn nào không có thì sử dụng trí tưởng tượng phong phú của mình.</p>\n<h2>I. CĂN BẢN ASSEMBLY</h2>\n<p>\n<strong>1. Data size:</strong> Các khái niệm cơ bản về size của data khi làm việc: byte (8 bit) -> word (16 bit) -> double words (32 bit) -> quad words 64 bit). Mình chỉ làm việc với 2 toán tử có kích thước tương đương.</p>\n<p>\n<strong>2. Thanh ghi:</strong> Là các thanh nhớ đặc biệt dùng để tính toán. Khi tính toán thì chỉ thao tác với giá trị trên thanh ghi. (các thanh ghi general các bạn từng học như ax <=> <i>al: (8 bit); ax: (16 bit); eax (32 bit); rax (64 bit))</i>\n</p>\n<p>\n<strong>3. Lưu trữ dữ liệu:</strong> Ngoài thanh ghi, có 2 vùng nhớ là stack và heap. </p>\n<p>\n<strong>4. Lệnh:</strong> có các nhóm lệnh: đọc ghi dữ liệu / tính toán / điều khiển (lệnh nhảy - gọi hàm).</p>\n<p>\n<strong>5. Nhãn:</strong> Mình có thể đánh dấu các câu lệnh, vùng nhớ bằng nhãn để có thể tham chiếu sau này.\n</p>\n<p>\n<strong>6. Cú pháp:</strong>\n</p>\n<pre><code>[<nhãn>:] <mã lệnh> nguồn[, đích]</code></pre>\n<p><i>Ví dụ:</i></p>\n\n<pre><code>movl $1, %eax; // gán eax = 1</code></pre>\n<h2>II. Hello World:</h2>\n\n<p>Để bắt đầu, các bạn có thể sử dụng một trình soạn thảo bất kỳ, tạo một file và đặt tên là <code>main.s</code>, mở terminal và gõ:</p>\n<pre><code>g++ main.s -o main</code></pre>\n<p>Bạn sẽ nhận được một thông báo lỗi như sau:</p>\n<img src=\"https://scontent.fdad3-2.fna.fbcdn.net/v/t31.0-8/14066249_10154624363273984_4374500623458104650_o.jpg?oh=a456836dcc8443ec0270a491540ba0d4&oe=5A55AB73\" alt=\"Thông báo lỗi do chưa viết hàm main.\"/>\n<center><p><sub><i>Thông báo lỗi do chưa viết hàm main.</i></sub></p></center>\n<p>Chương trình assembly được chia thành nhiều đoạn, cấu trúc căn bản như sau:</p>\n<pre><code>.section __DATA, __data // section data chứa data sử dụng trong chương trình\n.section __TEXT, __text // section text chứa code trong chương trình</code></pre>\n<p>Chương trình muốn chạy được thì phải có symbol <code>_main</code>, do đó ta thêm symbol <code>_main</code> vào trong chương trình.</p>\n<pre><code>.section __DATA, __data // section data chứa data sử dụng trong chương trình\n.section __TEXT, __text // section text chứa code trong chương trình\n.global _main\n_main:\n</code></pre>\n\n<p>Chỉ thị <code>global _main</code> đăng kí với trình biên dịch symbol <code>_main</code> sẽ được public trong giai đoạn liên kết.</p>\n<p>Bây giờ chúng ta đã biên dịch thành công, tuy nhiên lúc chạy chương trình sẽ gặp lỗi sau:</p>\n<img src=\"https://scontent.fdad3-2.fna.fbcdn.net/v/t31.0-8/14115488_10154624394883984_1617029245425625767_o.jpg?oh=7a7e486a02701606a724360128fddcf0&oe=5A44CDC4\" alt=\"Hàm main chưa có gì thì làm sao mà chạy? làm sao mà chạy?\"/>\n<center><p><sub><i>Hàm main chưa có gì thì làm sao mà chạy? làm sao mà chạy?</i></sub></p></center>\n<p>Lý do là hàm main hiện tại chúng ta chưa viết gì cả. Vậy hàm main sẽ làm gì? Chúng ta sẽ thử ra chỉ thị kết thúc chương trình.</p>\n<pre><code>_main:\n  movl $0x2000001, %eax\n  syscall</code></pre>\n<p>Nếu như trong MS DOS các bạn quen với interrupt (ngắt hệ thống) thì ở hệ thống 64 bit đó là syscall, các chương trình con của hệ thống. $0x2000001 là system exit(). Các bạn có thể tham khảo các chương trình con này ở <a href=\"https://opensource.apple.com/source/xnu/xnu-1228.5.20/bsd/sys/syscall.h\" target=\"blank\">đây</a></p>\n<p>Định nghĩa + tham số tương đương ở <a href=\"https://opensource.apple.com/source/xnu/xnu-1504.3.12/bsd/kern/syscalls.master\" target=\"blank\">đây</a></p>\n<p>Như vậy chương trình của chúng ta đã chạy. Nhưng nó kết thúc ngay lập tức chưa kịp làm gì cả. Vậy làm sao để in ra chữ HelloWorld?</p>\n<p>Nhìn trong file mình vưà gửi thì syscall 4 sẽ in viết một thông điệp ra dòng xuất chuẩn. Có 3 tham số : 1 là kí hiệu của dòng xuất (output stream) và 2 là thông điệp, 3 là kích thước của thông điệp</p>\n<p>Ta chỉnh sửa lại chương trình như sau:</p>\n<pre><code>.section __DATA, __data\n  helloMessage: .asciz \"Hello World\n\"\n.section __TEXT, __text\n.global _main\n_main:\n  movl $0x2000004, %eax // ngắt để in ra\n  movl $1, %edi // standard output = 1\n  movq helloMessage@GOTPCREL(%rip), %rsi // thông điệp cần in ra\n  movq $100, %rdx // kích thước của thông điệp\n  syscall  \n  movl $0x2000001, %eax // ngắt dừng chương trình\n  movl $0, %ebx // exit code == 0\n  syscall</code></pre>\n<p>Mình sẽ giải thích convention khi đưa tham số vào một lời gọi hàm trong bài tiếp theo.\nBài tiếp: TDD với Assembly 64 bit + hướng dẫn thiết kế sử dụng mẫu Dependency Injection.</p>',1,2,'Hướng dẫn Assembly 64bit.','huong-dan-assembly-64-bit'),(3,'Khiêm Trần','https://scontent.fdad3-2.fna.fbcdn.net/v/t31.0-0/p180x540/14054324_10154624375358984_2240899986652458346_o.jpg?oh=53816cd88c9c9eb2305b12fd8bcbd1de&oe=5A46DDF2',1,'Tiếp theo bài trước, sau khi các bác đã có 1 chương trình hoàn chỉnh hiển thị dòng chữ “Hello World!”, bài này sẽ hướng dẫn các bạn viết một hàm hoàn chỉnh trong assembly nhằm mục đích mô-đun hoá ứng dụng.','<p>Tiếp theo bài trước, sau khi các bác đã có 1 chương trình hoàn chỉnh hiển thị dòng chữ <code>“Hello World!”</code>, bài này sẽ hướng dẫn các bạn viết một hàm hoàn chỉnh trong assembly nhằm mục đích mô-đun hoá ứng dụng. Để làm được điều đó, các bạn cần biết 1 số khái niệm và mình xin phép đi lần lượt trong bài hôm nay.</p>\n<h2>1. Lời gọi hàm:</h2>\n\n<p>Trong bài trước mình đã có đoạn mã để hiển thị dòng chữ Hello World! Nếu như mình muốn sử dụng lại đoạn mã này ở các đoạn chương trình khác, thay vì gõ lại đoạn mã, mình viết riêng đoạn mã này thành một module và gọi khi cần thiết.</p>\n<pre><code>_print:\n  movl $0x2000004, %eax\n  movq helloMessage@GOTPCREL(%rip), %rsi\n  movl $1, %edi\n  movq $100, %rdx\n  syscall\n  retq  /// thoát khỏi hàm\n\n_exit:\n  movl $0x2000001, %eax\n  movl $0, %ebx\n  syscall\n  retq\n\n_main:\n  callq _print\n  callq _exit</code></pre>\n<p>Chỉ thị <code>callq</code> sẽ đưa con trỏ của chương trình tới nhãn <code>_print</code> và thực hiện các câu lệnh ở đó. Sau đó khi gặp chỉ thị <code>retq</code>, chương trình sẽ quay lại tại thời điển <code>callq</code>. <strong>Thật là vi diệu.</strong> Và cũng khá là dễ hiểu.</p>\n<p>Bây giờ mình hoàn toàn có thể gọi hàm print bất cứ lúc nào để in dòng chữ <code>“Hello World!”</code>! Thật là chán quá đi mất. Làm thế nào để in các dòng chữ khác?</p>\n<p>Chúng ta hãy nghĩ tới việc truyền tham số vào hàm. Tương tự như syscall, các tham số được truyền vào các thanh ghi. Đối với hàm cũng tương tự:</p>\n<pre><code>_print:\n  movl $0x2000004, %eax\n  movl $1, %edi\n  syscall\n  retq  /// thoát khỏi hàm\n\n// gọi hàm _print\n  movq helloMessage@GOTPCREL(%rip), %rsi\n  movq $100, %rdx\n  callq _print</code></pre>\n<p>Với calling convention của MacOS, các tham số sẽ lần lượt được chuyển vào các thanh ghi theo thứ tự sau: <code>rdi, rsi, rdx, rcx, r8d, r9d...</code> khi theo đúng convention này thì hàm các bạn viết có thể được sử dụng trong C. giá trị trả về thường được ghi vào thanh ghi ax.</p>\n<p>Ví dụ hàm cộng hai số:</p>\n<pre><code>_add:\n  movl %esi, %eax\n  addl %edi, %eax\n  retq</pre></code>\n<p>Sẽ tương đương với hàm: </p>\n<pre><code>int add(int a, int b) {\n  return a + b;\n}</pre></code>\n<p>Nhưng hàm add trên, khi biên dịch ra mã máy bằng gcc sẽ có kết quả như sau (các đoạn mã sẽ được giải thích phần sau)</p>\n<pre><code>_add:                                   ## @add\n  pushq	%rbp\n  movq	%rsp, %rbp\n  movl	%edi, -4(%rbp)\n  movl	%esi, -8(%rbp)\n  movl	-4(%rbp), %esi\n  addl	-8(%rbp), %esi\n  movl	%esi, %eax\n  popq	%rbp\n  retq</pre></code>\n<p>Rất dài và tất nhiên không tốt bằng việc bạn viết bằng assembly rồi, đúng không nhỉ. Bây giờ chúng ta sẽ thử gọi hàm <code>_printf</code> để in ra dòng chữ <code>“Hello World!”</code> thay vì dùng hàm hệ thống syscall.</p>\n<pre><code>printf(format, params...) => prinf(\"Hello World\" (%rdi))\n=> \nmovq helloMessage@GOTPCREL(%rip), %rdi // rdi (64 bit) - edi (32 bit)\ncallq _printf</code></pre>\n<p>Ta thử viết một chương trình hoàn chỉnh như sau:</p>\n<pre><code>.section __DATA,__data\n    helloMessage: .asciz \"Result: %d!\n\"\n.section __TEXT,__text\n.globl _main\n.globl _add\n\n_add: // int add(int a, int b)\n  movl %esi, %eax\n  addl %edi, %eax\n  ret\n\n_main:\n  pushq %rbp // \n  movl $2, %esi // eax = add(2, 3)\n  movl $3, %edi\n  callq _add\n\n  movq helloMessage@GOTPCREL(%rip), %rdi // printf(\"Result: %d\", 5)\n  movl %eax, %esi\n  callq _printf\n  \n  movl $0, %edi // exit (0)\n  callq _exit</pre></code>\n<p><i>[Đang viết tiếp...]</i></p>',1,3,'Hướng dẫn Assembly 64bit - Bài 2.','huong-dan-assembly-64-bit-bai-2'),(4,'Khiêm Trần','https://www.youtube.com/embed/Dv7gLpW91DM?ecver=2',2,'Tôi đảm bảo 100% những người đang đọc bài viết này đều biết sử dụng máy tính hoặc điện thoại di động, hoặc máy tính bảng hoặc lọt vào những trường hợp còn lại. Sở dĩ tôi biết được...','<h2>LỜI NÓI ĐẦU</h2>\n\n<p>Tôi đảm bảo 100% những người đang đọc bài viết này đều biết sử dụng máy tính hoặc điện thoại di động, hoặc máy tính bảng hoặc lọt vào những trường hợp còn lại. Sở dĩ tôi biết được một điều hiển nhiên như vậy là vì tôi là một lập trình viên, và một lập trình viên thì biết suy nghĩ ra được những điều như vậy. Vậy nếu bạn cũng suy nghĩ ra được điều tương tự thì chắc chắn bạn là một lập trình viên, hoặc trong bản thân các bạn có một người lập trình viên đang ẩn náu và chờ trỗi dậy, (hoặc lọt vào những trường hợp còn lại). Có lẽ đã đến lúc các bạn đánh thức anh chàng/cô nàng lập trình viên dậy và bắt đầu một trãi nghiệm hoàn toàn mới lạ mà chỉ có lập trình viên có thể có được. Hãy bắt đầu học lập trình.</p>\n<blockquote>\n<h3>Eureka!!!!</h3>\n<p><code>Assert(weightUnderWater(usedGold), weightUnderWater(theCrown), “The crown is fake\")</code></p>\n<cite><a href=\"https://en.wikipedia.org/wiki/Archimedes\" target=\"blank\">Archimedes.</a></cite>\n</blockquote>\n<h2>VÌ SAO HỌC LẬP TRÌNH</h2>\n\n<p>Học lập trình để làm gì? Để trả lời câu hỏi này? Chúng ta hãy thử trả lời câu hỏi <code>“Không học lập trình để làm gì?”</code> Và rõ ràng, tôi không thấy được bất kỳ lý do gì để mà không học lập trình. Do đó, việc học lập trình là tất nhiên, không cần phải giải thích. Tuy vậy, xin phép được đưa ra một số lý do dưới đây:</p>\n<p>1. Vì trong trình, khi giải quyết một vấn đề, chúng ta phải chia nhỏ vấn đề đó ra thành những vấn đề đơn giản nhất. Thực hiện từng bước một. Đưa ra các quyết định lúc cần thiết. <strong>Đây là cách tư duy giải quyết vấn đề.</strong></p>\n<blockquote><p>It takes only 1 step to conquer the whole Asia: “Avoid Vietnam”</p><cite><a href=\"https://en.wikipedia.org/wiki/Genghis_Khan\" target=\"blank\">Geghis Khan</a></cite></blockquote>\n<p>2. Vì trong lập trình, lúc nào bạn cũng suy nghĩ tới việc làm sao cho lời giải của mình được nhanh nhất, sử dụng ít bộ nhớ nhất, giải quyết được vấn đề tổng quát nhất. <strong>Đây là tư duy tích cực.</strong></p>\n<blockquote><p>Everybody needs 3 steps to cook instant noodle. I only need one. That’s not optimization. That’s delegation.</p><cite><a href=\"https://en.wikipedia.org/wiki/Adolf_Hitler\" target=\"blank\">Adolf Hilter</a></cite></blockquote>\n<p>3. Vì trong lập trình, lúc nào bạn cũng phải kiểm chứng xem lời giải của mình có đúng không, đã chạy tốt chưa, có trường hợp nào sai không. <strong>Đây là tư duy phản biện.</strong></p>\n<blockquote><p>The reason of the success of Windows is that we don’t have testers.</p><cite><a href=\"https://en.wikipedia.org/wiki/Bill_Gates\" target=\"blank\">Bill Gate</a></cite></blockquote>\n<p>Như vậy, học lập trình rất có lợi cho cách suy nghĩ, nếu bạn học lập trình đúng cách. Trong nội dung bài một, hy vọng mình đã đưa ra một số lý do cho việc học lập trình. Còn một lý do cực kỳ quan trọng mà mình sẽ nói trong bài kết của lượt bài này.</p>\n<p><i>Đón đợi bài đọc tiếp theo.. trong lượt bày dạy lập trình dành cho mọi người.</i></p>',1,4,'Lập trình cho mọi người - Bài 1.','lap-trinh-cho-moi-nguoi'),(5,'Thuận Hồ','http://vjiat.vn/wp-content/uploads/2017/09/185_xuanvu_banner_tuyendung.jpg',1,'Để đáp ứng nhu cầu phát triển, HT Active cần tuyển 05 Front-end Developer.','<h2>Mô Tả Công Việc</h2>\n<p>Tham gia vào các dự án của công ty cung cấp sản phẩm dịch vụ cho thị trường Mỹ và châu Âu. </p>\n<p>Đội Frontend Developer có sứ mệnh đảm bảo sự hoạt động ổn định phía frontend, tối ưu những trải nghiệm người dùng trên mọi môi trường, trình duyệt và thiết bị. </p>\n<p>Là đội tiên phong trong việc nghiên cứu những công nghệ mới để áp dụng vào thực tế dự án của công ty.</p>\n\n<h2>Yêu Cầu Công Việc</h2>\n<ol><li>Số năm kinh nghiệm là không quan trọng.</li><li>Thành thạo ít nhất một thư viện javascript phổ biến <code>(jQuery, angularJS, Vue.js, ReactJS...)</code>.</li><li>Thành thạo ít nhất một Frontend Framework <code>(Boostrap, Foundation, SemanticUI...)</code>.</li><li>Thành thạo ít nhất một CSS Preprocessors (ưu tiên <code>Sass</code> và <code>Less</code>).</li><li>Biết <code>.Net Core</code> là một lợi thế.</li><li>Có hiểu biết tốt về Responsive và mobile là một lợi thế.</li><li>Có hiểu biết tốt về Cross-Browser là một lợi thế.</li><li>Thành thạo <code>Git</code> là một lợi thế.</li><li>Có khả năng đọc hiểu tài liệu và yêu cầu khách hàng bằng tiếng Anh là một lợi thế</li></ol>\n<h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2>\n<p><strong>- Mức lương xứng đáng với công sức của bạn</strong></p><p>HT Active luôn cân nhắc giữa hiệu quả công việc bạn đạt được và mức đãi ngộ tương xứng với chế độ khen thưởng rõ ràng, minh bạch. Bạn sẽ luôn nhận lại những giá trị tương ứng với công sức mình bỏ ra.</p><p><strong>- Cơ hội học hỏi những cái mới</strong></p><p>Tại HT Active, bạn sẽ được tiếp xúc với những mô hình mới, công nghệ mới thường xuyên. Luôn có những buổi presentation để giới thiệu và thảo luận hàng tuần.</p><p><strong>- Làm việc trong một môi trường cực kỳ thoải mái.</strong></p><p>HT Active luôn mong muốn bạn tìm được niềm vui trong công việc. Vì lý do đó, vấn đề vui chơi giải trí rất được xem trọng tại công ty, bạn hoàn toàn có quyền đề nghị công ty tạo ra một không gian giải trí cho mình để có thể làm việc thoải mái nhất.</p><p><strong>- Bạn có những kỳ nghỉ hàng năm ấn tượng</strong></p><p>Ngoài các buổi dã ngoại, party thường xuyên, hàng năm công ty luôn có những chuyến du lịch đến những địa điểm thú vị trong và ngoài nước cho tất cả thành viên.</p>\n<h2>Thông tin ứng tuyển</h2>\n<p>Gởi email đính kèm CV về địa chỉ <a href=\"mailto:services@htactive.com\">services@htactive.com</a> với subject là kết quả của đoạn code bên dưới</p>\n<pre><code>// welcome to HT Active\nvar your_job=\"Front-endDev\";\nvar reverse = function (s) {\n  return s.split(\"\").reverse().join(\"\");\n}\nvar htactive = {\n  str1: \"hUs\",\n  str2: reverse(\"nioJ\"),\n  str3: reverse(\"tiW\"),\n  request: function (r) {\n    return r + \".Secret word:\" +\n      this.str2 + this.str3 + this.str1;\n  }\n}\nhtactive.request(your_job);</code>\n</pre>',1,5,'05 Junior Front-end Devs - Up to 10M','tuyen-dung-junior-font-end-devs-htactive'),(6,'Hoàng Phạm','https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAw1AAAAJDlkZDM5ZjMzLTI4NjgtNDRhZC04ZjUyLWFjMDY4MzFkZGRlYg.png',1,'Scrum là một khung phát triển trong đó các nhóm liên-chức năng phát triển các sản phẩm hoặc dự','<p><strong>A.&nbsp;<u>GIÁ TRỊ CỐT LÕI CỦA SCRUM:</u></strong></p> \n<strong>1. TRANSPARENCY (MINH BẠCH):</strong>\n<ul> \n <li>Trong Scrum, tính minh bạch được đề cao như là giá trị cốt lõi cơ bản nhất.</li> \n <li>Muốn thành công với Scrum, thông tin liên quan tới quá trình phát triển phải minh bạch và thông suốt.</li> \n <li>&nbsp;Các thông tin đó có thể là: tầm nhìn (vision) về dự án, yêu cầu khách hàng, tiến độ công việc,các khúc mắc và rào cản v.v. Từ đó mọi người ở các vai trò các nhau có đủ thông tin cần thiết để tiến hành các quyết định có giá trị để nâng cao hiệu quả công việc. </li> \n <li>Các công cụ và cuộc họp trong Scrum luôn đảm bảo thông tin được minh bạch cho các bên.</li> \n</ul> \n<p><strong>2. INSPECTION (THANH TRA)</strong></p> \n<ul> \n <li>Công tác thanh tra liên tục các hoạt động trong Scrum đảm bảo cho việc phát lộ các vấn đề cũng như giải pháp để thông tin đa dạng và hữu ích đến được với các bên tham gia dự án.</li> \n <li>Truy xét kĩ càng và liên tục là cơ chế khởi đầu cho việc thích nghi và các cải tiến liên tục trong Scrum.</li> \n</ul> \n<p><strong>3. ADAPTATION (THÍCH NGHI)</strong></p> \n<ul> \n <li>Scrum rất linh hoạt như các phương pháp phát triển linh hoạt khác, nhờ đó nó mang lại tính thích nghi rất cao. </li> \n <li>Dựa trên các thông tin minh bạch hóa từ các quá trình thanh tra và làm việc, scrum có thể phản hồi lại các thay đổi một cách tích cực, nhờ đó mang lại thành công cho dự án.</li> \n</ul> \n<p><strong><u>B. VAI TRÒ CỦA SCRUM:</u></strong></p> \n<div class=\"slate-resizable-image-embed slate-image-embed__resize-full-width\" data-imgsrc=\"https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAvdAAAAJGYwYjhhMTQwLWYwOGQtNGI4OC05Y2EwLWY2NzRjYjYzMDVlMA.jpg\"> \n <img src=\"https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAvdAAAAJGYwYjhhMTQwLWYwOGQtNGI4OC05Y2EwLWY2NzRjYjYzMDVlMA.jpg\"> \n</div> \n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PRODUCT OWNER</strong></p> \n<p>a.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xác định phạm vi, tính chất, cấp độ của công việc.</p> \n<p>b.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Quyết định ngày và nội dung cho mỗi lần hoàn thành công việc</p> \n<p>c.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chịu trách nhiệm về lợi nhuận của Dự Án (ROI)</p> \n<p>d.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xác định độ ưu tiên cho các công việc dựa trên số liệu thông tin dự án </p> \n<p>e.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thay đổi độ ưu tiên và công việc cho mỗi lần lặp (nếu cần)&nbsp;&nbsp;</p> \n<p><strong>2. SCRUM MASTER</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Đại diện quản lý dự án</p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chịu trác nhiệm đưa ra các giá trị và thực hành theo Scrum</p> \n<p>c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giải quyết các khó khăn</p> \n<p>d)&nbsp;&nbsp;&nbsp;&nbsp;Bảo đảm nhóm hoạt động hết công suất và hiệu quả</p> \n<p>e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tạo sự hợp tác chặt chẽ giữa các vai trò, chức năng</p> \n<p>f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giúp nhóm tránh khỏi sự can thiệp từ bên ngoài</p> \n<p><strong>3. DEVELOPMENT TEAM </strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thường từ 5 - 9 người (linh hoạt áp dụng cho từng dự án, vì mỗi dự án là unique)</p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vai trò đan xen nhau</p> \n<p>c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Phải là thành viên toàn thời gian</p> \n<p>d)&nbsp;&nbsp;&nbsp;&nbsp;Một nhóm liên chức năng (cross-functional) tự quản:được quyền chủ động tổ chức công việc, ước lượng khối lượng công việc và cam kết hoàn thành công việc</p> \n<p>e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thành viên nhóm chỉ nên thay đổi giữa các sprints (không đổi trong suốt 1 sprint)</p> \n<p><strong>4. CLIENT</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Giám sát</p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Góp ý</p> \n<p><strong>C.&nbsp;&nbsp;<u>CÔNG CỤ CỦA SCRUM (SCRUM ARTIFACTS):</u></strong></p> \n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;PRODUCT BACKLOG</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;Là danh sách ưu tiên của các hạng mục khác nhau.</p> \n<p>b)&nbsp;&nbsp;&nbsp;Mỗi mục được chia thành các tác vụ và thể hiện một đơn giản và chi tiết.</p> \n<p>c)&nbsp;&nbsp;&nbsp;&nbsp;Mô tả về những gì cần phải được thực hiện bởi&nbsp;Development Team.&nbsp;</p> \n<p><strong>2. SPRINT GOAL</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Một&nbsp;MỤC TIÊU tóm tắt </p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Được vạch rõ bởi Product Owner</p> \n<p><strong>3. SPRINT BACKLOG</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Chứa một số hạng mục đã được Product Owner và Nhóm phát triển lựa chọn từ Produc Backlog. </p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Danh sách này chứa các h ạng mục mà Nhóm phát triển tin rằng có thể đạt được trạng thái được thực hiện trong Sprint.</p> \n<p><strong>4. INCREMENT</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thực thể của Scrum Team xác định một trạng thái đã hoàn thành.</p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Khi một mục từ Sprint Backlog được xem là đã xong, nó sẽ bị xóa khỏi Sprint Backlog và sau đó là một phần của Increment. </p> \n<p>c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Do đó, Cải tiến là tổng của tất cả các hạng mục được xem là hoàn thành.</p> \n<p><strong>D. <u>CUỘC HỌP CỦA SCRUM ( SCRUM EVENT):</u></strong></p> \n<div class=\"slate-resizable-image-embed slate-image-embed__resize-full-width\" data-imgsrc=\"https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAnNAAAAJGQzZTUxN2RkLWM0NDQtNDFkMS04MzFlLTc1NzE4M2IzZmYwZg.png\"> \n <img src=\"https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAnNAAAAJGQzZTUxN2RkLWM0NDQtNDFkMS04MzFlLTc1NzE4M2IzZmYwZg.png\"> \n</div> \n<p><br></p> \n<p><strong>1.&nbsp;&nbsp;SPRINT PLANNING ( Product Owner, Scrum Master, Development Team)</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sprint Planning có thời lượng tối đa 8 giờ cho Sprint trong một tháng.</p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Trong khi lập Sprint Planning, Development Team dự đoán số lượng công việc cho các hạng mục quan trọng nhất của Product Backlog.</p> \n<p>c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Development Team lựa chọn các mục mà họ nghĩ rằng có thể được thực hiện trong Sprint, bắt đầu với một trong những mục quan trọng nhất; Danh sách này được gọi là Sprint Backlog.</p> \n<p>d)&nbsp;&nbsp;&nbsp;&nbsp;Trong khi xem xét tất cả các mục từ Sprint Backlog, một mục tiêu lớn hơn - Sprint Goal - phải được xác định.</p> \n<p>e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Điều này cho phép Development Team luôn hỏi (kiểm tra) mình: Đây là công việc tôi hiện đang làm thực sự cần thiết cho Sprint này (để đạt được mục tiêu)?</p> \n<p>f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Khi Sprint Planning được hoàn thành, Development Team có thể bắt đầu thực hiện các mục trong Sprint.</p> \n<p>g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sprint là một khoảng thời gian cố định trong đó Development Team nhằm mục đích đạt được trạng thái đã hoàn thành cho mỗi hạng mục.</p> \n<p>h)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Trong Sprint không có thay đổi nào được cho phép, trừ khi giá trị hoặc phạm vi của các mục - với sự tham vấn của Product Owner - được tăng thêm.</p> \n<p>i)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Vào cuối Sprint, các hạng mục không thể coi là hoàn tất được chuyển trở lại Product Backlog và sẽ được đánh giá lại trong Sprint Planning tiếp theo.</p> \n<p><strong>2. DAILY SCRUM (Product Owner, Scrum Master, Development Team, Client)</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Daily Scrum là một cuộc họp 15 phút được lên kế hoạch vào cùng một thời điểm và cùng một vị trí mỗi ngày trong suốt một Sprint. </p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tất cả các thành viên của Development Team cần chuẩn bị cho cuộc họp này và dự kiến sẽ trả lời ba câu hỏi sau:</p> \n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;1.Tôi đã làm được gì từ Daily Scrum cuối cùng để giúp Development Team đạt được mục tiêu Sprint?</p> \n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2.Tôi sẽ làm gì cho đến khi họp Daily Scrum tiếp theo để giúp Development Team để đạt được mục&nbsp;tiêu Sprint?</p> \n<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;3.Những trở ngại của tôi là gì cản trở tôi hoặc Development Team đạt được mục tiêu của Sprint?</p> \n<p>c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scrum Master chịu trách nhiệm trong 15 phút này chỉ có ba câu hỏi này được trả lời và toàn bộ Development Team có mặt. Nếu cần, một cuộc họp tiếp theo có thể được thiết lập giữa các thành viên liên quan. </p> \n<p>d)&nbsp;&nbsp;&nbsp;&nbsp;Cuộc họp này cũng được dùng để kiểm tra: Các thành viên của Development Team đang nhìn thấy sự tiến bộ của riêng mình và mọi người đều biết những gì người khác đang làm việc. </p> \n<p>e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hơn nữa, thông qua sự tương tác liên tục giữa các chuyên gia của các khu vực khác nhau, mọi người bắt đầu có được kiến thức mới ngoài chuyên môn của mình.</p> \n<p><strong>3. SPRINT REVIEW</strong> <strong>(Product Owner, Scrum Master, Development Team, Client)</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Sau mỗi Sprint, Increment được kiểm tra bởi Scrum Team trong Sprint Review và, nếu cần thiết, sự thích nghi được thực hiện cho Product Backlog dựa trên thông tin mới. Cuộc Sprint Review có thời gian tối đa là bốn giờ cho Sprint một tháng.Các hành động sau xảy ra trong quá trình Sprint Review:</p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Scrum Master có liên hệ trực tiếp với tất cả các thành viên của đội Scrum và kiểm tra xem tất cả đều có mặt.</p> \n<p>c)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product Owner giải thích mục nào đã đạt đến trạng thái hoàn thành và điều đó không.</p> \n<p>d)&nbsp;&nbsp;&nbsp;&nbsp;Development Team thảo luận về những gì đã diễn ra trong suốt Sprint, những gì đã làm không tốt và những vấn đề đã không được giải quyết .</p> \n<p>e)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Development Team trình bày câu hỏi cải tiến và trả lời nếu cần.</p> \n<p>f)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Product Owner thảo luận về Product Backlog và đoán ngày hoàn thành.</p> \n<p>g)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Xem xét Increment (Cải tiến) mới cập nhật, Development Team quyết định điều gì là quan trọng cho Sprint tiếp theo và do đó đặt một Sprint Goal sơ bộ.</p> \n<p><strong>4. SPRINT RETROSPECTIVE(Product Owner, Scrum Master, Development Team)</strong></p> \n<p>a)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Mục tiêu của cuộc họp này là đánh giá một cách nghiêm túc các bên liên quan, các quy trình và kỹ thuật được sử dụng cũng như các mối quan hệ và tương tác của họ. Những gì đã làm? Không được kiểm tra, nhưng nó đã được thực hiện như thế nào?. Khi làm như vậy, Scrum Team có thể đề nghị cải tiến quy trình và dần dần cải thiện hiệu suất của họ.</p> \n<p>b)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Khung làm việc sử dụng các bước gia tăng hàng ngày (Daily Scrum), cũng như trên cơ sở hàng tuần / hàng tháng để hoàn thành Sprint và Product Backlog tương ứng.</p> \n<p>Lợi ích cốt lõi của cách tiếp cận cải tiến này là tập trung vào một Nhiệm vụ, ít gây phiền nhiễu hơn, dẫn đến việc hoàn thành công việc khẩn cấp: Bất kể một người có thể giỏi đến đâu, làm nhiều&nbsp;</p> \n<p><strong>D.&nbsp;&nbsp;<u>BÀI HỌC:</u></strong></p> \n<p><strong>1.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>Dựa trên lý thuyết quản lý thực nghiệm (empirical process control), Scrum sử dụng cơ chế lặp (iterative) và tăng trưởng (incremental) để tối ưu hóa tính hiệu quả và kiểm soát rủi ro. Scrum rất đơn giản, dễ học và có khả năng ứng dụng rất rộng. Để có thể dùng Scrum, chúng ta cần hiểu rõ và vận dụng đúng các thành tố tạo nên Scrum bao gồm các giá trị cốt lõi (ba trụ cột của Scrum), các vai trò (Scrum Role), các sự kiện hay cuộc họp (Scrum Event), và các công cụ (Scrum Artifacts) đặc thù của Scrum.</p> \n<p><strong>2.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>Việc sử dụng Scrum đã chứng tỏ là rất có giá trị trong các dự án phức tạp, đặc biệt là những yêu cầu và / hoặc công nghệ sống động chưa hoàn thiện và trong tất cả các phương pháp linh hoạt khác nhau (ví dụ,Extreme Programming, Adaptive Project Management, Dynamic Project Management), một trong những cách sử dụng thường xuyên nhất.</p> \n<p><strong>3.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>Development Team sử dụng bảng Kanban để theo dõi những gì quan trọng trong Sprint, cũng như trong toàn bộ dự án. Vì Product Owner cũng như các nhân sự khác có thể không ở cùng dự án với Development Team, sẽ sử dụng một tấm bảng Kanban thực và ảo. Bảng Kanban ảo được thực hiện bằng cách sử dụng Trello - một công cụ ứng dụng quản lý dự án trực tuyến miễn phí. Một Kanban thực được gắn tại dự án.</p> \n<div class=\"slate-resizable-image-embed slate-image-embed__resize-full-width\" data-imgsrc=\"https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAp6AAAAJDZhYzM4N2U1LWVjMWYtNGI0MS1iODJmLTJiNmRkY2E1MDJhYQ.png\"> \n <img src=\"https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAp6AAAAJDZhYzM4N2U1LWVjMWYtNGI0MS1iODJmLTJiNmRkY2E1MDJhYQ.png\"> \n</div> \n<p><strong>Bảng Kanban ảo được thực hiện bằng cách sử dụng Trello</strong></p> \n<div class=\"slate-resizable-image-embed slate-image-embed__resize-full-width\" data-imgsrc=\"https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAyxAAAAJGQxYmQ5N2E3LTM1MTItNDI2NC1iZWRmLWNhMzc0NTA0MDU0Yg.jpg\"> \n <img src=\"https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAyxAAAAJGQxYmQ5N2E3LTM1MTItNDI2NC1iZWRmLWNhMzc0NTA0MDU0Yg.jpg\"> \n</div> \n',1,6,'Áp dụng mô hình Scrum trong quản lý dự án','scrum-quan-ly-du-an'),(7,'Hoàng Phạm','https://www.barcelonacodeschool.com/wp-content/uploads/2017/08/react-js.png',1,'Bài dịch từ tutorialspoint.com',' <p> ReactJS là thư viện JavaScript được sử dụng để xây dựng các UI components có thể sử dụng lại. Theo tài liệu chính thức của React: React là một thư viện dùng để xây dựng các giao diện người dùng tổng hợp. Nó khuyến khích việc tạo ra các UI components sử dụng lại được, và thể hiện dữ liệu thay đổi theo thời gian. Rất nhiều người sử dụng React như View trong MVC. React làm trừu tượng các DOM, cung cấp một mô hình lập trình đơn giản và hiệu suất tốt hơn. React có thể render server side bằng cách sử dụng NodeJs, và nó cũng có thể tạo ra các native apps bằng cách sử dụng React Native. React sử dụng luồng dữ liệu một chiều (one-way data flow), làm dễ hiểu hơn so với data binding truyền thống. </p>\n <h2> React Features </h2>\n <ul>\n <li> <p> <b> JSX </b> - JSX là phần mở rộng về cú pháp JavaScript. Không nhất thiết phải sử dụng JSX trong phát triển React, nhưng vẫn khuyến khích sử dụng nó. </p> </li>\n <li> <p> <b> Components  </b> - React xoay quanh các components . Bạn cần phải nghĩ về mọi thứ như components. Điều này sẽ giúp bạn maintain code khi làm việc trên các dự án có quy mô lớn hơn. </p> </li>\n <li> <p> <b> Flux và luồng dữ liệu một chiều </b> - React thực hiện luồng dữ liệu một chiều giúp bạn dễ hiểu về ứng dụng của mình, còn Flux là một pattern giúp duy trì dữ liệu của bạn một chiều. </p> </li>\n </ul>\n <h2> Ưu điểm của React </h2>\n <ul>\n <li> <p> Sử dụng DOM ảo như một đối tượng JavaScript. Điều này sẽ cải thiện hiệu suất ứng dụng vì DOM ảo JavaScript nhanh hơn DOM thông thường. </p> </li>\n <li> <p> Có thể được sử dụng ở client side và server side cũng như tích hợp với các frameworks khác. </p> </li>\n <li> <p> Các components và dữ liệu cải thiện tính dễ đọc, giúp maintain các ứng dụng lớn hơn. </p> </li>\n </ul>\n <h2> Nhược điểm của React</h2>\n <ul>\n <li> <p> Chỉ cover tầng View của ứng dụng, do đó bạn vẫn cần chọn thêm các công nghệ khác để có được bộ khung hoàn chỉnh để phát triển ứng dụng. </p> </li>\n <li> <p> Sử dụng inline CSS và JSX, nhìn có thể có vẻ khó chịu đối với một số developers. </p> </li>\n </ul>\n <hr> <p><i>Nguồn: tutorialspoint.com</i></p>',1,7,'[ReactJS Tutorial] Bài 1 - Tổng quan','reactjs-bai1'),(8,'Hoàng Phạm','https://www.barcelonacodeschool.com/wp-content/uploads/2017/08/react-js.png',1,'Bài dịch từ tutorialspoint.com','<p> React sử dụng JSX để tạo template thay vì JavaScript thông thường. Có thể bạn sẽ không sử dụng nó, tuy nhiên sau đây là một số lợi ích của JSX. </p>\n  <ul>\n  <li> <p> JSX nhanh hơn vì nó thực hiện tối ưu hoá trong khi biên dịch mã cho JavaScript. </p> </li>\n  <li> <p> JSX cũng an toàn và hầu hết các lỗi có thể bị bắt trong khi biên dịch. </p> </li>\n  <li> <p> JSX giúp bạn viết các template dễ dàng và nhanh hơn nếu bạn đã quen thuộc với HTML. </p> </li>\n  </ul>\n  <h2> Sử dụng JSX </h2>\n  <p> JSX trông giống như một HTML thông thường trong hầu hết các trường hợp. Xem code của file <b> App.jsx </b> phần return thẻ <b> div </b>. </P>\n  <h3> App.jsx </h3>\n  \n  <pre class=\"prettyprint notranslate prettyprinted\" style=\"\"><span class=\"kwd\">import</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pln\"> </span><span class=\"kwd\">from</span><span class=\"pln\"> </span><span class=\"str\">react</span><span class=\"pun\">;</span><span class=\"pln\">\n  \n  </span><span class=\"kwd\">class</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pln\"> </span><span class=\"kwd\">extends</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pun\">.</span><span class=\"typ\">Component</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n     render</span><span class=\"pun\">()</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n        </span><span class=\"kwd\">return</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">\n           </span><span class=\"str\">&lt;div&gt;</span><span class=\"pln\">\n              </span><span class=\"typ\">Hello</span><span class=\"pln\"> </span><span class=\"typ\">World</span><span class=\"pun\">!!!</span><span class=\"pln\">\n           </span><span class=\"pun\">&lt;/</span><span class=\"pln\">div</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n        </span><span class=\"pun\">);</span><span class=\"pln\">\n     </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"kwd\">export</span><span class=\"pln\"> </span><span class=\"kwd\">default</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pun\">;</span></pre>\n  \n  <p> Mặc dù nó tương tự như HTML, có một vài điều cần lưu ý khi làm việc với JSX. </p>\n  <h2> Các phần tử lồng nhau </h2>\n  <p> Nếu muốn return nhiều phần tử, cần phải bọc nó bằng một phần tử container. Chú ý cách sử dụng <b> div </b> làm container cho các phần tử <b> h1 </b>, <b> h2 </b> và <b> p </b>.\n  <h3> App.jsx </h3>\n  \n  <pre class=\"prettyprint notranslate prettyprinted\" style=\"\"><span class=\"kwd\">import</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pln\"> </span><span class=\"kwd\">from</span><span class=\"pln\"> </span><span class=\"str\">react</span><span class=\"pun\">;</span><span class=\"pln\">\n  \n  </span><span class=\"kwd\">class</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pln\"> </span><span class=\"kwd\">extends</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pun\">.</span><span class=\"typ\">Component</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n     render</span><span class=\"pun\">()</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n        </span><span class=\"kwd\">return</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">\n           </span><span class=\"str\">&lt;div&gt;</span><span class=\"pln\">\n              </span><span class=\"str\">&lt;h1&gt;</span><span class=\"typ\">Header</span><span class=\"pun\">&lt;/</span><span class=\"pln\">h1</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n              </span><span class=\"str\">&lt;h2&gt;</span><span class=\"typ\">Content</span><span class=\"pun\">&lt;/</span><span class=\"pln\">h2</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n              </span><span class=\"str\">&lt;p&gt;</span><span class=\"typ\">This</span><span class=\"pln\"> </span><span class=\"kwd\">is</span><span class=\"pln\"> the content</span><span class=\"pun\">!!!&lt;/</span><span class=\"pln\">p</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n           </span><span class=\"pun\">&lt;/</span><span class=\"pln\">div</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n        </span><span class=\"pun\">);</span><span class=\"pln\">\n     </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"kwd\">export</span><span class=\"pln\"> </span><span class=\"kwd\">default</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pun\">;</span></pre>\n  \n  \n  <img src=\"https://www.tutorialspoint.com/reactjs/images/react_jsx_wrapper.jpg\" alt=\"React JSX Wrapper\">\n  \n  \n  <h2> Attributes </h2>\n  <p> Chúng ta có thể sử dụng custom attributes ngoài các attributes và HTML properties thông thường. Khi muốn thêm custom attributes, cần sử dụng tiền tố <b> data- </b>. Trong ví dụ sau, chúng ta thêm <b> data-myattribute </b> làm thuộc tính của phần tử <b> p </b>. </p>\n  \n  \n  <pre class=\"prettyprint notranslate prettyprinted\" style=\"\"><span class=\"kwd\">import</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pln\"> </span><span class=\"kwd\">from</span><span class=\"pln\"> </span><span class=\"str\">react</span><span class=\"pun\">;</span><span class=\"pln\">\n  \n  </span><span class=\"kwd\">class</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pln\"> </span><span class=\"kwd\">extends</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pun\">.</span><span class=\"typ\">Component</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n     render</span><span class=\"pun\">()</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n        </span><span class=\"kwd\">return</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">\n           </span><span class=\"str\">&lt;div&gt;</span><span class=\"pln\">\n              </span><span class=\"str\">&lt;h1&gt;</span><span class=\"typ\">Header</span><span class=\"pun\">&lt;/</span><span class=\"pln\">h1</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n              </span><span class=\"str\">&lt;h2&gt;</span><span class=\"typ\">Content</span><span class=\"pun\">&lt;/</span><span class=\"pln\">h2</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n              </span><span class=\"pun\">&lt;</span><span class=\"pln\">p data</span><span class=\"pun\">-</span><span class=\"pln\">myattribute </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"str\">\"somevalue\"</span><span class=\"pun\">&gt;</span><span class=\"typ\">This</span><span class=\"pln\"> </span><span class=\"kwd\">is</span><span class=\"pln\"> the content</span><span class=\"pun\">!!!&lt;/</span><span class=\"pln\">p</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n           </span><span class=\"pun\">&lt;/</span><span class=\"pln\">div</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n        </span><span class=\"pun\">);</span><span class=\"pln\">\n     </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"kwd\">export</span><span class=\"pln\"> </span><span class=\"kwd\">default</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pun\">;</span></pre>\n  \n  \n  <h2> JavaScript Expressions </h2>\n  <p> Các JavaScript Expressions có thể được sử dụng bên trong JSX. Chỉ cần wrap nó với dấu ngoặc <b> {} </b>. Ví dụ sau sẽ render <b> 2 </b>. </P>\n  \n  <pre class=\"prettyprint notranslate prettyprinted\" style=\"\"><span class=\"kwd\">import</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pln\"> </span><span class=\"kwd\">from</span><span class=\"pln\"> </span><span class=\"str\">react</span><span class=\"pun\">;</span><span class=\"pln\">\n  \n  </span><span class=\"kwd\">class</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pln\"> </span><span class=\"kwd\">extends</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pun\">.</span><span class=\"typ\">Component</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n     render</span><span class=\"pun\">()</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n        </span><span class=\"kwd\">return</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">\n           </span><span class=\"str\">&lt;div&gt;</span><span class=\"pln\">\n              </span><span class=\"str\">&lt;h1&gt;</span><span class=\"pun\">{</span><span class=\"lit\">1</span><span class=\"pun\">+</span><span class=\"lit\">1</span><span class=\"pun\">}&lt;/</span><span class=\"pln\">h1</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n           </span><span class=\"pun\">&lt;/</span><span class=\"pln\">div</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n        </span><span class=\"pun\">);</span><span class=\"pln\">\n     </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"kwd\">export</span><span class=\"pln\"> </span><span class=\"kwd\">default</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pun\">;</span></pre>\n  \n  <img src=\"https://www.tutorialspoint.com/reactjs/images/react_jsx_inline_javascript.jpg\" alt=\"React JSX Inline Javascript\">\n  \n  <p> Không thể sử dụng câu lệnh <b> if else </b> bên trong JSX, thay vào đó có thể sử dụng biểu thức <b> có điều kiện (ternary) </b>. Trong ví dụ sau, biến <b> i </b> bằng <b> 1 </b> do đó trình duyệt sẽ render <b> true </b>, nếu chúng ta thay đổi nó thành một giá trị khác, nó sẽ render <b> false </b>. </p>\n  \n  <pre class=\"prettyprint notranslate prettyprinted\" style=\"\"><span class=\"kwd\">import</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pln\"> </span><span class=\"kwd\">from</span><span class=\"pln\"> </span><span class=\"str\">react</span><span class=\"pun\">;</span><span class=\"pln\">\n  \n  </span><span class=\"kwd\">class</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pln\"> </span><span class=\"kwd\">extends</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pun\">.</span><span class=\"typ\">Component</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n     render</span><span class=\"pun\">()</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n        </span><span class=\"kwd\">var</span><span class=\"pln\"> i </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"lit\">1</span><span class=\"pun\">;</span><span class=\"pln\">\n        </span><span class=\"kwd\">return</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">\n           </span><span class=\"str\">&lt;div&gt;</span><span class=\"pln\">\n              </span><span class=\"str\">&lt;h1&gt;</span><span class=\"pun\">{</span><span class=\"pln\">i </span><span class=\"pun\">==</span><span class=\"pln\"> </span><span class=\"lit\">1</span><span class=\"pln\"> </span><span class=\"pun\">?</span><span class=\"pln\"> </span><span class=\"str\">\"True!\"</span><span class=\"pln\"> </span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"str\">\"False\"</span><span class=\"pun\">}&lt;/</span><span class=\"pln\">h1</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n           </span><span class=\"pun\">&lt;/</span><span class=\"pln\">div</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n        </span><span class=\"pun\">);</span><span class=\"pln\">\n     </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"kwd\">export</span><span class=\"pln\"> </span><span class=\"kwd\">default</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pun\">;</span></pre>\n  <img src=\"https://www.tutorialspoint.com/reactjs/images/react_jsx_ternary_expression.jpg\" alt=\"React JSX Ternary Expression\"> \n  \n  <h2> Styling </h2>\n  <p> React khuyến cáo sử dụng các kiểu inline styles. Khi muốn thiết lập các kiểu inline styles, chúng ta cần sử dụng cú pháp <b> camelCase </b>. React cũng sẽ tự động nối <b> px </b> sau khi đánh số trên các phần tử cụ thể. Ví dụ sau cho biết cách thêm phần tử <b> myStyle </b> vào thẻ <b> h1 </b>. </P>\n  \n  <pre class=\"prettyprint notranslate prettyprinted\" style=\"\"><span class=\"kwd\">import</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pln\"> </span><span class=\"kwd\">from</span><span class=\"pln\"> </span><span class=\"str\">react</span><span class=\"pun\">;</span><span class=\"pln\">\n  \n  </span><span class=\"kwd\">class</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pln\"> </span><span class=\"kwd\">extends</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pun\">.</span><span class=\"typ\">Component</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n     render</span><span class=\"pun\">()</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n        </span><span class=\"kwd\">var</span><span class=\"pln\"> myStyle </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n           fontSize</span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"lit\">100</span><span class=\"pun\">,</span><span class=\"pln\">\n           color</span><span class=\"pun\">:</span><span class=\"pln\"> </span><span class=\"str\">#FF0000</span><span class=\"pln\">\n        </span><span class=\"pun\">}</span><span class=\"pln\">\n        </span><span class=\"kwd\">return</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">\n           </span><span class=\"str\">&lt;div&gt;</span><span class=\"pln\">\n              </span><span class=\"pun\">&lt;</span><span class=\"pln\">h1 style </span><span class=\"pun\">=</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">myStyle</span><span class=\"pun\">}&gt;</span><span class=\"typ\">Header</span><span class=\"pun\">&lt;/</span><span class=\"pln\">h1</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n           </span><span class=\"pun\">&lt;/</span><span class=\"pln\">div</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n        </span><span class=\"pun\">);</span><span class=\"pln\">\n     </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"kwd\">export</span><span class=\"pln\"> </span><span class=\"kwd\">default</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pun\">;</span></pre>\n  <img src=\"https://www.tutorialspoint.com/reactjs/images/react_jsx_inline_style.jpg\" alt=\"React JSX Inline Style\">\n  \n  <h2> Comments </h2>\n  <p> Khi viết comments, cần đặt dấu ngoặc nhọn <b> {} </b> khi muốn viết comments trong phần children của thẻ. Đó là một cách thực hành tốt để luôn luôn sử dụng <b> {} </b> khi viết comments, bởi vì chúng ta cần sự nhất quán khi viết ứng dụng. </P>\n  \n  <pre class=\"prettyprint notranslate prettyprinted\" style=\"\"><span class=\"kwd\">import</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pln\"> </span><span class=\"kwd\">from</span><span class=\"pln\"> </span><span class=\"str\">react</span><span class=\"pun\">;</span><span class=\"pln\">\n  \n  </span><span class=\"kwd\">class</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pln\"> </span><span class=\"kwd\">extends</span><span class=\"pln\"> </span><span class=\"typ\">React</span><span class=\"pun\">.</span><span class=\"typ\">Component</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n     render</span><span class=\"pun\">()</span><span class=\"pln\"> </span><span class=\"pun\">{</span><span class=\"pln\">\n        </span><span class=\"kwd\">return</span><span class=\"pln\"> </span><span class=\"pun\">(</span><span class=\"pln\">\n           </span><span class=\"str\">&lt;div&gt;</span><span class=\"pln\">\n              </span><span class=\"str\">&lt;h1&gt;</span><span class=\"typ\">Header</span><span class=\"pun\">&lt;/</span><span class=\"pln\">h1</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n              </span><span class=\"pun\">{</span><span class=\"com\">//End of the line Comment...}</span><span class=\"pln\">\n              </span><span class=\"pun\">{</span><span class=\"com\">/*Multi line comment...*/</span><span class=\"pun\">}</span><span class=\"pln\">\n           </span><span class=\"pun\">&lt;/</span><span class=\"pln\">div</span><span class=\"pun\">&gt;</span><span class=\"pln\">\n        </span><span class=\"pun\">);</span><span class=\"pln\">\n     </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"pun\">}</span><span class=\"pln\">\n  </span><span class=\"kwd\">export</span><span class=\"pln\"> </span><span class=\"kwd\">default</span><span class=\"pln\"> </span><span class=\"typ\">App</span><span class=\"pun\">;</span></pre>\n  \n  <h2> Naming Convention </h2>\n  <p> Thẻ HTML luôn sử dụng tên thẻ <b> chữ thường </b>, trong khi các thành phần React lại bắt đầu với <b> Chữ viết hoa </b>. </p>\n  Note  </b> - Bạn nên sử dụng <b> className </b> và <b> htmlFor </b> dưới dạng các tên thuộc tính XML thay vì <b> class </b> và <b> for </b>. </p>\n  <p> Điều này được giải thích trên trang chủ React như sau - Vì JSX là JavaScript, nên các định danh như <b> class </b> và <b> for </b> không được khuyến khích làm tên thuộc tính XML. Thay vào đó, React DOM components mong đợi các DOM property được đặt tên là <b> className </b> và <b> htmlFor </b> tương ứng. </p>\n  <hr/> <p><i>Nguồn: tutorialspoint.com</i></p>',1,8,'[ReactJS Tutorial] Bài 2 - JSX','reactjs-bai2'),(9,'Hoàng Phạm','http://vjiat.vn/wp-content/uploads/2017/09/185_xuanvu_banner_tuyendung.jpg',1,'Để đáp ứng nhu cầu phát triển, HT Active cần tuyển 2 PHP Developer.','<h2>Thông tin ứng tuyển</h2>\n <p>Gởi email đính kèm CV về địa chỉ <a href=\"mailto:services@htactive.com\">services@htactive.com</a></p>\n <h2>Yêu Cầu Công Việc</h2>\n <ol><li>Có ít nhất 1 năm kinh nghiệm về lập trình PHP, OOP, MVC, có hiểu biết về Javascript.</li><li>Có tư duy logic tốt, hiểu biết về data structrures, algorithm, design pattern.</li><li>Có hiểu biết về server-client, Webservice, Json API, Restful API.</li><li>Đã từng làm việc qua với ít nhất 1 PHP framework: Codeigniter, Yii, Laravel, CakePHP.</li><li>Có kinh nghiệm với: HTML/CSS, GIT là một lợi thế.</li><li>Có hiểu biết tốt về Responsive và mobile là một lợi thế.</li><li>Có khả năng đọc hiểu tài liệu và yêu cầu khách hàng bằng tiếng Anh là một lợi thế</li></ol>\n <h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2>\n <p><strong>- Mức lương xứng đáng với công sức của bạn</strong></p><p>HT Active luôn cân nhắc giữa hiệu quả công việc bạn đạt được và mức đãi ngộ tương xứng với chế độ khen thưởng rõ ràng, minh bạch. Bạn sẽ luôn nhận lại những giá trị tương ứng với công sức mình bỏ ra.</p><p><strong>- Cơ hội học hỏi những cái mới</strong></p><p>Tại HT Active, bạn sẽ được tiếp xúc với những mô hình mới, công nghệ mới thường xuyên. Luôn có những buổi presentation để giới thiệu và thảo luận hàng tuần.</p><p><strong>- Làm việc trong một môi trường cực kỳ thoải mái.</strong></p><p>HT Active luôn mong muốn bạn tìm được niềm vui trong công việc. Vì lý do đó, vấn đề vui chơi giải trí rất được xem trọng tại công ty, bạn hoàn toàn có quyền đề nghị công ty tạo ra một không gian giải trí cho mình để có thể làm việc thoải mái nhất.</p><p><strong>- Bạn có những kỳ nghỉ hàng năm ấn tượng</strong></p><p>Ngoài các buổi dã ngoại, party thường xuyên, hàng năm công ty luôn có những chuyến du lịch đến những địa điểm thú vị trong và ngoài nước cho tất cả thành viên.</p>',1,9,'2 Junior PHP Devs - Up to 10M','tuyen-dung-junior-php-htactive'),(10,'Mạnh Nguyễn','https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/components_react_native.png',1,'Những Material component tuyệt vời trong React Native.','Ngày đầu tiên khi mình tiếp cận React Native là năm 2016, tại thời điểm này, việc implement một giao diện người dùng đẹp đẽ, thân thiện thật sự là rất khó khăn. React và React Native ra đời để hỗ trợ việc render giao diện chứ không hỗ trợ lập trình viên cũng như nhà phát triển ứng dụng để họ có thể tối ưu hóa UI/UX trên giao diện của họ. Thời điểm đó, gần như không có library, toolkit hoặc các thứ tương tự để xây dựng giao diện. Tuy nhiên theo thời gian, mọi thứ đã thay đổi, hôm nay React có thể đã được xem như là một trend, một xu hướng của front-end, và theo đó lần lượt các thư viện, các toolkit về UI/UX ra đời (cả cho ReactJS và ReactNative).<br>Riêng về React Native thì đến ngày hôm nay, có rất nhiều UI/UX toolkit ra đời và hỗ trợ rất nhiều cho developer. Chúng ta chỉ đơn giản cài đặt, sử dụng và làm theo hướng dẫn trong các toolkit này thì sẽ có một giao diện đẹp mắt và thân thiện. Vấn đề của toolkit là nó quá lớn, quá cồng kềnh và khó custom. Đọc đến đây có thể một vài bạn sẽ không đồng ý và cho rằng hoàn toàn có thể custom được những toolkit này vì nó là open source. Okay fine! trong thời buổi open source này, cái gì cũng custom được, mình đồng ý. Tuy nhiên trong giới hạn của bài viết này, mình sẽ không đề cập đến các toolkit mà sẽ giới thiệu các library UI trong React Native theo thiên hướng Material design để các bạn có thể dễ dàng integrate và sử dụng.<br>Những thư viện bên dưới theo mình đánh giá là nhỏ, nhẹ, dễ dàng quản lý và đặc biệt là vẫn đang được maintenance tính đến thời điểm bài viết này được viết (tháng 6 năm 2018).<br><h3>1. react-native-material-bottom-navigation</h3><br>Thư viện này hỗ trợ cho mình một cái bottom navigation theo thiên hướng Material design cực kì đẹp mắt và \"chuẩn cơm mẹ nấu\".<br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/bottom-navigation.png\" alt=\"bottom-navigation-example\"/><br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/bottom-navigation-1.gif\" alt=\"bottom-navigation-example\"/><br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/bottom-navigation-2.gif\" alt=\"bottom-navigation-example\"/><br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/bottom-navigation-3.gif\" alt=\"bottom-navigation-example\"/><br>Nó là thuần javascript, không sử dụng native, đơn giản dễ cài đặt, dễ sử dụng. Hơn nữa, hiện tại nó là một standalone library, có thể sử dụng chung với các library về router hoặc navigator tùy sở thích.<br>Link github: <a href=\"https://github.com/timomeh/react-native-material-bottom-navigation\">https://github.com/timomeh/react-native-material-bottom-navigation</a><br><h3>2. react-native-snap-carousel</h3><br>Mình từng dùng và biết cũng cơ số những component như này trong ReactNative. Nhìn chung thì chúng đều ổn và chạy OK. Nhưng thư viện này thật sự gây ấn tượng khá tốt với cá nhân mình. Cũng chẳng biết phải giải thích như thế nào, thôi thì upload vài cái ảnh gif lên đây để các bạn cùng đánh giá.<br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/snap-carousel-1.gif\" alt=\"snap-carousel\"/><br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/snap-carousel-2.gif\" alt=\"snap-carousel\"/><br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/snap-carousel-3.gif\" alt=\"snap-carousel\"/><br>Trong các ứng dụng thực tế:<br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/snap-carousel-4.gif\" alt=\"snap-carousel\"/><br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/snap-carousel-5.gif\" alt=\"snap-carousel\"/><br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/snap-carousel-6.gif\" alt=\"snap-carousel\"/><br>Thư viện này hiện đang được bảo trì và support khá tốt từ nhóm phát triển, nó hiện đang sử dụng flatlist và lazy load nên trông rất mượt mà về performance. Example của thư viện này là một cái app hoàn chỉnh, các bạn có thể xem và học hỏi các component khác trong example đó.<br>Link github: <a href=\"https://github.com/archriss/react-native-snap-carousel\">https://github.com/archriss/react-native-snap-carousel</a><br><h3>3. react-native-material-dropdown</h3><br>Bạn đang tìm kiếm một component drop-down có dáng dấp của native? Yeah, bạn đến đúng chỗ rồi đấy!!! Thư viện này cung cấp một drop-down component mà thích hợp cho cả IOS và Android cả về UI, UX. Cá nhân mình đảm bảo rằng các bạn sẽ thích nó khi sử dụng.<br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/dropdown-material.gif\" alt=\"dropdown-material\"/><br>Link github: <a href=\"https://github.com/n4kz/react-native-material-dropdown\">https://github.com/n4kz/react-native-material-dropdown</a><br><h3>4. react-native-material-textfield</h3><br>Cũng đến từ cùng một nhà phát triển với dropdown ở trên, thư viện này cho ta các components input theo đúng chuẩn Material design<br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/input.gif\" alt=\"input\"/><br>Link github: <a href=\"https://github.com/n4kz/react-native-material-textfield\">https://github.com/n4kz/react-native-material-textfield</a><br><h3>5. react-native-material-menu</h3><br>Dự án của bạn đang cần implement một cái button mà khi bấm vào đó sẽ có 1 cái menu overflow hiện ra và bạn đang đi tìm thư viện cho nó? Yeah, nó đây chứ đâu !!! Mô tả nhiều thì lan man, đại khái nó là pure javascript, không có native module, có animation đẹp và có support ripple. Tóm lại là nhìn như native :)<br><img src=\"https://s3-ap-southeast-1.amazonaws.com/htactive/blogs/menu.gif\" alt=\"menu\"/><br>Link github: <a href=\"https://github.com/mxck/react-native-material-menu\">https://github.com/mxck/react-native-material-menu</a><br><h3>6. react-native-snackbar</h3><br>Nếu bạn đang tìm kiếm một component cho snack bar hoặc toast đơn giản dể dùng, không cần phải render trong hàm render, có thể dễ dàng gọi ra ở bất cứ đâu trong code (sau một callback api, hoặc một action sagas) thì bạn sẽ cần thư viện này.<br>- Không cần thêm trong hàm render.<br>- Dễ dàng invoke trong business logic.<br><code>Snackbar.show({<br>title: \'Hello world\',<br>duration: Snackbar.LENGTH_SHORT,<br>});<br></code><br>Trên đây là một số thư viện khá hay về UI mà mình muốn giới thiệu, vẫn còn một số nữa nhưng mà bài viết có vẻ dài quá rồi. Hẹn gặp lại ở phần 2 nhé!',1,10,'Những Material component tuyệt vời trong React Native.','nhung-material-component-tuyet-voi-trong-react-native.'),(11,'Hoàng Phạm','http://vjiat.vn/wp-content/uploads/2017/09/185_xuanvu_banner_tuyendung.jpg',1,'Để đáp ứng nhu cầu phát triển, HT Active cần tuyển nhiều vị trí lập trình viên Junior - Senior.','<h2>Thông tin ứng tuyển</h2>\n  <p>Gởi email đính kèm CV về địa chỉ <a href=\"mailto:services@htactive.com\">services@htactive.com</a></p>\n  <h2>Yêu Cầu Công Việc</h2>\n  <ol><li>Có kinh nghiệm trong các lĩnh vực sau: React, Angular, NodeJS, .NET, PHP</li><li>Có tư duy logic tốt, hiểu biết về data structrures, algorithm, design pattern.</li><li>Có hiểu biết về server-client, Webservice, Json API, Restful API.</li><li>Có kinh nghiệm với: HTML/CSS, GIT là một lợi thế.</li><li>Có hiểu biết tốt về Responsive và mobile development là một lợi thế.</li><li>Có khả năng đọc hiểu tài liệu và yêu cầu khách hàng bằng tiếng Anh là một lợi thế</li></ol>\n  <h2>Tại Sao Bạn Sẽ Yêu Thích Làm Việc Tại Đây</h2>\n  <p><strong>- Mức lương xứng đáng với công sức của bạn</strong></p><p>HT Active luôn cân nhắc giữa hiệu quả công việc bạn đạt được và mức đãi ngộ tương xứng với chế độ khen thưởng rõ ràng, minh bạch. Bạn sẽ luôn nhận lại những giá trị tương ứng với công sức mình bỏ ra.</p><p><strong>- Cơ hội học hỏi những cái mới</strong></p><p>Tại HT Active, bạn sẽ được tiếp xúc với những mô hình mới, công nghệ mới thường xuyên. Luôn có những buổi presentation để giới thiệu và thảo luận hàng tuần.</p><p><strong>- Làm việc trong một môi trường cực kỳ thoải mái.</strong></p><p>HT Active luôn mong muốn bạn tìm được niềm vui trong công việc. Vì lý do đó, vấn đề vui chơi giải trí rất được xem trọng tại công ty, bạn hoàn toàn có quyền đề nghị công ty tạo ra một không gian giải trí cho mình để có thể làm việc thoải mái nhất.</p><p><strong>- Teambuilding hàng tuần với nhiều chương trình hấp dẫn</strong></p>',1,11,'Junior - Senior Developer Wanted','Junior-Senior-Developer-Wanted');
/*!40000 ALTER TABLE `newslanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newslanguageimage`
--

DROP TABLE IF EXISTS `newslanguageimage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newslanguageimage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Alt` longtext,
  `NewsLanguageId` int(11) NOT NULL,
  `Priority` int(11) DEFAULT NULL,
  `Src` longtext,
  `CoverType` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_NewsLanguageImage_NewsLanguageId` (`NewsLanguageId`),
  CONSTRAINT `FK_NewsLanguageImage_NewsLanguage_NewsLanguageId` FOREIGN KEY (`NewsLanguageId`) REFERENCES `newslanguage` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newslanguageimage`
--

LOCK TABLES `newslanguageimage` WRITE;
/*!40000 ALTER TABLE `newslanguageimage` DISABLE KEYS */;
INSERT INTO `newslanguageimage` VALUES (1,'Should I learn assembly',3,1,'https://www.youtube.com/embed/0esP0h6SWZ4?ecver=2',2),(4,'Tailor Swift',1,1,'https://scontent.fdad3-2.fna.fbcdn.net/v/t31.0-8/12186373_10153851288373984_354069952193557672_o.jpg?oh=1a4e88ac97875ff3569966473960ea12&oe=5A44A77C',1),(5,'Should I learn assembly',2,1,'https://www.youtube.com/embed/0esP0h6SWZ4?ecver=2',2),(6,'Lập trình cho mọi người',4,1,'https://www.youtube.com/embed/Dv7gLpW91DM?ecver=2',2),(7,'Tuyển dụng - 05 Front-end Devs',5,1,'http://vjiat.vn/wp-content/uploads/2017/09/185_xuanvu_banner_tuyendung.jpg',1),(8,'HTActive Website',5,2,'http://htactive.com/assets/voc/images/logo_red.png',1),(9,'Tuyển dụng',9,1,'http://vjiat.vn/wp-content/uploads/2017/09/185_xuanvu_banner_tuyendung.jpg',1),(10,'Scrum',6,1,'https://media.licdn.com/mpr/mpr/AAEAAQAAAAAAAAnNAAAAJGQzZTUxN2RkLWM0NDQtNDFkMS04MzFlLTc1NzE4M2IzZmYwZg.png',1),(11,'HTActive Website',9,2,'http://htactive.com/assets/voc/images/logo_red.png',1),(12,'Tuyển dụng',11,1,'http://vjiat.vn/wp-content/uploads/2017/09/185_xuanvu_banner_tuyendung.jpg',1);
/*!40000 ALTER TABLE `newslanguageimage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsrelatednews`
--

DROP TABLE IF EXISTS `newsrelatednews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsrelatednews` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CurrentNewsId` int(11) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `RelatedNewsId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_NewsRelatedNews_CurrentNewsId` (`CurrentNewsId`),
  KEY `IX_NewsRelatedNews_RelatedNewsId` (`RelatedNewsId`),
  CONSTRAINT `FK_NewsRelatedNews_News_CurrentNewsId` FOREIGN KEY (`CurrentNewsId`) REFERENCES `news` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_NewsRelatedNews_News_RelatedNewsId` FOREIGN KEY (`RelatedNewsId`) REFERENCES `news` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsrelatednews`
--

LOCK TABLES `newsrelatednews` WRITE;
/*!40000 ALTER TABLE `newsrelatednews` DISABLE KEYS */;
INSERT INTO `newsrelatednews` VALUES (1,1,1,2),(2,1,2,3),(3,2,1,3),(4,3,1,2),(5,3,2,1),(6,4,1,2),(7,4,2,3),(8,5,1,4),(9,7,1,8),(10,8,1,7),(11,10,1,1),(12,10,2,2),(13,10,3,3),(14,11,1,5),(15,11,2,9);
/*!40000 ALTER TABLE `newsrelatednews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Priority` int(11) NOT NULL,
  `ProductType` int(11) DEFAULT NULL,
  `Hidden` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,10,1,NULL),(2,1,2,NULL),(3,2,2,''),(4,3,2,NULL),(5,4,2,NULL),(6,5,3,NULL),(7,6,3,NULL),(8,7,3,NULL),(9,8,3,NULL),(10,9,1,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlanguage`
--

DROP TABLE IF EXISTS `productlanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlanguage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(512) DEFAULT NULL,
  `DescriptionDetailHeader` varchar(512) DEFAULT NULL,
  `DescriptionDetailText` varchar(512) DEFAULT NULL,
  `ImageAlt` varchar(512) DEFAULT NULL,
  `ImageDetailText` varchar(512) DEFAULT NULL,
  `ImageSrc` varchar(512) DEFAULT NULL,
  `Language` int(11) DEFAULT NULL,
  `LinkStoreContent` varchar(512) DEFAULT NULL,
  `LinkStoreHeader` varchar(512) DEFAULT NULL,
  `ProductId` int(11) DEFAULT NULL,
  `ReviewText` varchar(512) DEFAULT NULL,
  `TitleTagForSEO` varchar(512) DEFAULT NULL,
  `TitleText` varchar(512) DEFAULT NULL,
  `TypeName` varchar(512) DEFAULT NULL,
  `VideoDetailAlt` varchar(512) DEFAULT NULL,
  `VideoDetailSrc` varchar(512) DEFAULT NULL,
  `VideoDetailText` varchar(512) DEFAULT NULL,
  `ProductDetailText` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ProductLanguage_ProductId` (`ProductId`),
  CONSTRAINT `FK_ProductLanguage_Product_ProductId` FOREIGN KEY (`ProductId`) REFERENCES `product` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlanguage`
--

LOCK TABLES `productlanguage` WRITE;
/*!40000 ALTER TABLE `productlanguage` DISABLE KEYS */;
INSERT INTO `productlanguage` VALUES (1,'Tap and hold to target the evil trooper, then release to shoot. Aim at the evil trooper\'s head to score more and get rewards!','Age Of Demon Description','Description','','Image','/assets/voc/images/demons.jpg',2,'Check on stores for more detail','Wanna get more detail',1,'Review','Age-of-demon','Age of Demons','Game','','','Video','Product'),(2,'Chạm và giữ ngắm vào mục tiêu, thả ra để bắn. Bắn chính xác sẽ được cộng thêm điểm và phần thưởng.','Chi tiết về Age Of Demon','Mô tả','','Hình ảnh','/assets/voc/images/demons.jpg',1,'Truy cập vào store để tìm hiểu kĩ hơn.','Bạn muốn xem thêm chi tiết',1,'Nhận xét','Age-of-demon','Age of Demons','Trò chơi','','','Video','Mô tả'),(3,'Max market là hệ thống trao đổi mua bán và rao vặt. Sau khi admin cấu hình cho hệ thống, người dùng có thể vào đăng tin rao vặt, tìm kiếm các tin rao vặt.','Công nghệ sử dụng trong hệ thống','Công nghệ','maxmarket.vn','Hình ảnh','/assets/voc/images/max-market.jpg',1,'Truy cập vào Max Market để tìm hiểu thêm','Tìm hiểu thêm',2,'Nhận xét','max-market','Max Market','Ứng dụng web',NULL,NULL,'Video','Mô tả'),(4,'Website tìm kiếm nhà và bất động sản tại Dallas Fort Worth, dữ liệu được tích hợp từ bên thứ ba.','Công nghệ sử dụng trong hệ thống','Công nghệ','dfwnewhomes.com','Hình ảnh','/assets/voc/images/dfw.jpg',1,'Truy cập vào DFW New Homes để tìm hiểu thêm.','Tìm hiểu thêm',3,'Nhận xét','dfw-newhomes','DFW New Homes','Ứng dụng web',NULL,NULL,'Video','Mô tả'),(5,'Website quảng bá cho công ty HT Active, mục đính hiển thị các dự án, các dịch vụ của công ty','Công nghệ sử dụng trong hệ thống','Công nghệ','htactive.com','Hình ảnh','/assets/voc/images/htactive.jpg',1,'Truy cập vào HT Active để tìm hiểu thêm.','Tìm hiểu thêm',4,'Nhận xét','htactive','Site HT Active','Ứng dụng web',NULL,NULL,'Video','Mô tả'),(6,'Website bán hàng cho công ty Đại Thăng Nông, chuyên cung cấp các loại nông sản.','Công nghệ sử dụng trong hệ thống','Công nghệ','dtnkhkt.com.vn','Hình ảnh','/assets/voc/images/dtn.jpg',1,'Truy cập vào trang để tìm hiểu thêm.','Tìm hiểu thêm',5,'Nhận xét','dtkhkt.com.vn','Đại Thắng Nông','Ứng dụng web',NULL,NULL,'Video','Mô tả'),(7,'Ứng dụng Sống Lời Chúa do Bayard Việt Nam biên tập theo ứng dụng Prions en Eglise và Living With Christ của Nhà Xuất Bản Công Giáo BAYARD (Trụ sở chính tại Paris, Pháp)','Công nghệ sử dụng trong hệ thống','Công nghệ','Song Loi Chua','Hình ảnh','/assets/voc/images/slc.jpg',1,'App Store','Xem trên app store',6,'Nhận xét','song-loi-chua','Sống lời chúa','Ứng dụng di động',NULL,NULL,'Video','Mô tả'),(8,'Ứng dụng giúp matching giữa 2 người có cùng sở thích và mối quan tâm, chỉ đường để giúp họ có thể tìm được nhau.','Công nghệ sử dụng trong hệ thống','Công nghệ','Sixteen Plus','Hình ảnh','/assets/voc/images/sixteen.jpg',1,'Google Play','Xem trên Google Play',7,'Nhận xét','sixteen-plus-dating','Sixteen Plus','Ứng dụng di động','Video','https://www.youtube.com/embed/MQzsfDEbgLg?ecver=2','Video','Mô tả'),(9,'Đầy đủ dữ liệu 450 câu hỏi cập nhập mới nhất của cục Khảo Thí, Tổng Cục Đường Bộ Việt Nam. Chế độ ôn thi cho phép xem 450 câu hỏi theo từng mục. Cẩm nang cho phép tra cứu mẹo vặt và kinh nghiệm học lái xe.','Công nghệ sử dụng trong hệ thống','Công nghệ','Sát Hạch Lái Xe','Hình ảnh','/assets/voc/images/sathach.jpg',1,'Xem ứng dụng trên Windows Phone Store','Xem trên Windows Phone Store',8,'Nhận xét','sat-hach-lai-xe','Sát Hạch Lái Xe','Ứng dụng di động','',NULL,'Video','Mô tả'),(10,'Cho phép đọc truyện và tải về hơn 4000 bộ truyện tranh hot nhất hiện nay. Với ứng dụng Truyện tranh 365 này, bạn sẽ được tiếp cận với hàng ngàn tựa truyện manga miễn phí với chất lượng tốt nhất.','Công nghệ sử dụng','Công nghệ','Truyện Tranh 365','Hình ảnh','/assets/voc/images/dragonball.jpg',1,'Xem ứng dụng trên Windows Phone Store','Xem trên Windows Phone Store',9,'Nhận xét','truyen-tranh-365','Truyện Tranh 365','Ứng dụng di động',NULL,NULL,'Video','Mô Tả'),(11,'Bạn sẽ tham gia vào một cuộc đua. Chạm màn hình để lượn và thả ra để đi.','Chi tiết về Fiber Racing','Mô tả','Fiber Racing','Hình ảnh','/assets/voc/images/fiber_racing.jpg',1,'Truy cập vào những link ở bên để tìm hiểu kĩ hơn.','Bạn muốn xem thêm chi tiết',10,'Nhận xét','fiber-racing','Fiber Racing','Game di động','Video','https://www.youtube.com/embed/rjURiI58sAI','Video','Thông tin'),(12,'Max Market is the best website to advertise, buy and sell goods. User can post their notice, and search for products ','Max Market Description','Description','maxmarket.vn','Image','/assets/voc/images/max-market.jpg',2,'Go to Max Market','More detail',2,'Review','max-market','Max Market','Web Application',NULL,NULL,'Video','Product'),(13,'A perfect website to find houses and real estate in Dallas Fort Worth.','DFW Newhomes Description','Description','dfwnewhomes.com','Image','/assets/voc/images/dfw.jpg',2,'Go to DFW Newhomes ','More detail',3,'Review','dfw-newhomes','DFW New Homes','Web Application',NULL,NULL,'Video','Product'),(14,'HT Active is our website to advertise business of company. Show own products was made by HT Active and introduce all services we serve.','HT Active Description','Description','htactive.com','Image','/assets/voc/images/htactive.jpg',2,'Go to HT Active','More detail',4,'Review','htactive','Site HT Active','Web Application',NULL,NULL,'Video','Product'),(15,'Dai Thang Nong\'s website, to provide agricultural products.','DTN Description','Description','dtnkhkt.com.vn','Image','/assets/voc/images/dtn.jpg',2,'Go to DTN','More detail',5,'Review','dtkhkt.com.vn','Dai Thang Nong','Web Application',NULL,NULL,'Video','Product'),(16,'SLC is a mobile application which was designed by Bayard Viet Nam base on a famous application, Prions en Eglise and Living With Christ by BAYARD Inc (Paris, France).','SLC Description','Description','Song Loi Chua','Image','/assets/voc/images/slc.jpg',2,'App Store','See more in App store',6,'Review','song-loi-chua','Song Loi Chua','Mobile Application',NULL,NULL,'Video','Product'),(17,'An application to find friends who have similar habit and interests. Using matching system and directions to find each others.','Sixteen Plus Description','Description','Sixteen Plus','Image','/assets/voc/images/sixteen.jpg',2,'Google Play','See more in Google Play',7,'Review','sixteen-plus-dating','Sixteen Plus','Mobile Application','Video','https://www.youtube.com/embed/MQzsfDEbgLg?ecver=2','Video','Product'),(18,'All 450 newest questions from Ministry of Transportation to help user pass driving examine. Useful tricks and experience to learn driving.','SHLX Description','Description','Sát Hạch Lái Xe','Image','/assets/voc/images/sathach.jpg',2,'Windows Phone Store','See more in Windows Phone Store',8,'Review','sat-hach-lai-xe','Sat Hach Lai Xe','Mobile Application',NULL,NULL,'Video','Product'),(19,'Comic 365 is the best book reading application on Windows Phone Store, with more than 4000 comics from many sources. All of them are free with the best quality.','Comic 365 Description','Description','Comic 365','Image','/assets/voc/images/dragonball.jpg',2,'Windows Phone Store','See more in Windows Phone Store',9,'Review','truyen-tranh-365','Comic 365','Mobile Application',NULL,NULL,'Video','Product'),(20,'Tap to swing and release to let go. Travel as far as possible using simple one touch controls. Collect coins and unlock awesome cars!','Fiber Racing Description','Description','Fiber Racing','Image','/assets/voc/images/fiber_racing.jpg',2,'Check on stores for more detail','Find on stores',10,'Review','fiber-racing','Fiber Racing','Game','Video','https://www.youtube.com/embed/rjURiI58sAI','Video','Product');
/*!40000 ALTER TABLE `productlanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlanguagedescriptiondetail`
--

DROP TABLE IF EXISTS `productlanguagedescriptiondetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlanguagedescriptiondetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(512) DEFAULT NULL,
  `ProductLanguageId` int(11) DEFAULT NULL,
  `Title` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ProductLanguageDescriptionDetail_ProductLanguageId` (`ProductLanguageId`),
  CONSTRAINT `FK_ProductLanguageDescriptionDetail_ProductLanguage_ProductLangu` FOREIGN KEY (`ProductLanguageId`) REFERENCES `productlanguage` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlanguagedescriptiondetail`
--

LOCK TABLES `productlanguagedescriptiondetail` WRITE;
/*!40000 ALTER TABLE `productlanguagedescriptiondetail` DISABLE KEYS */;
INSERT INTO `productlanguagedescriptiondetail` VALUES (1,'Game',1,'Category'),(2,'Arcade Game, Role-Playing Game, Minigame',1,'Game Type'),(3,'Free Game, can get/play on Android/IOS/Windows',1,'Pricing & Distribution'),(4,'Not support',1,'In-App Products'),(5,'Rated for 3+, Everyone',1,'Content Rating'),(6,'Trò chơi',2,'Danh mục'),(7,'Đi cảnh, nhập vai, trò chơi nhỏ',2,'Loại trò chơi'),(8,'Trò chơi miễn phí, có thể tải về/chơi trên Android/IOS/Windows',2,'Giá cả & Phân phối'),(9,'Không hỗ trợ',2,'Mua hàng'),(10,'Được đánh giá 3+, cho mọi người',2,'Đánh giá nội dung'),(11,'ASP.Net Web API',3,'Backend'),(12,'MySQL, Entity framework core',3,'Database'),(13,'ReactJS with Typescripts, Bootstraps',3,'Frontend'),(14,'Json Web Token',3,'Authentication'),(15,'Speed SMS',3,'SMS sending'),(16,'Facebook, Google Plus',3,'Login Providers'),(17,'ASP.Net core Web API',4,'Backend'),(18,'MySQL, Entity framework core',4,'Database'),(19,'ReactJS with Typescripts, Bootstraps, MVC 6',4,'Frontend'),(20,'Json Web Token',4,'Authentication'),(21,'Facebook, Google Plus',4,'Login Providers'),(22,'iHomeFinder (http://www.ihomefinder.com/)',4,'Data'),(23,'ASP.Net core 2.0',5,'Backend'),(24,'MySQL, EF Core code first',5,'Database'),(25,'Razor view, JQuery, Bootstraps',5,'Fontend'),(26,'Laravel, PHP',6,'Website'),(27,'My SQL',6,'Database'),(28,'JQuery',6,'Fontend'),(29,'React Native',7,'Frontend'),(30,'React Native',8,'Frontend'),(31,'XAML, C#, WindowsRT',9,'Application'),(32,'XAML, C#, Universal WinRT',10,'Application'),(33,'Asp.Net, WebAPI, MangaRock API',10,'Backend'),(34,'Trò chơi',11,'Danh mục'),(35,'Đua xe, trò chơi nhỏ',11,'Loại trò chơi'),(36,'Trò chơi miễn phí, có thể tải về/chơi trên Android/IOS/Windows',11,'Giá cả & Phân phối'),(37,'Không hỗ trợ',11,'Mua hàng'),(38,'Được đánh giá 4+, cho mọi người',11,'Đánh giá nội dung'),(39,'ASP.Net Web API',12,'Backend'),(40,'MySQL, Entity framework core',12,'Database'),(41,'ReactJS with Typescripts, Bootstraps',12,'Frontend'),(42,'Json Web Token',12,'Authentication'),(43,'Speed SMS',12,'SMS sending'),(44,'Facebook, Google Plus',12,'Login Providers'),(45,'ASP.Net core Web API',13,'Backend'),(46,'MySQL, Entity framework core',13,'Database'),(47,'ReactJS with Typescripts, Bootstraps, MVC 6',13,'Frontend'),(48,'Json Web Token',13,'Authentication'),(49,'Facebook, Google Plus',13,'Login Providers'),(50,'iHomeFinder (http://www.ihomefinder.com/)',13,'Data'),(51,'ASP.Net core 2.0',14,'Backend'),(52,'MySQL, EF Core code first',14,'Database'),(53,'Razor view, JQuery, Bootstraps',14,'Frontend'),(54,'Laravel, PHP',15,'Backend'),(55,'My SQL',15,'Database'),(56,'JQuery',15,'Frontend'),(57,'React Native',16,'Frontend'),(58,'React Native',17,'Frontend'),(59,'XAML, C#, WindowsRT',18,'Application'),(60,'XAML, C#, Universal WinRT',19,'Application'),(61,'Asp.Net, WebAPI, MangaRock API',19,'Backend'),(62,'Game',20,'Category'),(63,'Racing',20,'Type'),(64,'Free game',20,'Pricing'),(65,'4+ stars rating, for everyone',20,'Rating');
/*!40000 ALTER TABLE `productlanguagedescriptiondetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlanguageimagedetail`
--

DROP TABLE IF EXISTS `productlanguageimagedetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlanguageimagedetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Alt` varchar(512) DEFAULT NULL,
  `ProductLanguageId` int(11) DEFAULT NULL,
  `Src` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ProductLanguageImageDetail_ProductLanguageId` (`ProductLanguageId`),
  CONSTRAINT `FK_ProductLanguageImageDetail_ProductLanguage_ProductLanguageId` FOREIGN KEY (`ProductLanguageId`) REFERENCES `productlanguage` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlanguageimagedetail`
--

LOCK TABLES `productlanguageimagedetail` WRITE;
/*!40000 ALTER TABLE `productlanguageimagedetail` DISABLE KEYS */;
INSERT INTO `productlanguageimagedetail` VALUES (1,'Game-age-of-demons-i1',1,'/assets/voc/images/ageOfDeamon_01.png'),(2,'Game-age-of-demons-i2',1,'/assets/voc/images/ageOfDeamon_02.png'),(3,'Game-age-of-demons-i3',1,'/assets/voc/images/ageOfDeamon_03.png'),(4,'tro-choi-age-of-demons-hinh-1',2,'/assets/voc/images/ageOfDeamon_01.png'),(5,'tro-choi-age-of-demons-hinh-2',2,'/assets/voc/images/ageOfDeamon_02.png'),(6,'tro-choi-age-of-demons-hinh-3',2,'/assets/voc/images/ageOfDeamon_03.png'),(7,'max-market-1',3,'/assets/voc/images/max-market-1.jpg'),(8,'max-market-2',3,'/assets/voc/images/max-market-2.jpg'),(9,'max-market-3',3,'/assets/voc/images/max-market-3.jpg'),(10,'DFW New Homes 1',4,'/assets/voc/images/newhomes-1.png'),(11,'DFW New Homes 2',4,'/assets/voc/images/newhomes-2.png'),(12,'DFW New Homes 3',4,'/assets/voc/images/newhomes-3.png'),(13,'HT Active 1',5,'/assets/voc/images/htactive-1.png'),(14,'HT Active 2',5,'/assets/voc/images/htactive-2.png'),(15,'HT Active 3',5,'/assets/voc/images/htactive-3.png'),(16,'Đại Thắng Nông 1',6,'/assets/voc/images/dtn-1.png'),(17,'Đại Thắng Nông 2',6,'/assets/voc/images/dtn-2.png'),(18,'Đại Thắng Nông 3',6,'/assets/voc/images/dtn-3.png'),(19,'Sống Lời Chúa 1',7,'/assets/voc/images/slc-1.jpg'),(20,'Sống Lời Chúa 2',7,'/assets/voc/images/slc-2.jpg'),(21,'Sống Lời Chúa 3',7,'/assets/voc/images/slc-3.jpg'),(22,'Sixteen Plus 1',8,'/assets/voc/images/sixteen-1.jpg'),(24,'Sát hạch lái xe Windows Phone',9,'/assets/voc/images/sathach-1.jpg'),(25,'Sát hạch lái xe Windows Phone',9,'/assets/voc/images/sathach-2.jpg'),(26,'Sát hạch lái xe Windows Phone',9,'/assets/voc/images/sathach-3.jpg'),(27,'Sát hạch lái xe Windows Phone',9,'/assets/voc/images/sathach-4.jpg'),(28,'Sát hạch lái xe Windows Phone',9,'/assets/voc/images/sathach-5.jpg'),(29,'Sát hạch lái xe Windows Phone',9,'/assets/voc/images/sathach-6.jpg'),(30,'Sát hạch lái xe Windows Phone',9,'/assets/voc/images/sathach-7.jpg'),(32,'Truyện Tranh 365 - 1',10,'/assets/voc/images/c365-1.jpg'),(33,'Truyện Tranh 365 - 2',10,'/assets/voc/images/c365-2.jpg'),(34,'Truyện Tranh 365 - 3',10,'/assets/voc/images/c365-3.jpg'),(35,'Truyện Tranh 365 - 4',10,'/assets/voc/images/c365-4.jpg'),(36,'Truyện Tranh 365 - 5',10,'/assets/voc/images/c365-5.jpg'),(37,'Truyện Tranh 365 - 6',10,'/assets/voc/images/c365-6.jpg'),(38,'Truyện Tranh 365 - 7',10,'/assets/voc/images/c365-7.jpg'),(39,'Truyện Tranh 365 - 8',10,'/assets/voc/images/c365-8.jpg'),(40,'Fiber Racing - 1',11,'/assets/voc/images/fiber_racing_01.png'),(41,'Fiber Racing - 2',11,'/assets/voc/images/fiber_racing_02.png'),(42,'Fiber Racing - 3',11,'/assets/voc/images/fiber_racing_03.png'),(43,'Fiber Racing - 4',11,'/assets/voc/images/fiber_racing_04.png'),(44,'Fiber Racing - 5',11,'/assets/voc/images/fiber_racing_05.png'),(45,'max-market-1',12,'/assets/voc/images/max-market-1.jpg'),(46,'max-market-2',12,'/assets/voc/images/max-market-2.jpg'),(47,'max-market-3',12,'/assets/voc/images/max-market-3.jpg'),(48,'DFW New Homes 1',13,'/assets/voc/images/newhomes-1.png'),(49,'DFW New Homes 2',13,'/assets/voc/images/newhomes-2.png'),(50,'DFW New Homes 3',13,'/assets/voc/images/newhomes-3.png'),(51,'HT Active 1',14,'/assets/voc/images/htactive-1.png'),(52,'HT Active 2',14,'/assets/voc/images/htactive-2.png'),(53,'HT Active 3',14,'/assets/voc/images/htactive-3.png'),(54,'DTN 1',15,'/assets/voc/images/dtn-1.png'),(55,'DTN 2',15,'/assets/voc/images/dtn-2.png'),(56,'DTN 3',15,'/assets/voc/images/dtn-3.png'),(57,'SLC 1',16,'/assets/voc/images/slc-1.jpg'),(58,'SLC 2',16,'/assets/voc/images/slc-2.jpg'),(59,'SLC 3',16,'/assets/voc/images/slc-3.jpg'),(60,'Sixteen Plus 1',17,'/assets/voc/images/sixteen-1.jpg'),(61,'SHLX',18,'/assets/voc/images/sathach-1.jpg'),(62,'SHLX',18,'/assets/voc/images/sathach-1.jpg'),(63,'SHLX',18,'/assets/voc/images/sathach-1.jpg'),(64,'SHLX',18,'/assets/voc/images/sathach-1.jpg'),(65,'SHLX',18,'/assets/voc/images/sathach-1.jpg'),(66,'SHLX',18,'/assets/voc/images/sathach-1.jpg'),(67,'SHLX',18,'/assets/voc/images/sathach-1.jpg'),(68,'Comic 365',19,'/assets/voc/images/c365-1.jpg'),(69,'Comic 365',19,'/assets/voc/images/c365-2.jpg'),(70,'Comic 365',19,'/assets/voc/images/c365-3.jpg'),(71,'Comic 365',19,'/assets/voc/images/c365-4.jpg'),(72,'Comic 365',19,'/assets/voc/images/c365-5.jpg'),(73,'Comic 365',19,'/assets/voc/images/c365-6.jpg'),(74,'Comic 365',19,'/assets/voc/images/c365-7.jpg'),(75,'Comic 365',19,'/assets/voc/images/c365-8.jpg'),(76,'Fiber Racing',20,'/assets/voc/images/fiber_racing_01.png'),(77,'Fiber Racing',20,'/assets/voc/images/fiber_racing_02.png'),(78,'Fiber Racing',20,'/assets/voc/images/fiber_racing_03.png'),(79,'Fiber Racing',20,'/assets/voc/images/fiber_racing_04.png'),(80,'Fiber Racing',20,'/assets/voc/images/fiber_racing_05.png');
/*!40000 ALTER TABLE `productlanguageimagedetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlanguagelinkstore`
--

DROP TABLE IF EXISTS `productlanguagelinkstore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlanguagelinkstore` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Link` varchar(512) DEFAULT NULL,
  `ProductLanguageId` int(11) DEFAULT NULL,
  `Text` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ProductLanguageLinkStore_ProductLanguageId` (`ProductLanguageId`),
  CONSTRAINT `FK_ProductLanguageLinkStore_ProductLanguage_ProductLanguageId` FOREIGN KEY (`ProductLanguageId`) REFERENCES `productlanguage` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlanguagelinkstore`
--

LOCK TABLES `productlanguagelinkstore` WRITE;
/*!40000 ALTER TABLE `productlanguagelinkstore` DISABLE KEYS */;
INSERT INTO `productlanguagelinkstore` VALUES (1,'http://maxmarket.vn/',3,'Đến Max Market'),(2,'http://dfwnewhomes.com/',4,'Đến DFW New Homes'),(3,'http://htactive.com',5,'Đến trang web HT Active'),(4,'http://dtnkhkt.com.vn/',6,'Đến trang Đại Thắng Nông'),(5,'https://itunes.apple.com/vn/app/s%E1%BB%91ng-l%E1%BB%9Di-ch%C3%BAa/id1007056475?l=vi&mt=8',7,'Xem ứng dụng IOS'),(6,'https://www.facebook.com/songloichua.net/',7,'Xem trang web'),(7,'https://play.google.com/store/apps/details?id=com.sixteen&hl=vi',8,'Google Play'),(8,'https://www.microsoft.com/vi-vn/store/p/sat-hach-lai-xe/9nblggh089r4#',9,'Mua trên Windows Phone Store'),(9,'https://www.microsoft.com/vi-vn/store/p/comic-365/9nblgggzmtns#',10,'Xem trên Windows Phone Store'),(10,'https://play.google.com/store/apps/details?id=org.cocos2dx.FiberRacing',11,'Xem trên Google Play'),(11,'https://itunes.apple.com/vn/app/fiber-racing/id1099871746?l=vi&mt=8',11,'Xem trên App Store'),(12,'https://www.microsoft.com/vi-vn/store/p/fiber-racing/9nblggh4n95t',11,'Xem trên Windows Phone Store'),(13,'http://maxmarket.vn/',12,'Go to Max Market'),(14,'http://dfwnewhomes.com/',13,'Go to DFW New Homes'),(15,'http://htactive.com',14,'Go to HT Active'),(16,'http://dtnkhkt.com.vn/',15,'Go to DTN'),(17,'https://itunes.apple.com/vn/app/s%E1%BB%91ng-l%E1%BB%9Di-ch%C3%BAa/id1007056475?l=vi&mt=8',16,'iOS'),(18,'https://www.facebook.com/songloichua.net/',16,'Website'),(19,'https://play.google.com/store/apps/details?id=com.sixteen&hl=vi',17,'Google Play'),(20,'https://www.microsoft.com/vi-vn/store/p/sat-hach-lai-xe/9nblggh089r4#',18,'Windows Phone Store'),(21,'https://www.microsoft.com/vi-vn/store/p/comic-365/9nblgggzmtns#',19,'Windows Phone Store'),(22,'https://play.google.com/store/apps/details?id=org.cocos2dx.FiberRacing',20,'Google Play'),(23,'https://itunes.apple.com/vn/app/fiber-racing/id1099871746?l=vi&mt=8',20,'App Store'),(24,'https://www.microsoft.com/vi-vn/store/p/fiber-racing/9nblggh4n95t',20,'Windows Phone Store'),(25,'https://play.google.com/store/apps/details?id=org.sdtt.ageofdemons',1,'Google Play'),(26,'https://play.google.com/store/apps/details?id=org.sdtt.ageofdemons',2,'Google Play');
/*!40000 ALTER TABLE `productlanguagelinkstore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlanguageproductdetail`
--

DROP TABLE IF EXISTS `productlanguageproductdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlanguageproductdetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Content` varchar(2048) DEFAULT NULL,
  `Header` varchar(512) DEFAULT NULL,
  `Priority` int(11) DEFAULT NULL,
  `ProductLanguageId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ProductLanguageProductDetail_ProductLanguageId` (`ProductLanguageId`),
  CONSTRAINT `FK_ProductLanguageProductDetail_ProductLanguage_ProductLanguageI` FOREIGN KEY (`ProductLanguageId`) REFERENCES `productlanguage` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlanguageproductdetail`
--

LOCK TABLES `productlanguageproductdetail` WRITE;
/*!40000 ALTER TABLE `productlanguageproductdetail` DISABLE KEYS */;
INSERT INTO `productlanguageproductdetail` VALUES (1,'Age of Demons is the newest addictive game by HTActive.<br /> Join in our mystery world, choose a hero and start your adventure by fighting and sweeping out all monsters on your way.','Age of Demons - Victory or Death',1,1),(2,'Tap and hold to target the evil trooper, then release to shoot.<br />Aim at the evil trooper\'s head to score more and get rewards.<br />Shoot two headshots in a row to enter Power Mode.<br />Enter the Power Mode and go for the more coins.<br />Be careful though, ONE WRONG AIM, YOU DIE.<br />Don\'t fr','How To Play',2,1),(3,'Age of Demons là trò chơi cuốn hút mới nhất được phát hành bởi HTActive.<br /> Hãy tham gia vào thế giới phép thuật của chúng tôi, chọn một nhân vật và bắt đầu chuyến phiêu lưu bằng việc chiến đấu và quét sạch tất cả quái vật trên đường đi.','Age of Demons - Chiến Thắng hoặc Chết',1,2),(4,'Chạm và giữ để ngắm vào mục tiêu, thả ra để bắn.<br />Cố gắng nhắm bắn thật chính xác vào đầu của mục tiêu (headshot) để nhận được thêm điểm và phần thưởng.<br />Nếu bắn được 2 lần headshot liên tiếp, bạn sẽ có năng lực để thi triển kĩ năng tối thượng.<br />Với kĩ năng tối thượng, đòn đánh của bạn s','Cách chơi',2,2),(5,'Max market là hệ thống trao đổi mua bán và rao vặt. Sau khi admin cấu hình cho hệ thống, người dùng có thể vào đăng tin rao vặt, tìm kiếm các tin rao vặt.','Mô tả hệ thống',1,3),(6,'ReactJS, Asp.Net core, MVC6 và MySQL','Công nghệ sử dụng',2,3),(7,'<ul><li>Khả năng tìm kiếm thông minh, phân tích từ ngữ trong câu tìm kiếm để trả về kết quả chính xác nhất cho người sử dụng.</li><li>Quản lý và phân quyền người dùng sử dụng Json Web Token cho khả năng tùy biến cao trong quản lý.</li><li>Áp dụng công nghệ dynamic config trong việc cấu hình biểu mẫu nhập dữ liệu, điều này cho phép Admin tùy chỉnh biểu mẫu khi người dùng đăng tin một cách dễ dàng và chính xác.</li><li>Back-end sử dụng ASP.Net Core, một công nghệ mã nguồn mở, sử dụng code C# có thể build và chạy được trên cả Windows, Linux</li></ul>','Điểm mạnh',3,3),(8,'Hệ thống bao gồm các trang quảng bá và trang tìm kiếm nhà và bất động sản tại Dallas Fort Worth.','Mô tả nghiệp vụ',1,4),(9,'Sử dụng ReactJS để xây dựng ứng dụng admin cho phép Admin có thể chỉnh sửa nội dung, cấu hình các trang nội dung. Dùng MVC thuần để dựa vào cấu hình, load các component tương ứng lên.','Giải pháp trang quảng bá',2,4),(10,'Sử dụng React để build front-end, phía back-end dùng HTML Agility để craw data từ iHomeFinder.','Giải pháp trang tìm kiếm',3,4),(11,'Sử dụng Google Map và google API để hiển thị tọa độ các đối tượng bất động sản.','Giải pháp bản đồ',4,4),(12,'Trang web giới thiệu công ty gồm các chức năng: Hiển thị thông tin của công ty, các dự án, các dịch vụ','Mô tả nghiệp vụ',1,5),(13,'Asp.Net core 2.0, MySQL, Bootstraps','Công nghệ sử dụng',2,5),(14,'Đại Thắng Nông là công ty chuyên nuôi trồng và phân phối nông sản cho khu vực Miền Trung Việt Nam. Website phục vụ cho khách hàng của công ty có thể đặt hàng, có thể đọc thêm tin tức về công ty.','Mô tả nghiệp vụ',1,6),(15,'Laravel, PHP, bootstraps, MySQL','Công nghệ sử dụng',2,6),(16,'Ứng dụng Sống Lời Chúa do Bayard Việt Nam biên tập theo ứng dụng Prions en Eglise và Living With Christ của Nhà Xuất Bản Công Giáo BAYARD (Trụ sở chính tại Paris, Pháp). Sống Lời Chúa được ra đời nhắm giúp cho người tín hữu có cơ hội sống Lời Chúa mỗi ngày trong thế giới đầy ắp thông tin. Ứng dụng Sống Lời Chúa được thực hiện do một nhóm biên soạn gồm các linh mục, tu sĩ, giáo dân. ','Mô tả nghiệp vụ',1,7),(17,'React Native, có thể build được trên cả Android và IOS','Công nghệ',2,7),(18,'Xây dựng giao diện cho ứng dụng hẹn hò online. Ý tưởng matching giữa 2 người có cùng sở thích, cùng mối quan tâm.','Mô tả',1,8),(19,'React Native, Native Base','Công nghệ',2,8),(20,'<ul><li>Đầy đủ dữ liệu 450 câu hỏi cập nhập mới nhất của cục Khảo Thí, Tổng Cục Đường Bộ Việt Nam.</li><li>Tìm kiếm câu hỏi, biển báo bằng cách gõ nội dung cần tìm rất tiện dụng cho việc dạy và học lái xe.</li><li>Chế độ ôn thi cho phép xem 450 câu hỏi theo từng mục.</li><li>Cẩm nang cho phép tra cứu mẹo vặt và kinh nghiệm học lái xe.</li><li>Chế độ làm bài thi với các bộ đề được sinh ngẫu nhiên cho các bằng hạng A1, B2, C, D, E giống như thi thật.</li><li>Xem kết quả sau khi làm xong bài thi.</li></ul>','Mô tả',1,9),(21,'<ul><li>Làm lại hình ảnh sa hình, biển báo rõ hơn.</li><li>Cập nhập 150 câu hỏi thi bằng lái xe A1 và đề thi bằng lái xe A1 theo thông tư 46/2012/TT-BGTVT (20 câu hỏi, đúng trên 16 câu đạt)</li><li>Thêm chức năng cho phép tùy chỉnh số câu hỏi tối đa trên 1 trang (đặt số câu tối đa trên 1 trang bằng 1 để không phải scroll nhiều trên trang)</li><li>Fix lỗi không xem được biển báo trên winphone 8.1</li><li>Sửa lỗi chính tả.</li></ul>','Cập nhập phiên bản 1.2.0.0',2,9),(22,'Truyện tranh 365- Ứng dụng đọc truyện tranh trên Windows phone. Cho phép đọc truyện và tải về hơn 4000 bộ truyện tranh hot nhất hiện nay.<br/>Với ứng dụng Truyện tranh 365 này, bạn sẽ được tiếp cận với hàng ngàn tựa truyện manga miễn phí với chất lượng tốt nhất.','Mô tả',1,10),(23,'<ul><li>Cho phép đọc truyện online và download truyện về máy.</li><li>Tìm kiếm truyện theo tiêu đề.</li><li>Hỗ trợ ghim (pin) các truyện manga yêu thích vào màn hình khởi động để dễ dàng truy cập sau này.</li><li>Hỗ trợ quản lý danh sách truyện yêu thích.</li><li>Lật trang mươt, nhẹ. Hỗ trợ lật trang bằng một chạm.</li></ul>','Các tính năng',2,10),(24,'<ul><li>Tiếng Việt (Việt Nam) </li><li>العربية (المملكة العربية السعودية) </li><li>Deutsch (Deutschland) </li><li>Español (España, Alfabetización Internacional) </li><li>Français (France) </li><li>Italiano (Italia) </li><li>English (United States) </li><li>Русский (Россия) </li><li>中文(中华人民共和国)</li></ul>','Đa ngôn ngữ',3,10),(25,'Fiber Racing là trò chơi mới được phát hành bởi HTActive.<br />Trong trò chơi, bạn là người điều khiển xe trong cuộc đua, tăng tốc và uốn lượn một cách khéo léo để tránh va chạm, đồng thời thu thập được nhiều tiền. Tiền giúp bạn mở khóa được nhiều loại xe mới hơn. Bạn có thể đi được bao xa','Fiber Racing - Cuộc đua để đời',1,11),(26,'Chạm vào màn hình để bắt đầu bẻ lái, thả ra để đi thẳng .<br />Cố gắng chạm và thả thật là khéo léo để xe có thể ôm cua thật ngọt, tránh va chạm.<br />Tại những cung đường uốn lượn, tiền sẽ xuất hiện. Hãy thể hiện khả năng drift của mình để thu thập được càng nhiều đồng tiền càng tốt.<br />Đua càng ','Cách chơi',2,11),(27,'Max Market is a website to advertise, buy and sell goods. User can post their notice, and search for products.','Description',1,12),(28,'ReactJS, Asp.Net Core, MVC6 and MySQL.','Technology',2,12),(29,'<ul><li>Intelligent searching using data indexes, analyze search string to return the best results for users.</li><li>Manage and decentralize users based on Json Web Token to have flexible access.</li><li>Using dynamic configuration to create form for input data, it will help administrator to create form for users to post advertisement.</li><li>Backend is using ASP.Net Core, an open source technology with C#, can run on both Linux and Windows</li></ul>','Detail',3,12),(30,'Advertise and find houses and real estate in Dallas Fort Worth.','Information',1,13),(31,'By using ReactJS, we built an administrator page to edit content, config pages, then using MVC .Net to render component base on that content.','Advertise',2,13),(32,'Using ReactJS to build front-end UI, and use HTML Agility to craw data from iHomeFinder.','Searching',3,13),(33,'Using Google Maps and Google API to show the address of places.','Maps',4,13),(34,'Website to advertise and show our business, with services, projects and portfolios. ','Information',1,14),(35,'Asp.Net core 2.0, MySQL, Bootstraps','Technology',2,14),(36,'Dai Thang Nong is a company provide agricultural products in Middle of Viet Nam. User can access website to buy products and search for information.','Information',1,15),(37,'Laravel, PHP, bootstraps, MySQL','Technology',2,15),(38,'Song Loi Chua App (Living the Word of God) is an aid to you daily prayer, edited by Bayard Vietnam. Song Loi Chua was born with the purpose to help Christians to live daily Gospel in a world full of information. ','Information',1,16),(39,'React Native, run on both iOS and Android, Native Base','Technology',2,16),(40,'An application is used for dating. Using matching system base on people who have similar habit and interests. ','Information',1,17),(41,'React Native, run on both iOS and Android, Native Base','Technology',2,17),(42,'<ul><li>First place on Windows Phone Store in Viet Nam region for years.</li><li>All 450 newest questions from Ministry of Transportation to help user pass driving examine.</li><li>Finding all questions and traffic panel quickly</li><li>Virtual tests base on real driving examine.</li><li>Useful tricks and experience to learn driving.</li><li>Support all types of driving liscence: A1, B2, C, D, E.</li><li>Show results after test.</li></ul>','Information',1,18),(43,'XAML, C#, Universal WinRT','Technology',2,18),(44,'<ul><li>Allows reading and download thousands of the hottest comics today.</li><li>With this 365 Comics app, you will have access to thousands of free manga titles with the best quality.</li><li>Allow reading comics online or downloading for offline reading.</li><li>Support more than 30 popular comic sources in the world.</li><li>Allow searching comics by name, categories and status.</li></ul>','Information',1,19),(45,'XAML, C#, Universal WinRT','Technology',2,19),(46,'<ul><li>Tiếng Việt (Việt Nam) </li><li>العربية (المملكة العربية السعودية) </li><li>Deutsch (Deutschland) </li><li>Español (España, Alfabetización Internacional) </li><li>Français (France) </li><li>Italiano (Italia) </li><li>English (United States) </li><li>Русский (Россия) </li><li>中文(中华人民共和国)</li></ul>','Multi Languages',3,19),(47,'Control of a car runs in a race, collect coins and unlock awesome cars. A vast selection of cars to unlock. Battle your friends score with Leaderboard.','Desciption',1,20),(48,'Swing around like a slingshot. Tap to swing and release to let go. Travel as far as possible using simple one touch controls.','How to play',2,20);
/*!40000 ALTER TABLE `productlanguageproductdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productlanguagereviewdetail`
--

DROP TABLE IF EXISTS `productlanguagereviewdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productlanguagereviewdetail` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Detail` varchar(512) DEFAULT NULL,
  `ImageUrl` varchar(512) DEFAULT NULL,
  `ProductLanguageId` int(11) DEFAULT NULL,
  `RateDate` varchar(512) DEFAULT NULL,
  `RateScore` float NOT NULL,
  `Title` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ProductLanguageReviewDetail_ProductLanguageId` (`ProductLanguageId`),
  CONSTRAINT `FK_ProductLanguageReviewDetail_ProductLanguage_ProductLanguageId` FOREIGN KEY (`ProductLanguageId`) REFERENCES `productlanguage` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productlanguagereviewdetail`
--

LOCK TABLES `productlanguagereviewdetail` WRITE;
/*!40000 ALTER TABLE `productlanguagereviewdetail` DISABLE KEYS */;
INSERT INTO `productlanguagereviewdetail` VALUES (1,'This game is so exciting. I can\'t stop playing it. I\'ll introduce it for everyone i meet.','/assets/voc/images/avatar.jpg',1,'Today',5,'Amazing!'),(2,'Nothing i can say but WOW when i play this game. I want to give a million like to the team how make this game.','/assets/voc/images/avatar.jpg',1,'13 Dec',4,'Can\'t stop the feeling!'),(3,'Good game, but you need to add more heroes and enemies and have to increase the difficulty of this game. I can unlock all heroes just with 2h playing game.','/assets/voc/images/avatar.jpg',1,'11 Dec',4,'Goood game, need improve more!'),(4,'For me, it\'s a little bit boring. Keep trying, bro !','/assets/voc/images/avatar.jpg',1,'10 Oct',3,'OK!'),(5,'Trò chơi này thật là cuốn hút. Tôi không thể ngừng chơi nó. Tôi sẽ giới thiệu nó cho từng người mà tôi quen biết.','/assets/voc/images/avatar.jpg',2,'Hôm nay',5,'Tuyệt vời!'),(6,'Chỉ có thể mô tả bằng một từ khi tôi chơi trò chơi này: WOW. Tôi muốn gởi hàng triệu Like đến cho đội ngũ phát hành ra trò chơi này.','/assets/voc/images/avatar.jpg',2,'13 Tháng 12',4,'Không thể mô ta được cảm xúc lúc này!'),(7,'Lối chơi hay, nhưng cần đưa thêm nhiều nhân vật và kẻ thù hơn nữa vào, và nên tăng thêm độ khó cho trò chơi này. Tôi có thể mở khóa hết tất cả các nhân vật, chỉ với 2 giờ chơi game.','/assets/voc/images/avatar.jpg',2,'11 Tháng 12',4,'Trò chơi hay, cần cải thiện hơn nữa!'),(8,'Đối với tôi, trò chơi này hơi nhàm chán. Cố gắng phát triển thêm !','/assets/voc/images/avatar.jpg',2,'10 Tháng 10',3,'Tạm ổn!'),(9,'Hệ thống tìm kiếm tin đăng cực kỳ chuẩn xác và nhanh chóng','/assets/voc/images/avatar.jpg',3,'12 Tháng 9, 2017',5,'Tìm kiếm tốt'),(10,'Khả năng tương thích tốt trên các thiết bị di động','/assets/voc/images/avatar.jpg',3,'10 Tháng 8, 2017',5,'Hỗ trợ di động'),(11,'Thiết kế đơn giản, dễ dàng sử dụng cho người mới tiếp cận lần đầu','/assets/voc/images/avatar.jpg',3,'21  Tháng 7, 2017',5,'Dễ dàng sử dụng'),(12,'Tôi muốn có một trang web như thế này cho công ty của mình.','/assets/voc/images/avatar.jpg',5,'11 Tháng 9, 2017',5,'Đẹp'),(13,'Chân thành cảm ơn dòng AA vì đã tạo ra và chia sẻ ứng dụng rất hữu ích này. Nguyện xin Thiên Chúa chúc lành và nâng đỡ quí cha, quí thầy dòng AA.','/assets/voc/images/avatar.jpg',7,'11 Tháng 8, 2017',5,'Cảm ơn quý cha!'),(14,'phần mềm rất hữu ích cho tôi. xứng đáng với số tiền bỏ ra. rãnh lúc nào học lúc đó không phải phụ thuộc vào máy tính. đề nghị dev chỉnh sửa lại lỗi chính tả và nâng cấp giao diện tối ưu hơn. thanks','/assets/voc/images/avatar.jpg',9,'22/06/2017',5,'Phần mềm hữu ích'),(15,'hay nhưng lỗi chính tả nhiều nhưng nói chung là phần mềm tốt nhất về sát hạch lái xe hiện tại trên windows phone.','/assets/voc/images/avatar.jpg',9,'11/06/2017',5,'Lỗi chính tả'),(16,'Ứng dụng rất tốt, mình đang khổ luyện 3 tháng nên rất cần ứng dụng như thế này! Cố gắng phát huy nhé.','/assets/voc/images/avatar.jpg',9,'09/06/2017',5,'Cảm ơn tác giả'),(17,'Có những biển báo tôi chưa hiểu rõ nhưng lại không có chỉ dẫn ??','/assets/voc/images/avatar.jpg',9,'17/05/2017',4,'Cần chỉ dẫn biển báo rõ ràng'),(18,'Tiếp tục Phát huy ! Rất đầy đủ và chi tiết ! Thanks .','/assets/voc/images/avatar.jpg',9,'10/04/2017',4,'Good!'),(19,'Ứng dụng quá tốt cảm ơn ad đáng đồng tiền bỏ ra...mà cập nhật hết 15 câu lun là ôkê lun','/assets/voc/images/avatar.jpg',9,'02/12/2016',5,'Nên mở hết tất cả bài thi'),(23,'ứng dụng cũng khá hay nhưng đôi khi ko đọc được truyện cần phải nâng cấp','/assets/voc/images/avatar.jpg',10,'09/09/2017',4,'Ứng dụng hay'),(24,'Thích: Đọc truyện mượt, tải truyện nhanh,.... Nói chung khá ổn','/assets/voc/images/avatar.jpg',10,'09/09/2017',4,'Góp ý'),(25,'Ứng dụng hay lắm nhưng không thể zoom được. Cần sửa lại zoom','/assets/voc/images/avatar.jpg',10,'08/09/2017',5,'Zoom'),(26,'Ứng dụng rất tốt!!!. Nk còn 1 lỗi là trượt k đk mượt lắm, mog ad khắc phục ^^ Nếu có đk phiên bản truyện trạnh màu thỳ tuyệt vời!!! Cảm ơn ad đã tạo ra ứng dụng tốt này......','/assets/voc/images/avatar.jpg',10,'07/09/2017',5,'Thanks!'),(27,'Một vài chap không load được, đặt biệt là những chap đầu. Cần nâng cấp để khắc phục điều này','/assets/voc/images/avatar.jpg',10,'05/09/2017',5,'Những chap ở đầu k load đc'),(28,'Trò chơi này thật là cuốn hút. Tôi không thể ngừng chơi nó. Tôi sẽ giới thiệu nó cho từng người mà tôi quen biết.','/assets/voc/images/avatar.jpg',11,'Hôm nay',5,'Tuyệt vời!'),(29,'Chỉ có thể mô tả bằng một từ khi tôi chơi trò chơi này: WOW. Tôi muốn gởi hàng triệu Like đến cho đội ngũ phát hành ra trò chơi này.','/assets/voc/images/avatar.jpg',11,'07/09/2017',5,'Không thể mô ta được cảm xúc lúc này!'),(30,'Lối chơi hay, nhưng cần đưa thêm nhiều xe và chướng ngại vật hơn nữa vào, và nên tăng thêm độ khó cho trò chơi này. Tôi có thể mở khóa hết tất cả các loại xe, chỉ với 2 giờ chơi game.','/assets/voc/images/avatar.jpg',11,'07/09/2017',4,'Trò chơi hay, cần cải thiện hơn nữa!'),(31,'Đối với tôi, trò chơi này hơi nhàm chán. Cố gắng phát triển thêm !','/assets/voc/images/avatar.jpg',11,'05/09/2017',3,'Tạm ổn!');
/*!40000 ALTER TABLE `productlanguagereviewdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `DisplayName` varchar(256) DEFAULT NULL,
  `Name` varchar(256) DEFAULT NULL,
  `RoleType` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roleclaim`
--

DROP TABLE IF EXISTS `roleclaim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roleclaim` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ClaimId` int(11) DEFAULT NULL,
  `RoleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_RoleClaim_ClaimId` (`ClaimId`),
  KEY `IX_RoleClaim_RoleId` (`RoleId`),
  CONSTRAINT `FK_RoleClaim_Claim_ClaimId` FOREIGN KEY (`ClaimId`) REFERENCES `claim` (`Id`) ON DELETE CASCADE,
  CONSTRAINT `FK_RoleClaim_Role_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `role` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roleclaim`
--

LOCK TABLES `roleclaim` WRITE;
/*!40000 ALTER TABLE `roleclaim` DISABLE KEYS */;
/*!40000 ALTER TABLE `roleclaim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `service` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Priority` int(11) DEFAULT NULL,
  `ServiceType` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,1,2),(2,6,2),(3,5,2),(4,2,2),(5,1,1),(6,2,1),(7,3,1),(8,1,3),(9,3,2),(10,4,2);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicelanguage`
--

DROP TABLE IF EXISTS `servicelanguage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicelanguage` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Description` varchar(1024) DEFAULT NULL,
  `ImageAlt` varchar(512) DEFAULT NULL,
  `ImageSrc` varchar(512) DEFAULT NULL,
  `Language` int(11) NOT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `TitleTagForSEO` varchar(512) DEFAULT NULL,
  `TitleText` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_ServiceLanguage_ServiceId` (`ServiceId`),
  CONSTRAINT `FK_ServiceLanguage_Service_ServiceId` FOREIGN KEY (`ServiceId`) REFERENCES `service` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicelanguage`
--

LOCK TABLES `servicelanguage` WRITE;
/*!40000 ALTER TABLE `servicelanguage` DISABLE KEYS */;
INSERT INTO `servicelanguage` VALUES (1,'Outsourcing & web design on demand, not only business requirements but also technical requirements and system architecture.','Web outsourcing','/assets/voc/images/web-outsourcing.jpg',2,1,'','Web Programing'),(2,'Gia công & thiết kế website theo yêu cầu - cả về nghiệp vụ lẫn kĩ thuật và kiến trúc hệ thống.','Thiết kế website theo yêu cầu','/assets/voc/images/web-outsourcing.jpg',1,1,'thiet-ke-web','Thiết kế web'),(3,'Operating, maintenance, upgrade, repair, create more features... for exesting website.','Web maintenance','/assets/voc/images/website-maintenance.jpg',2,2,'','Web maintenance'),(4,'Vận hành, bảo trì, nâng cấp, sửa chữa, thêm tính năng... cho website có sẵn.','Vận hành và bảo trì website','/assets/voc/images/website-maintenance.jpg',1,2,'bao-tri-web','Vận hành & bảo trì'),(5,'Operating, maintenance, upgrade, repair, create more features... for exesting website.','Web hosting','/assets/voc/images/hosting-cloud.jpg',2,3,'','Website hosting'),(6,'Triển khai hệ thống sử dụng dịch vụ điện toán đám mây từ Amazon, Microsoft Azure...','Triển khai hệ thống','/assets/voc/images/hosting-cloud.jpg',1,3,'trien-khai-website','Dịch vụ đám mây'),(7,'Generate a shopping website base on existing template with the best price.','Shopping website','/assets/voc/images/shopping-website.jpg',2,4,'','Shopping website'),(8,'Xây dựng website bán hàng dựa trên mẫu có sẵn nhanh chóng và tiết kiệm chi phí.','Website bán hàng','/assets/voc/images/shopping-website.jpg',1,4,'shopping-website','Website bán hàng'),(9,'Design, develop, publish, advertise mobile game in Cocos game engine.','cocos2d game','/assets/voc/images/game-cocos.jpg',2,5,'','Game with cocos2d'),(10,'Thiết kế, xây dựng, xuất bản và quảng bá ứng dụng game trên di động bằng công cụ làm game Cocos','Game di động với Cocos','/assets/voc/images/game-cocos.jpg',1,5,'cocos-game','Game với Cocos'),(11,'Design, develop, publish, advertise mobile game in Unity game engine.','unity game','/assets/voc/images/game-unity.png',2,6,'','Game with Unity'),(12,'Thiết kế, xây dựng, xuất bản và quảng bá ứng dụng game trên di động bằng công cụ làm game Unity','Game di động với Unity','/assets/voc/images/game-unity.png',1,6,'unity-game','Game với Unity'),(13,'Integrate game with advertise, social network, IAP... Publish game in IOS, Android, Windows Phone store.','3rd integration','/assets/voc/images/game-admod.png',2,7,'','Integration with 3rd'),(14,'Tích hợp quảng cáo, mạng xã hội, mua bán trong game... Xuất bản trên chợ ứng dụng.','Tich hợp với bên thứ ba','/assets/voc/images/game-admod.png',1,7,'integration-game','Tích hợp tính năng'),(15,'Building mobile applications running on multiple platforms Xamarin, Ionic, ReactNative, NativeScript ...','cross platform','/assets/voc/images/cross-platform.jpg',2,8,'','Cross Platform Application'),(16,'Xây dựng ứng dụng di động chạy đa nền tảng dựa trên Xamarin, Ionic, ReactNative, NativeScript...','ứng dụng di động đa nền tảng','/assets/voc/images/cross-platform.jpg',1,8,'cross-platform','Ứng dụng đa nền tảng'),(17,'Thiết kế và thi công các website về cổng thông tin điện tử và giáo dục.','Site CMS content giao duc','/assets/voc/images/cms-site.jpg',1,9,'site-cms-education','Cổng thông tin'),(18,'Thiết kế và thi công các website tìm kiếm nhà ở, nhà cho thuê và bất động sản.','Bat dong san','/assets/voc/images/bds-site.jpg',1,10,'bat-dong-san','Bất động sản'),(19,'Design and develop CMS sites, Portals for  education, business, medical...','Portal','/assets/voc/images/cms-site.jpg',2,9,'site-cms-education','Portal'),(20,'Design and develop Websites for finding houses, real estate, house for rent...','Real estate','/assets/voc/images/bds-site.jpg',2,10,'real-estate','Real estate');
/*!40000 ALTER TABLE `servicelanguage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `CreateDate` datetime(6) DEFAULT NULL,
  `Password` varchar(256) DEFAULT NULL,
  `ProviderKey` varchar(256) DEFAULT NULL,
  `ProviderName` varchar(256) DEFAULT NULL,
  `UpdatedDate` datetime(6) DEFAULT NULL,
  `UserName` varchar(256) DEFAULT NULL,
  `UserStatusId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userlogintoken`
--

DROP TABLE IF EXISTS `userlogintoken`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userlogintoken` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ExpiredDated` datetime(6) NOT NULL,
  `IsRememberMe` bit(1) DEFAULT NULL,
  `LastLoginDated` datetime(6) NOT NULL,
  `Token` varchar(256) DEFAULT NULL,
  `UserId` int(11) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UserLoginToken_UserId` (`UserId`),
  CONSTRAINT `FK_UserLoginToken_User_UserId` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userlogintoken`
--

LOCK TABLES `userlogintoken` WRITE;
/*!40000 ALTER TABLE `userlogintoken` DISABLE KEYS */;
/*!40000 ALTER TABLE `userlogintoken` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userprofile`
--

DROP TABLE IF EXISTS `userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userprofile` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Address` varchar(256) DEFAULT NULL,
  `AvatarId` int(11) DEFAULT NULL,
  `City` varchar(256) DEFAULT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `FirstName` varchar(256) DEFAULT NULL,
  `LastName` varchar(256) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  `WasVerifiedEmail` bit(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UserProfile_AvatarId` (`AvatarId`),
  KEY `IX_UserProfile_UserId` (`UserId`),
  CONSTRAINT `FK_UserProfile_Image_AvatarId` FOREIGN KEY (`AvatarId`) REFERENCES `image` (`Id`) ON DELETE NO ACTION,
  CONSTRAINT `FK_UserProfile_User_UserId` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userprofile`
--

LOCK TABLES `userprofile` WRITE;
/*!40000 ALTER TABLE `userprofile` DISABLE KEYS */;
/*!40000 ALTER TABLE `userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `RoleId` int(11) DEFAULT NULL,
  `UserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `IX_UserRole_RoleId` (`RoleId`),
  KEY `IX_UserRole_UserId` (`UserId`),
  CONSTRAINT `FK_UserRole_Role_RoleId` FOREIGN KEY (`RoleId`) REFERENCES `role` (`Id`) ON DELETE NO ACTION,
  CONSTRAINT `FK_UserRole_User_UserId` FOREIGN KEY (`UserId`) REFERENCES `user` (`Id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-08 14:23:01
