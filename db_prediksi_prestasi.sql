/*
SQLyog Ultimate v9.02 
MySQL - 5.6.20 : Database - db_prediksi_prestasi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_prediksi_prestasi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_prediksi_prestasi`;

/*Table structure for table `data_training` */

DROP TABLE IF EXISTS `data_training`;

CREATE TABLE `data_training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instansi` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `rata_un` double DEFAULT NULL,
  `kerja` varchar(10) DEFAULT NULL,
  `motivasi` varchar(20) DEFAULT NULL,
  `ipk` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

/*Data for the table `data_training` */

insert  into `data_training`(`id`,`instansi`,`status`,`jurusan`,`rata_un`,`kerja`,`motivasi`,`ipk`) values (1,'SMA','Negeri','IPS',8.13,'Belum','Orang Tua','Rendah'),(2,'SMA','Swasta','IPA',8.73,'Belum','Sendiri','Tinggi'),(3,'SMA','Swasta','IPA',7.5,'Belum','Orang Tua','Tinggi'),(4,'SMA','Swasta','IPS',7.01,'Belum','Sendiri','Tinggi'),(5,'SMA','Swasta','IPA',8.2,'Belum','Sendiri','Tinggi'),(6,'SMA','Swasta','IPS',8.1,'Belum','Sendiri','Tinggi'),(7,'SMA','Swasta','IPA',8.28,'Belum','Sendiri','Tinggi'),(8,'SMA','Negeri','IPS',8.43,'Belum','Sendiri','Tinggi'),(9,'SMA','Swasta','IPA',8.26,'Belum','Orang Tua','Tinggi'),(10,'SMK','Swasta','Teknik',7.2,'Belum','Sendiri','Tinggi'),(11,'SMA','Swasta','IPA',8.66,'Belum','Orang Tua','Tinggi'),(12,'SMA','Negeri','IPA',8.68,'Belum','Sendiri','Tinggi'),(13,'SMK','Negeri','Teknik',8.5,'Belum','Sendiri','Tinggi'),(14,'SMK','Swasta','Teknik',6.08,'Belum','Sendiri','Rendah'),(15,'SMA','Swasta','IPA',8.17,'Belum','Sendiri','Tinggi'),(16,'SMA','Negeri','IPA',9,'Belum','Sendiri','Tinggi'),(17,'SMA','Swasta','IPS',7.38,'Belum','Sendiri','Tinggi'),(18,'SMK','Swasta','Teknik',8.58,'Sudah','Sendiri','Tinggi'),(19,'SMK','Swasta','Teknik',8.74,'Belum','Sendiri','Tinggi'),(20,'SMK','Swasta','Administrasi',7.7,'Belum','Sendiri','Rendah'),(21,'SMA','Negeri','IPA',8.29,'Sudah','Sendiri','Tinggi'),(22,'SMK','Swasta','Teknik',7.32,'Belum','Sendiri','Tinggi'),(23,'SMA','Swasta','IPS',8.13,'Belum','Sendiri','Tinggi'),(24,'SMK','Swasta','Teknik',7.98,'Belum','Sendiri','Tinggi'),(25,'SMK','Swasta','Teknik',8.91,'Sudah','Sendiri','Tinggi'),(26,'SMK','Swasta','Teknik',8.2,'Sudah','Sendiri','Tinggi'),(27,'SMA','Negeri','IPS',8.52,'Belum','Orang Tua','Tinggi'),(28,'SMA','Negeri','Bahasa',7.93,'Belum','Sendiri','Tinggi'),(29,'SMA','Swasta','IPS',8.23,'Belum','Sendiri','Rendah'),(30,'SMK','Negeri','Teknik',7.94,'Belum','Sendiri','Rendah'),(31,'MA','Swasta','IPS',7.51,'Belum','Sendiri','Tinggi'),(32,'SMA','Swasta','IPS',7.91,'Belum','Sendiri','Tinggi'),(33,'SMA','Swasta','IPA',7.96,'Sudah','Sendiri','Tinggi'),(34,'SMK','Swasta','Teknik',7.03,'Belum','Orang Lain','Tinggi'),(35,'SMA','Swasta','IPA',8.47,'Sudah','Sendiri','Tinggi'),(36,'SMA','Swasta','IPS',7.5,'Sudah','Sendiri','Tinggi'),(37,'SMK','Swasta','Teknik',8,'Belum','Sendiri','Rendah'),(38,'SMA','Swasta','IPA',8.11,'Belum','Sendiri','Rendah'),(39,'SMK','Swasta','Teknik',7.43,'Belum','Sendiri','Rendah'),(40,'SMA','Negeri','IPA',8.69,'Sudah','Sendiri','Tinggi'),(41,'SMA','Negeri','IPS',7.47,'Belum','Sendiri','Rendah'),(42,'SMK','Swasta','Teknik',8.66,'Sudah','Sendiri','Rendah'),(43,'SMA','Negeri','IPA',8.33,'Belum','Sendiri','Rendah'),(44,'SMK','Swasta','Teknik',7.89,'Belum','Sendiri','Rendah'),(45,'SMA','Swasta','IPS',7.87,'Belum','Sendiri','Rendah'),(46,'SMK','Swasta','Teknik',7.63,'Belum','Sendiri','Rendah'),(47,'SMA','Swasta','IPA',8.13,'Belum','Sendiri','Tinggi'),(48,'SMK','Swasta','Teknik',7.29,'Belum','Sendiri','Tinggi'),(49,'SMA','Negeri','IPS',7.81,'Belum','Sendiri','Tinggi'),(50,'SMK','Negeri','Teknik',8.5,'Belum','Sendiri','Rendah'),(51,'SMK','Negeri','Administrasi',8.78,'Sudah','Sendiri','Tinggi'),(52,'SMA','Negeri','IPA',6.49,'Sudah','Sendiri','Rendah'),(53,'SMA','Swasta','IPA',8.2,'Belum','Sendiri','Tinggi'),(54,'MA','Swasta','IPS',7.44,'Sudah','Sendiri','Tinggi'),(55,'SMA','Swasta','IPA',7.6,'Sudah','Sendiri','Rendah'),(56,'SMK','Negeri','Teknik',8.4,'Sudah','Sendiri','Rendah'),(57,'SMA','Swasta','Bahasa',8.35,'Belum','Orang tua','Tinggi'),(58,'SMA','Swasta','Bahasa',7.8,'Belum','Orang tua','Tinggi'),(59,'MA','Swasta','IPA',7.5,'Sudah','Sendiri','Tinggi'),(60,'SMA','Negeri','IPA',8.4,'Belum','Sendiri','Tinggi');

