-- --------------------------------------------------------
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
  `gender` char(2) NOT NULL DEFAULT '남자',
  `age` int DEFAULT '20',
  `address` varchar(10) DEFAULT NULL,
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 atomdb.memo:~11 rows (대략적) 내보내기
DELETE FROM `memo`;
INSERT INTO `memo` (`name`, `tell`, `gender`, `age`, `address`, `birthday`) VALUES
	('홍길동', '010-1234-1234', '남자', 27, '청주', '2026-08-27 09:46:31'),
	('김말숙', '010-5678-1234', '여자', 21, '광주', '2026-12-15 09:46:31'),
	('이기자', '010-1234-6666', '여자', 21, '부산', '2026-08-04 00:46:31'),
	('김홍시', '010-5678-4444', '남자', 70, '영월', '2026-03-03 00:46:31'),
	('김옥자', '010-8888-4444', '여자', 88, '양양', '2026-09-27 09:46:31'),
	('이숙자', '010-8888-4444', '남자', 22, '춘천', '2026-11-29 09:46:31'),
	('이삼옥', '010-1234-6776', '남자', 40, '대전', '2026-04-30 09:46:31'),
	('한옥민', '010-7777-4444', '여자', 100, '옥천', '2026-08-08 09:46:31'),
	('권춘', '010-7777-4545', '남자', 56, '대구', '2026-07-27 09:46:31'),
	('복분자', '010-7777-0000', '여자', 56, '창원', '2026-02-20 09:46:31'),
	('연습', '000-0000-000', '남자', 35, '청주', '2026-01-01 09:46:31'),
	('홍길순', NULL, '남자', 20, NULL, '2026-08-27 10:15:09'),
	('이길동', NULL, '남자', 20, NULL, '2026-08-27 10:15:09');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
