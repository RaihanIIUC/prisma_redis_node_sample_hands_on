-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.30 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table mydb.client: ~0 rows (approximately)
REPLACE INTO `client` (`id`, `name`, `code`, `phone`, `address`, `type`) VALUES
	(1, 'HalalShop', '340-bd-dhaka', '0948384030', 'dhaka', 'ONLINE'),
	(2, 'Anika Ellison', 'In ab cillum illum ', '+1 (805) 958-1996', 'Et aute numquam saep', 'MODERN_TRADE'),
	(3, 'Jamal Mann', 'Laborum Adipisci qu', '+1 (341) 897-3416', 'Iure accusantium qua', 'MODERN_TRADE'),
	(4, 'Alexander Tran', 'Corporis magni corpo', '+1 (802) 736-8368', 'Libero facilis elit', 'ONLINE'),
	(5, 'Myra Cervantes', 'Mollitia natus eos ', '+1 (512) 443-6685', 'Qui consequatur Fac', 'ONLINE'),
	(6, 'Isadora Harper', 'Nemo cum a ratione q', '+1 (235) 659-9979', 'Voluptate quae cumqu', 'INHOUSE'),
	(7, 'Thor Tyson', 'Excepturi aperiam do', '+1 (402) 796-9732', 'Laboris enim placeat', 'INHOUSE'),
	(8, 'Sonia Figueroa', 'Veritatis veritatis ', '+1 (127) 927-8838', 'Nobis id quis consec', 'ONLINE'),
	(9, 'Brian Poole', 'Et harum nulla dolor', '+1 (374) 461-7025', 'Omnis ut sapiente la', 'ONLINE'),
	(10, 'Nyssa Mcintosh', 'Consequatur aut natu', '+1 (902) 897-6942', 'Quasi non ducimus q', 'ONLINE'),
	(11, 'Addison Phillips', 'Proident ut sunt q', '+1 (106) 193-4554', 'Id fugiat ratione ad', 'INHOUSE'),
	(12, 'Hayley Glover', 'Ducimus sapiente ac', '+1 (448) 784-5584', 'Culpa voluptatem si', 'INHOUSE');

-- Dumping data for table mydb._prisma_migrations: ~0 rows (approximately)
REPLACE INTO `_prisma_migrations` (`id`, `checksum`, `finished_at`, `migration_name`, `logs`, `rolled_back_at`, `started_at`, `applied_steps_count`) VALUES
	('be87152b-a20e-438c-99a7-aebb7e64335a', '8305c5fd60e61cd5d4e34e12bc43276f449aa1935e961a23f07301d02dcf00b9', '2023-06-18 17:41:47.921', '20230608161614_one_to_many', NULL, NULL, '2023-06-18 17:41:47.887', 1);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