/*Table structure for table `data_uji` */

DROP TABLE IF EXISTS `data_uji`;

CREATE TABLE `data_uji` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `instansi` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `rata_un` double DEFAULT NULL,
  `kerja` varchar(10) DEFAULT NULL,
  `motivasi` varchar(20) DEFAULT NULL,
  `ipk_asli` varchar(10) DEFAULT NULL,
  `ipk_prediksi` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `data_uji` */

insert  into `data_uji`(`id`,`instansi`,`status`,`jurusan`,`rata_un`,`kerja`,`motivasi`,`ipk_asli`,`ipk_prediksi`) values (1,'SMA','Negeri','IPA',8.13,'Sudah','Sendiri','Tinggi','Tinggi'),(2,'SMA','Swasta','IPA',8.4,'Belum','Orang Lain','Tinggi','Tinggi'),(3,'MA','Negeri','IPA',7.91,'Sudah','Sendiri','Tinggi','Tinggi'),(4,'SMA','Negeri','IPS',8.4,'Sudah','Sendiri','Tinggi','Tinggi'),(5,'SMA','Swasta','IPS',6.75,'Sudah','Sendiri','Tinggi','Tinggi'),(6,'SMK','Negeri','Teknik',8.23,'Sudah','Sendiri','Rendah','Rendah'),(7,'SMK','Swasta','Teknik',7.7,'Belum','Sendiri','Tinggi','Rendah'),(8,'SMK','Swasta','Teknik',7.9,'Sudah','Sendiri','Rendah','Rendah'),(9,'SMA','Negeri','IPS',8.21,'Belum','Orang Tua','Rendah','Rendah'),(10,'SMA','Negeri','IPA',8.55,'Sudah','Sendiri','Tinggi','Tinggi'),(11,'SMK','Swasta','Teknik',8.45,'Sudah','Sendiri','Tinggi','Tinggi'),(12,'SMK','Swasta','Teknik',7,'Belum','Sendiri','Rendah','Tinggi'),(13,'SMA','Swasta','IPA',7.93,'Belum','Sendiri','Tinggi','Tinggi'),(14,'MA','Swasta','IPS',7.8,'Belum','Sendiri','Tinggi','Tinggi'),(15,'MA','Swasta','IPA',8.48,'Belum','Sendiri','Tinggi','Tinggi'),(16,'SMA','Swasta','Bahasa',7.86,'Belum','Sendiri','Tinggi','Tinggi'),(17,'SMA','Swasta','IPA',8.22,'Belum','Orang Lain','Tinggi','Tinggi'),(18,'SMK','Swasta','Teknik',8.39,'Belum','Sendiri','Tinggi','Tinggi'),(19,'SMA','Swasta','IPA',8.78,'Sudah','Sendiri','Rendah','Tinggi'),(20,'MA','Negeri','IPS',7.9,'Belum','Sendiri','Tinggi','Tinggi'),(21,'MA','Negeri','IPA',7.89,'Belum','Sendiri','Tinggi','Tinggi'),(22,'SMK','Swasta','Teknik',7.63,'Sudah','Orang Tua','Rendah','Rendah'),(23,'SMA','Swasta','IPA',8.73,'Sudah','Sendiri','Tinggi','Tinggi'),(24,'MA','Swasta','IPA',7.5,'Belum','Orang Lain','Tinggi','Tinggi'),(25,'SMK','Negeri','Teknik',8.3,'Sudah','Sendiri','Rendah','Rendah'),(26,'SMK','Swasta','Administrasi',7.59,'Belum','Sendiri','Rendah','Rendah'),(27,'SMA','Swasta','IPA',8.1,'Sudah','Sendiri','Tinggi','Tinggi'),(28,'SMK','Negeri','Teknik',7.5,'Belum','Sendiri','Rendah','Rendah'),(29,'SMA','Negeri','IPA',8.3,'Sudah','Orang Tua','Tinggi','Tinggi'),(30,'SMK','Swasta','Teknik',7.69,'Sudah','Sendiri','Rendah','Rendah');

