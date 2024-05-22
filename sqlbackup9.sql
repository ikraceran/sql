-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.32-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- petshop_products için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `petshop_products` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `petshop_products`;

-- tablo yapısı dökülüyor petshop_products.musteri
CREATE TABLE IF NOT EXISTS `musteri` (
  `kullanici` mediumtext DEFAULT NULL,
  `sifre` mediumtext DEFAULT NULL,
  `musteri` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci ROW_FORMAT=DYNAMIC;

-- petshop_products.musteri: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `musteri` (`kullanici`, `sifre`, `musteri`) VALUES
	('elifakvaryum', '123456', 'ELİF AKVARYUM PET SHOP');

-- tablo yapısı dökülüyor petshop_products.products
CREATE TABLE IF NOT EXISTS `products` (
  `barkod` varchar(50) NOT NULL DEFAULT '0',
  `isim` varchar(75) NOT NULL,
  `tur` varchar(50) NOT NULL,
  `alt_tur` varchar(50) NOT NULL,
  `fiyat` decimal(20,2) NOT NULL DEFAULT 0.00,
  `adet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- petshop_products.products: ~59 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `products` (`barkod`, `isim`, `tur`, `alt_tur`, `fiyat`, `adet`) VALUES
	('8699727111001', 'Dreamie\'s Ördekli Kedi Ödül Maması', 'kedi', 'ödül maması', 35.00, 50),
	('45796533', 'Dreamie\'s Somonlu Kedi Ödül Maması', 'kedi', 'ödül maması', 35.00, 50),
	('45796534', 'Dreamie\'s Sığır Etli Kedi Ödül Maması', 'kedi', 'ödül maması', 40.00, 55),
	('45796532', 'Dreamie\'s Tavuklu Kedi Ödül Maması', 'kedi', 'ödül maması', 75.00, 45),
	('14725812', 'Reflex Tavuklu Köpek Maması 1 kg', 'köpek', 'kuru mama', 150.00, 40),
	('14725813', 'Reflex Somonlu Köpek Maması 1 kg', 'köpek', 'kuru mama', 150.00, 35),
	('14725811', 'Reflex Kuzu Etli Köpek Maması 1 kg', 'köpek', 'kuru mama', 100.00, 22),
	('12345621', 'Sanicat Pudralı Kedi Kumu 10 L', 'kedi', 'kum', 120.00, 50),
	('12345622', 'Sanicat Beyaz Sabunlu Kedi Kumu 10 L', 'kedi', 'kum', 120.00, 45),
	('12345623', 'Sanicat Kokusuz Kedi Kumu 10 L', 'kedi', 'kum', 120.00, 52),
	('3660005126852', 'Pedigree Tavuklu Köpek Konserve 400 gr', 'köpek', 'yaş mama', 45.00, 52),
	('52369851', 'Pedigree Somonlu Köpek Konserve 400 gr', 'köpek', 'yaş mama', 45.00, 29),
	('52369851', 'Pedigree Sığırlı Köpek Konserve 400 gr', 'köpek', 'yaş mama', 45.00, 60),
	('25789632', 'Quick Kanarya Yemi 400 gr', 'kuş', 'yem', 50.00, 40),
	('14578963', 'Quick Papağan Yemi 1000 gr', 'kuş', 'yem', 90.00, 54),
	('3614226150356', 'Quick Bülbül Yemi 400 gr', 'kuş', 'yem', 35.00, 32),
	('45789632', 'Quick Muhabbet Yemi 450 gr', 'kuş', 'yem', 40.00, 100),
	('45632571', 'Golden Wings Konuşturucu 20 gr', 'kuş', 'takviye', 30.00, 21),
	('45632572', 'Golden Wings Kızıştırıcı 30 gr', 'kuş', 'takviye', 50.00, 30),
	('96857432', 'Quick Hamster Yemi 1 kg', 'kemirgen', 'yem', 70.00, 10),
	('96857431', 'Quick Tavşan Yemi 1 kg', 'kemirgen', 'yem', 80.00, 15),
	('58632541', 'Hamster Kafesi Küçük Boy Pembe', 'kemirgen', 'aksesuar', 100.00, 4),
	('86939515', 'Hamster Kafesi Büyük Boy Oyuncaklı', 'kemirgen', 'aksesuar', 250.00, 2),
	('32363561', 'Tetra Japon Balığı Yemi 100 gr', 'balık', 'yem', 30.00, 15),
	('32363562', 'Tetra Köpekbalığı Yemi 100 gr', 'balık', 'yem', 50.00, 10),
	('3660005903903', 'İthal 1 m Akvaryum', 'akvaryum', 'büyük akvaryum', 500.00, 3),
	('74757652', 'Küçük Boy Fanus', 'akvaryum', 'fanus', 50.00, 5),
	('8697236108864', 'Batık Gemi Küçük Boy', 'akvaryum', 'dekor', 75.00, 10),
	('9786053754794', 'Öten Tavuk Küçük Boy', 'diğer', 'oyuncak', 45.00, 19),
	('32365881', 'kedi gezdirme göğüs tasması ', 'diğer', 'tasma', 120.00, 25),
	('96354771', 'köpek kuru şampuan 1 l', 'diğer', 'şampuan', 100.00, 14),
	('23145742', 'Kuş Salıncağı Büyük Boy Boncuklu', 'kuş', 'aksesuar', 35.00, 50),
	('49632154', 'Pedigree Biscouit 150 gr', 'köpek', 'ödül maması', 70.00, 100),
	('8690826425501', 'Royal Canin Kitten 3 kg', 'kedi', 'kuru mama', 700.00, 30),
	('8690586018814', 'Felix Kuzu Etli Konserve 400 gr', 'kedi', 'yaş mama', 45.00, 68),
	('8697236860229', 'Süperman Kostümü Small', 'diğer', 'kıyafet', 120.00, 2),
	('8690840226689', 'Kedi Tırnak Makası Küçük Boy', 'diğer', 'bakım', 85.00, 7),
	('526261', 'xyz', 'akvaryum', 'fanus', 50.00, 2),
	('9626925962', 'vcvccv', 'akvaryum', 'fanus', 95.00, 1),
	('100', 'Proplan Kitten 1 kg', 'kedi', 'hızlı menü', 300.00, 94),
	('101', 'Proplan Kısır Somonlu 1 kg', 'kedi', 'hızlı menü', 200.00, 100),
	('102', 'Proplan Kısır Hindili 1 kg', 'kedi', 'hızlı menü', 200.00, 98),
	('200', 'Proplan Puppy Kuzulu 1 kg', 'köpek', 'hızlı menü', 200.00, 46),
	('201', 'Proplan Puppy Tavuklu 1 kg', 'köpek', 'hızlı menü', 200.00, 49),
	('202', 'Proplan Köpek Biftekli 1 kg', 'köpek', 'hızlı menü', 200.00, 50),
	('110', 'Reflex Kısır Balıklı 1 kg', 'kedi', 'hızlı menü', 100.00, 73),
	('111', 'Reflex Kitten Tavuklu 1 kg', 'kedi', 'hızlı menü', 100.00, 79),
	('210', 'Reflex Puupy Kuzulu 1 kg', 'köpek', 'hızlı menü', 100.00, 56),
	('211', 'Reflex Köpek Biftekli 1 kg', 'köpek', 'hızlı menü', 100.00, 60),
	('000', 'Muhabbet Yemi Açık 1 kg', 'kuş', 'hızlı menü', 40.00, 79),
	('001', 'Kanarya Yemi Açık 1 kg', 'kuş', 'hızlı menü', 60.00, 78),
	('002', 'Muhabbet Yemi Açık 500 gr', 'kuş', 'hızlı menü', 30.00, 41),
	('262692', 'cccccc', 'diğer', 'kıyafet', 100.00, 10),
	('745262', 'zzzzzz', 'diğer', 'şampuan', 50.00, 40),
	('46526', 'bb', 'kedi', 'kum', 200.00, 10),
	('108', 'Proplan Kitten 500 gr', 'kedi', 'hızlı menü', 100.00, 50),
	('50044278', 'aa', 'kuş', 'takviye', 1.00, 1),
	('1561262126', 'aaaa', 'diğer', 'bakım', 100.00, 20),
	('453456386348', 'sssssssss', 'diğer', 'bakım', 20.00, 10);

-- tablo yapısı dökülüyor petshop_products.satislar
CREATE TABLE IF NOT EXISTS `satislar` (
  `tarih_saat` datetime DEFAULT NULL,
  `urun_listesi` longtext DEFAULT NULL,
  `toplam_tutar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- petshop_products.satislar: ~1 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `satislar` (`tarih_saat`, `urun_listesi`, `toplam_tutar`) VALUES
	('2024-05-03 08:32:40', 'Proplan Kitten 1 kg - Adet: 1, Proplan Puppy Kuzulu 1 kg - Adet: 1, Reflex Kısır Balıklı 1 kg - Adet: 1, Proplan Kısır Hindili 1 kg - Adet: 1', 800);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
