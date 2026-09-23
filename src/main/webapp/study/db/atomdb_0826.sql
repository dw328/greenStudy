atomdb-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        8.0.46 - MySQL Community Server - GPL
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.10.0.7000
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- atomdb 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `atomdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `atomdb`;

-- 테이블 atomdb.memo 구조 내보내기
CREATE TABLE IF NOT EXISTS `memo` (
  `name` varchar(20) NOT NULL,
  `tell` varchar(15) DEFAULT NULL,
  `gender` char(2) NOT NULL DEFAULT '여자',
  `age` int DEFAULT '20',
  `address` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 atomdb.memo:~10 rows (대략적) 내보내기
DELETE FROM `memo`;
INSERT INTO `memo` (`name`, `tell`, `gender`, `age`, `address`) VALUES
	('홍길동', '010-1234-1234', '남자', 25, '서울'),
	('김말숙', '010-5678-1234', '여자', 20, '광주'),
	('이기자', '010-1234-6666', '여자', 20, '부산'),
	('김홍시', '010-5678-4444', '남자', 68, '영월'),
	('김옥자', '010-8888-4444', '여자', 87, '양양'),
	('최민숙', '010-8888-4444', '남자', 20, '춘천'),
	('이삼옥', '010-1234-6776', '남자', 38, '대전'),
	('한옥민', '010-7777-4444', '여자', 99, '옥천'),
	('권춘', '010-7777-4545', '남자', 54, '대구'),
	('복분자', '010-7777-0000', '여자', 55, '창원');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