/*Table structure for table `gain` */

DROP TABLE IF EXISTS `gain`;

CREATE TABLE `gain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `atribut` varchar(20) DEFAULT NULL,
  `gain` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `gain` */

insert  into `gain`(`id`,`atribut`,`gain`) values (1,'kerja',0.016),(2,'rata UN posisi 6.5',0),(3,'rata UN posisi 6.75',0),(4,'rata UN posisi 7',0),(5,'rata UN posisi 7.25',0),(6,'rata UN posisi 7.5',0.016),(7,'rata UN posisi 7.75',0.004),(8,'rata UN posisi 8',0.072),(9,'rata UN posisi 8.25',0.016),(10,'rata UN posisi 8.5',0.016),(11,'rata UN posisi 8.75',0);

/*Table structure for table `hasil_prediksi` */

DROP TABLE IF EXISTS `hasil_prediksi`;

CREATE TABLE `hasil_prediksi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` varchar(15) DEFAULT NULL,
  `instansi` varchar(10) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `rata_un` double DEFAULT NULL,
  `kerja` varchar(10) DEFAULT NULL,
  `motivasi` varchar(20) DEFAULT NULL,
  `hasil` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `hasil_prediksi` */

insert  into `hasil_prediksi`(`id`,`nim`,`instansi`,`status`,`jurusan`,`rata_un`,`kerja`,`motivasi`,`hasil`) values (9,'14622001','SMA','Swasta','IPS',7.8,'Belum','OrangLain','Rendah'),(13,'14621009','SMK','Swasta','Teknik',7,'Sudah','OrangTua','Tinggi'),(14,'14621015','SMK','Negeri','Teknik',8.9,'Belum','Sendiri','Rendah'),(19,'14621003','SMA','Swasta','IPA',7.8,'Belum','Sendiri','Tinggi'),(20,'14621001','SMA','Swasta','IPA',7.8,'Belum','Sendiri','Tinggi');

/*Table structure for table `mahasiswa` */

DROP TABLE IF EXISTS `mahasiswa`;

CREATE TABLE `mahasiswa` (
  `nim` varchar(15) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jenis_kelamin` char(1) DEFAULT NULL,
  `angkatan` varchar(5) DEFAULT NULL,
  `kelas` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`nim`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `mahasiswa` */

