/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.28-MariaDB : Database - perpus
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`perpus` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `perpus`;

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2019_12_14_000001_create_personal_access_tokens_table',1),
(2,'2023_10_23_035225_buat_tb_user',1),
(3,'2023_10_23_040430_buat_tb_peminjaman',1),
(4,'2023_10_23_041000_buat_tb_buku',1),
(5,'2023_10_23_041402_buat_tb_kategori',1),
(6,'2023_10_23_042010_buat_tb_dtl_peminjaman',1),
(7,'2023_10_23_042448_ubah_tb_user',1);

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `tb_buku` */

DROP TABLE IF EXISTS `tb_buku`;

CREATE TABLE `tb_buku` (
  `id_buku` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_buku` varchar(255) NOT NULL,
  `tahun_terbit` varchar(255) NOT NULL,
  `penulis` varchar(255) NOT NULL,
  `stok` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_buku`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_buku` */

insert  into `tb_buku`(`id_buku`,`nama_buku`,`tahun_terbit`,`penulis`,`stok`,`id_kategori`,`created_at`,`updated_at`,`gambar`) values 
(1,'Laut Bercerita','2017','Leila S. Chudori','5',1,NULL,'2024-01-08 12:48:41','7052laut_bercerita.png'),
(2,'Hello','2023','Tere Liye','10',4,NULL,'2024-01-08 12:53:24','8266hello.png'),
(3,'Sang Pemimpi','2006','Andrea Hirata','15',1,NULL,'2024-01-08 12:54:54','5833sang_pemimpi.png'),
(4,'Cantik itu Luka','2002','Eka Kurniawan','10',1,NULL,'2024-01-08 12:40:45','8093cantik_itu_luka.png'),
(5,'5 cm','2005','Donny Dhirgantoro','6',2,NULL,'2024-01-08 12:14:10','68775cm.png'),
(6,'Tujuh Kelana','2020','Nellaneva','5',1,NULL,'2024-01-08 12:18:08','1927tujuh_kelana.png'),
(7,'00.00','2021','Ameylia Falensia','9',1,NULL,'2024-01-08 12:20:43','137600.00.png'),
(8,'Hujan','2016','Tere Liye','15',3,NULL,'2024-01-08 12:38:38','7288hujan.png'),
(9,'The Star and I','2021','Ilana Tan','10',4,NULL,'2024-01-08 12:27:47','1084the_star_and_i.png'),
(10,'Negeri 5 Menara','2009','Ahmad Fuadi','5',1,NULL,'2024-01-08 12:29:13','2018negeri_5_menara.png'),
(11,'1 Kos, 3 Cinta, 7 Keberuntungan','2019','Astrid Tito','7',4,NULL,'2024-01-08 12:30:44','58091Kos_3Cinta_7Keberuntungan.png'),
(12,'Different','2017','Kadek Pingetania','8',4,NULL,'2024-01-08 12:32:18','4297different.png'),
(13,'Ethile! Ethile!','2021','Benny Arnas','14',2,NULL,'2024-01-08 12:33:34','5662Ethile!.png'),
(14,'Karavansara','2022','Rio Johan','15',2,NULL,'2024-01-08 12:34:44','3600karavansara.png'),
(15,'Arah Langkah','2018','Fiersa Besari','10',2,NULL,'2024-01-08 12:35:53','3786arah_langkah.png'),
(16,'Sunset & Rosie','2016','Tere Liye','10',4,'2024-01-08 13:00:20','2024-01-08 13:01:23','7537sunset_rosie.png'),
(17,'Today Ends Tomorrow Comes','2023','Denanda Pratiwi Putry','15',5,'2024-01-08 14:03:18','2024-01-08 14:03:41','9554today.png'),
(18,'Atomic Habits','2020','James Clear','18',5,'2024-01-08 14:05:51','2024-01-12 02:14:35','6115atomic_habits.png'),
(19,'Si Putih','2023','Tere Liye','12',1,'2024-01-10 23:00:51','2024-01-10 23:02:45','2467si_putih.png'),
(21,'Tentang Kamu','2021','Tere Liye','18',1,'2024-01-10 23:29:32','2024-01-10 23:29:32','4247tentang_kamu.png');

/*Table structure for table `tb_dtl_peminjaman` */

DROP TABLE IF EXISTS `tb_dtl_peminjaman`;

CREATE TABLE `tb_dtl_peminjaman` (
  `id_dtl_peminjaman` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_peminjaman` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_dtl_peminjaman`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_dtl_peminjaman` */

/*Table structure for table `tb_kategori` */

DROP TABLE IF EXISTS `tb_kategori`;

CREATE TABLE `tb_kategori` (
  `id_kategori` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_kategori` */

insert  into `tb_kategori`(`id_kategori`,`nama_kategori`,`created_at`,`updated_at`) values 
(1,'Fiksi',NULL,'2024-01-10 23:45:02'),
(2,'Petualangan',NULL,NULL),
(3,'Drama',NULL,NULL),
(4,'Romance',NULL,NULL),
(5,'Pengembangan Diri','2024-01-08 14:00:21','2024-01-08 14:00:21');

/*Table structure for table `tb_peminjaman` */

DROP TABLE IF EXISTS `tb_peminjaman`;

CREATE TABLE `tb_peminjaman` (
  `id_peminjaman` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint(20) NOT NULL,
  `id_buku` bigint(20) NOT NULL,
  `jumlah_pinjam` bigint(20) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `tgl_kembali` date DEFAULT NULL,
  `status_peminjaman` varchar(20) NOT NULL DEFAULT 'Pinjam',
  `denda` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id_peminjaman`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_peminjaman` */

insert  into `tb_peminjaman`(`id_peminjaman`,`id_user`,`id_buku`,`jumlah_pinjam`,`tgl_pinjam`,`tgl_kembali`,`status_peminjaman`,`denda`,`created_at`,`updated_at`) values 
(1,1,1,2,'2023-06-12','2023-06-19','kembali','0',NULL,NULL),
(2,3,2,2,'2023-12-06',NULL,'Pinjam',NULL,'2023-12-18 05:07:16','2023-12-18 05:07:16'),
(3,3,7,2,'2023-12-06',NULL,'Pinjam',NULL,'2023-12-18 05:09:43','2023-12-18 05:09:43'),
(5,1,5,6,'2023-12-13','2023-12-20','Kembali','10000',NULL,NULL),
(6,1,8,2,'2023-12-13','2023-12-22','Kembali','15000',NULL,NULL),
(8,2,18,1,'2023-07-08','2023-07-15','Kembali','5000','2024-01-08 14:11:26','2024-01-08 14:12:44'),
(9,2,13,2,'2023-07-11',NULL,'Pinjam',NULL,'2024-01-08 14:12:11','2024-01-08 14:12:11'),
(10,2,4,3,'2023-08-08',NULL,'Pinjam',NULL,'2024-01-08 14:13:24','2024-01-08 14:13:24'),
(11,2,14,1,'2023-08-11','2023-11-20','Pinjam','2000','2024-01-08 14:13:42','2024-01-08 14:34:05'),
(12,9,10,1,'2023-07-08',NULL,'Pinjam',NULL,'2024-01-08 14:15:56','2024-01-08 14:15:56'),
(13,9,9,4,'2023-07-11','2023-11-15','Kembali','15000','2024-01-08 14:16:21','2024-01-08 14:31:06'),
(14,9,16,1,'2023-08-11','2023-08-11','Kembali','0','2024-01-08 14:16:39','2024-01-08 14:31:44'),
(15,11,10,2,'2023-07-11','2023-07-18','Kembali','0','2024-01-08 14:18:12','2024-01-08 14:32:09'),
(16,11,17,2,'2023-08-08',NULL,'Pinjam',NULL,'2024-01-08 14:18:34','2024-01-08 14:18:34'),
(17,11,1,1,'2023-08-23','2023-08-31','Kembali','2000','2024-01-08 14:18:52','2024-01-12 01:21:39'),
(18,11,2,1,'2023-07-08',NULL,'Pinjam',NULL,'2024-01-08 14:19:30','2024-01-08 14:19:30'),
(19,10,6,5,'2023-09-11',NULL,'Pinjam',NULL,'2024-01-08 14:20:33','2024-01-08 14:20:33'),
(20,10,10,2,'2023-09-21','2023-09-25','Kembali','0','2024-01-08 14:20:48','2024-01-12 01:21:25'),
(21,10,4,1,'2023-09-30','2023-10-09','Kembali','10000','2024-01-08 14:21:00','2024-01-12 01:21:52'),
(22,10,4,1,'2023-06-12',NULL,'Pinjam',NULL,'2024-01-08 14:21:38','2024-01-08 14:21:38'),
(23,5,5,2,'2023-09-11','2023-09-25','Kembali','20000','2024-01-08 14:22:36','2024-01-08 20:00:38'),
(24,5,15,2,'2024-01-21',NULL,'Pinjam',NULL,'2024-01-08 14:22:44','2024-01-08 14:22:44'),
(25,5,1,3,'2023-11-18',NULL,'Pinjam',NULL,'2024-01-08 14:22:55','2024-01-08 14:22:55'),
(26,5,4,2,'2023-10-10',NULL,'Pinjam',NULL,'2024-01-08 14:23:05','2024-01-08 14:23:05'),
(27,6,15,2,'2023-07-08','2023-07-15','Kembali','0','2024-01-08 14:24:17','2024-01-12 01:21:06'),
(28,6,3,3,'2023-09-30',NULL,'Pinjam',NULL,'2024-01-08 14:24:43','2024-01-08 14:24:43'),
(29,6,12,3,'2023-09-11',NULL,'Pinjam',NULL,'2024-01-08 14:25:02','2024-01-08 14:25:02'),
(30,8,9,4,'2023-06-12','2023-06-19','Kembali','0','2024-01-08 14:26:40','2024-01-12 01:22:17'),
(31,8,13,2,'2023-06-11',NULL,'Pinjam',NULL,'2024-01-08 14:27:34','2024-01-08 14:27:34');

/*Table structure for table `tb_user` */

DROP TABLE IF EXISTS `tb_user`;

CREATE TABLE `tb_user` (
  `id_user` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama_user` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `no_tlp` varchar(20) NOT NULL,
  `level` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_user`),
  UNIQUE KEY `tb_user_email_unique` (`email`),
  UNIQUE KEY `tb_user_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_user` */

insert  into `tb_user`(`id_user`,`nama_user`,`email`,`username`,`password`,`created_at`,`updated_at`,`no_tlp`,`level`) values 
(1,'Administrator','admin11@gmail.com','admin','$2y$10$c24MV283cIllbfVf9MSC..aX4ubiO26HZJys04ltUWZ1jpXyxNIHe',NULL,'2024-01-12 13:59:32','085123154111','admin'),
(6,'Grace Yuna','yunash09@gmail.com','Yuna','$2y$10$4F1lU9C7ZYbO2CjtbAQuJuLcJz.gv5Gr3VVSe20iT0v6dUEUyDski','2024-01-08 13:42:29','2024-01-12 13:40:44','085124987456','user'),
(8,'Xena Ryujin','ryujin17gmail.com','Ryujin','$2y$10$YUrZxAy8Gf/D0ynP6WXxhePVXmvO0LNVlhQg0fKqKfU/3QD4GzHVu','2024-01-08 13:45:59','2024-01-12 13:42:26','089456897451','user'),
(9,'Valencia Lisa','lalisa27@gmail.com','Lisa','$2y$10$mV.K1C1H8dKcZffcZzMxEOdrgwuaPR7foJH9K6zXdFelI9xh.SEr6','2024-01-08 13:47:16','2024-01-12 13:43:19','087865142321','user'),
(10,'Ember Jisoo','jisoo03@gmail.com','Jisoo','$2y$10$NdupQRXHVJOBEoXxAAf3uOVik/2rDgCdHRkUulxRjk4Xx.jjpDiaG','2024-01-08 13:49:11','2024-01-12 13:44:24','081654124784','user'),
(11,'Jennie Ruby','jennie16@gmail.com','Jennie','$2y$10$DLhu/Pmfe4DXIYeuQmUyquTwd5XpSH5NYfeL.OwfyULFJCMv92lhq','2024-01-08 13:50:40','2024-01-12 13:44:40','087874146987','user'),
(22,'Roseane','roseane11@gmail.com','Rose','$2y$10$M8xCcj7lCGZADckRVW7Bs.KSsw7aPOiTXpcb8yats7AlZeNrNtI.2','2024-01-10 23:43:05','2024-01-10 23:43:05','089456111475','user'),
(23,'Lia Fransisca','liachoi11@gmail.com','Lia','$2y$10$5/BoIpcZgWkziaUTai3xY.CDl7TNqFDGA4K5MpeJKoqivkadbrW1y','2024-01-11 00:00:23','2024-01-12 13:46:11','085124668745','user'),
(24,'Hwang Yeji','yejihwang09@gmail.com','Yeji','$2y$10$sObtRPQnWTorNYF6.omoQeLVjAZ8qX/DmL0jcU5sye4fIgrjZhZXa','2024-01-11 00:03:07','2024-01-11 00:03:07','085471234561','user');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