insert  into `mahasiswa`(`nim`,`nama`,`jenis_kelamin`,`angkatan`,`kelas`) values ('14621001','IIN NURJAYANTI','P','2014','Pagi'),('14621002','NOVITA INDAH SARI','L','2014','Pagi'),('14621003','NANING PURWINTARI','L','2014','Pagi'),('14621004','MUHAMMAD SUYUTI','L','2014','Pagi'),('14621005','ISA AHMAD ANSHORI','L','2014','Pagi'),('14621006','ACHMAD JAELANI','L','2014','Pagi'),('14621007','KURNIAWATI LAILA FEBRINA','P','2014','Pagi'),('14621008','RIRIN DWI JAYANTI','P','2014','Pagi'),('14621009','ACHMAD YANI','L','2014','Pagi'),('14621010','MUHAMMAD YANI BUDIHARTO','L','2014','Pagi'),('14621011','MUHAMMAD CHANIF PUTRA','L','2014','Pagi'),('14621012','EMILYA ERAWATI','P','2014','Pagi'),('14621013','RIZAL RUSDYANTO','L','2014','Pagi'),('14621014','HAMIDAH','P','2014','Pagi'),('14621015','MUHAMMAD BACHTIAR IRWIANSYAH','L','2014','Pagi'),('14621016','NENIY FATMAWATI','P','2014','Pagi'),('14621017','ERIN TRISILIA WINDIYANTI','P','2014','Pagi'),('14621018','NANDA NOVELAN','L','2014','Pagi'),('14621019','RIFATUL INAYAH','P','2014','Pagi'),('14621020','MUHAMMAD SYAMSUL QOMARI','L','2014','Pagi'),('14621021','MUHAMMAD NUR SHOLEH ABIDIN','L','2014','Pagi'),('14621022','MUHAMMAD MAULUDDIN','L','2014','Pagi'),('14621023','FITRIA SETIA NINGRUM','P','2014','Pagi'),('14621024','MERIS WAHYU LESTARI','P','2014','Pagi'),('14621025','RISA FEBRIANA','P','2014','Pagi'),('14621026','SITI RIZKI MAHARAYU NINGATI','P','2014','Sore'),('14622001','MISLIYAH','P','2014','Sore'),('14622002','EKA WAHYUNING TYAS','P','2014','Sore'),('14622003','EKO SISWANTO','L','2014','Sore'),('14622004','MUHAMMAD AMINUDDIN','L','2014','Sore'),('14622005','M. TARSAN','L','2014','Sore'),('14622006','AHMAD SHOBARI','L','2014','Sore'),('14622007','PUTRI AMALIAH','P','2014','Sore'),('14622008','MAS KHURIYAH','P','2014','Sore'),('14622009','ADHYATNA DWI LINGANTAR','L','2014','Sore'),('14622010','HABIB ALBAB','L','2014','Sore'),('14622011','UTSMAN HAQIQI','L','2014','Sore'),('14622012','SUPAAT PUTRA','L','2014','Sore'),('14622013','MUHAMMAD LUTHFIL HAKIM','L','2014','Sore'),('14622014','FERI KUSUMA','L','2014','Sore'),('14622015','AKHMAD ZAINUDIN','L','2014','Sore'),('14622016','MUCHAMAD SYAERUL','L','2014','Sore'),('14622017','HARIYANTO','L','2014','Sore'),('14622018','SHINTA DIANALITA','P','2014','Sore'),('14622019','ARIF SUNYOTO','L','2014','Sore'),('14622020','MOHAMMAD ROBITHUL FAHMI','L','2014','Sore'),('14622021','BAGUS SATRIYO PURNOMO','L','2014','Sore'),('14622022','ARIF SETIAWAN','L','2014','Sore'),('14622023','NUR HALIMAH','P','2014','Sore'),('14622024','NUR HIDAYAH','P','2014','Sore');

/*Table structure for table `pohon_keputusan` */

DROP TABLE IF EXISTS `pohon_keputusan`;

CREATE TABLE `pohon_keputusan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` text,
  `akar` text,
  `keputusan` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `pohon_keputusan` */

insert  into `pohon_keputusan`(`id`,`parent`,`akar`,`keputusan`) values (1,'','(jurusan=\'Administrasi\')','Rendah'),(2,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\')','(jurusan=\'Bahasa\')','Tinggi'),(3,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\')','(instansi=\'MA\')','Tinggi'),(4,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\')','(rata_un<=6.5)','Rendah'),(5,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPS\') AND (rata_un<=8.25)','(motivasi=\'Orang Tua\')','Rendah'),(6,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPS\') AND (rata_un<=8.25) AND (motivasi=\'Sendiri\')','(kerja=\'Sudah\')','Tinggi'),(7,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPS\') AND (rata_un<=8.25) AND (motivasi=\'Sendiri\') AND (kerja=\'Belum\')','(rata_un<=7.25)','Tinggi'),(8,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPS\') AND (rata_un<=8.25) AND (motivasi=\'Sendiri\') AND (kerja=\'Belum\') AND (rata_un>7.25)','(status=\'Negeri\')','Rendah'),(9,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPS\') AND (rata_un<=8.25) AND (motivasi=\'Sendiri\') AND (kerja=\'Belum\') AND (rata_un>7.25)','(status=\'Swasta\')','Tinggi'),(10,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPS\')','(rata_un>8.25)','Tinggi'),(11,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\') AND (rata_un<=8.5)','(motivasi=\'Orang Tua\')','Tinggi'),(12,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\') AND (rata_un<=8.5) AND (motivasi=\'Sendiri\')','(rata_un<=7.75)','Rendah'),(13,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\') AND (rata_un<=8.5) AND (motivasi=\'Sendiri\') AND (rata_un>7.75)','(kerja=\'Sudah\')','Tinggi'),(14,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\') AND (rata_un<=8.5) AND (motivasi=\'Sendiri\') AND (rata_un>7.75) AND (kerja=\'Belum\')','(status=\'Negeri\')','Rendah'),(15,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\') AND (rata_un<=8.5) AND (motivasi=\'Sendiri\') AND (rata_un>7.75) AND (kerja=\'Belum\')','(status=\'Swasta\')','Tinggi'),(16,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\')','(rata_un>8.5)','Tinggi'),(17,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMK\')','(rata_un<=7.25)','Tinggi'),(18,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMK\') AND (rata_un>7.25) AND (rata_un<=8.75)','(status=\'Negeri\')','Rendah'),(19,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMK\') AND (rata_un>7.25) AND (rata_un<=8.75) AND (status=\'Swasta\')','(rata_un<=8)','Rendah'),(20,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMK\') AND (rata_un>7.25) AND (rata_un<=8.75) AND (status=\'Swasta\')','(rata_un>8)','Tinggi'),(21,'(jurusan=\'Bahasa\' OR jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (jurusan=\'IPS\' OR jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMA\' OR instansi=\'SMK\') AND (rata_un>6.5) AND (jurusan=\'IPA\' OR jurusan=\'Teknik\') AND (instansi=\'SMK\') AND (rata_un>7.25)','(rata_un>8.75)','Tinggi');

/*Table structure for table `rasio_gain` */

DROP TABLE IF EXISTS `rasio_gain`;

CREATE TABLE `rasio_gain` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `opsi` varchar(10) DEFAULT NULL,
  `cabang1` varchar(50) DEFAULT NULL,
  `cabang2` varchar(50) DEFAULT NULL,
  `rasio_gain` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `rasio_gain` */

insert  into `rasio_gain`(`id`,`opsi`,`cabang1`,`cabang2`,`rasio_gain`) values (1,'opsi1','IPS','IPA , Teknik',0.065),(2,'opsi2','IPA','Teknik , IPS',0.056),(3,'opsi3','Teknik','IPS , IPA',0.057);

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `user_id` varchar(25) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `password` text,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`user_id`,`nama`,`password`,`type`) values ('14621001','IIN NURJAYANTI','14621001','1'),('14621002','NOVITA INDAH SARI','14621002','1'),('14621003','NANING PURWINTARI','14621003','1'),('14621004','MUHAMMAD SUYUTI','14621004','1'),('14621005','ISA AHMAD ANSHORI','14621005','1'),('14621006','ACHMAD JAELANI','14621006','1'),('14621007','KURNIAWATI LAILA FEBRINA','14621007','1'),('14621008','RIRIN DWI JAYANTI','14621008','1'),('14621009','ACHMAD YANI','14621009','1'),('14621010','MUHAMMAD YANI BUDIHARTO','14621010','1'),('14621011','MUHAMMAD CHANIF PUTRA','14621011','1'),('14621012','EMILYA ERAWATI','14621012','1'),('14621013','RIZAL RUSDYANTO','14621013','1'),('14621014','HAMIDAH','14621014','1'),('14621015','MUHAMMAD BACHTIAR IRWIANSYAH','14621015','1'),('14621016','NENIY FATMAWATI','14621016','1'),('14621017','ERIN TRISILIA WINDIYANTI','14621017','1'),('14621018','NANDA NOVELAN','14621018','1'),('14621019','RIFATUL INAYAH','14621019','1'),('14621020','MUHAMMAD SYAMSUL QOMARI','14621020','1'),('14621021','MUHAMMAD NUR SHOLEH ABIDIN','14621021','1'),('14621022','MUHAMMAD MAULUDDIN','14621022','1'),('14621023','FITRIA SETIA NINGRUM','14621023','1'),('14621024','MERIS WAHYU LESTARI','14621024','1'),('14621025','RISA FEBRIANA','14621025','1'),('14621026','SITI RIZKI MAHARAYU NINGATI','14621026','1'),('14622001','MISLIYAH','14622001','1'),('14622002','EKA WAHYUNING TYAS','14622002','1'),('14622003','EKO SISWANTO','14622003','1'),('14622004','MUHAMMAD AMINUDDIN','14622004','1'),('14622005','M. TARSAN','14622005','1'),('14622006','AHMAD SHOBARI','14622006','1'),('14622007','PUTRI AMALIAH','14622007','1'),('14622008','MAS KHURIYAH','14622008','1'),('14622009','ADHYATNA DWI LINGANTAR','14622009','1'),('14622010','HABIB ALBAB','14622010','1'),('14622011','UTSMAN HAQIQI','14622011','1'),('14622012','SUPAAT PUTRA','14622012','1'),('14622013','MUHAMMAD LUTHFIL HAKIM','14622013','1'),('14622014','FERI KUSUMA','14622014','1'),('14622015','AKHMAD ZAINUDIN','14622015','1'),('14622016','MUCHAMAD SYAERUL','14622016','1'),('14622017','HARIYANTO','14622017','1'),('14622018','SHINTA DIANALITA','14622018','1'),('14622019','ARIF SUNYOTO','14622019','1'),('14622020','MOHAMMAD ROBITHUL FAHMI','14622020','1'),('14622021','BAGUS SATRIYO PURNOMO','14622021','1'),('14622022','ARIF SETIAWAN','14622022','1'),('14622023','NUR HALIMAH','14622023','1'),('14622024','NUR HIDAYAH','14622024','1'),('admin','kaprodi','admin','0');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
