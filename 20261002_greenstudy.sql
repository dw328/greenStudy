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


-- greenstudy 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `greenstudy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `greenstudy`;

-- 테이블 greenstudy.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `nickName` varchar(20) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `hostIp` varchar(40) NOT NULL,
  `openSw` char(2) DEFAULT 'OK',
  `readNum` int DEFAULT '0',
  `wDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `good` int DEFAULT '0',
  `complaint` char(2) DEFAULT 'NO',
  PRIMARY KEY (`idx`),
  KEY `mid` (`mid`),
  CONSTRAINT `board_ibfk_1` FOREIGN KEY (`mid`) REFERENCES `member` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.board:~5 rows (대략적) 내보내기
DELETE FROM `board`;
INSERT INTO `board` (`idx`, `mid`, `nickName`, `title`, `content`, `hostIp`, `openSw`, `readNum`, `wDate`, `good`, `complaint`) VALUES
	(1, 'admin', '관리인', '게시판 서비스 개시', '게시판 서비스를 시작합니다.많은 관심부탁드려요.', '192.168.50.64', 'OK', 2, '2026-10-02 16:09:05', 0, 'NO'),
	(2, 'admin', '홍', '헐헐bbbb', '그래 여기까지는 됐다ㅠㅠㅜㅜ', '127.0.0.1', 'OK', 0, '2026-10-02 16:24:46', 0, 'NO'),
	(3, 'admin', '홍', '빼먹은거 없겠지>>', '업겠지???ㅠㅠㅠㅠ', '127.0.0.1', 'OK', 0, '2026-10-02 16:27:14', 0, 'NO'),
	(4, 'admin', '홍', '111', '11111', '127.0.0.1', 'OK', 0, '2026-10-02 16:28:26', 0, 'NO'),
	(5, 'admin', '홍', '1111', '111111', '127.0.0.1', 'OK', 0, '2026-10-02 16:28:30', 0, 'NO'),
	(6, 'admin', '홍', '22222', '222222222222', '127.0.0.1', 'OK', 0, '2026-10-02 16:30:04', 0, 'NO');

-- 테이블 greenstudy.dbtest 구조 내보내기
CREATE TABLE IF NOT EXISTS `dbtest` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `pwd` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` char(2) DEFAULT '여자',
  `age` int DEFAULT '20',
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.dbtest:~4 rows (대략적) 내보내기
DELETE FROM `dbtest`;
INSERT INTO `dbtest` (`idx`, `mid`, `pwd`, `name`, `gender`, `age`) VALUES
	(13, 'admin', '1234', '관리자', '여자', 20),
	(14, 'admin2', 'cc399d73903f06ee694032ab0538f05634ff7e1ce5e8e50ac330a871484f34cf', '관리자', '여자', 20),
	(15, 'admin3', '25c7b3493e4dade3f159520e3287f555239f3fe82706cd08bf55c67cd6f3032c', '관', '남자', 10),
	(16, '이지은', '41118ce52a3b79afedfb75af103419bf2736d9f01c9f71f51b9772e4b920dd67b49b', '그냥 사람', '여자', 20);

-- 테이블 greenstudy.guest 구조 내보내기
CREATE TABLE IF NOT EXISTS `guest` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `vDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `homepage` varchar(60) DEFAULT NULL,
  `hostip` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.guest:~6 rows (대략적) 내보내기
DELETE FROM `guest`;
INSERT INTO `guest` (`idx`, `name`, `content`, `vDate`, `email`, `homepage`, `hostip`) VALUES
	(1, '이곳은 이름을 작성하는 공간입니다.', '아 범위가 넘어가서 안 들어갔어...근데 그러면 다른건 들어가야지 않나??불안하다...ㄷㄷㄷ', '2026-09-30 22:00:01', 'aaa@naver.com', '이곳은 광고을 작성하는 공간입니다.', '0:0:0:0:0:0:0:1'),
	(2, '이곳은 이름을 작성하는 공간입니다.', 'aaaaaaaaaa', '2026-09-30 22:30:19', 'aaa@naver.com', '이곳은 광고을 작성하는 공간입니다.', '0:0:0:0:0:0:0:1'),
	(3, '이곳은 이름을 작성하는 공간입니다.', 'aaaaaaaaaa', '2026-09-30 22:34:48', 'aaa@naver.com', '이곳은 광고을 작성하는 공간입니다.', '0:0:0:0:0:0:0:1'),
	(4, '이곳은 이름을 작성하는 공간입니다.', 'aaaaaaaaaaaaaaaaaaaaaaaaaaa', '2026-09-30 22:36:27', 'aaa@naver.com', '이곳은 광고을 작성하는 공간입니다.', '0:0:0:0:0:0:0:1'),
	(5, '이곳은 이름을 작성하는 공간입니다.', 'a', '2026-09-30 23:39:57', 'aaa@naver.com', '이곳은 광고을 작성하는 공간입니다.', '0:0:0:0:0:0:0:1'),
	(6, '이곳은 이름을 작성하는 공간입니다.', 'gmA', '2026-09-30 23:43:25', 'aaa@naver.com', '이곳은 광고을 작성하는 공간입니다.', '0:0:0:0:0:0:0:1');

-- 테이블 greenstudy.insa 구조 내보내기
CREATE TABLE IF NOT EXISTS `insa` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(20) NOT NULL,
  `pwd` varchar(15) NOT NULL,
  `name` varbinary(20) NOT NULL,
  `age` int DEFAULT '20',
  `gender` char(2) DEFAULT '여자',
  `address` varchar(10) DEFAULT NULL,
  `ipsail` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idx`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.insa:~12 rows (대략적) 내보내기
DELETE FROM `insa`;
INSERT INTO `insa` (`idx`, `mid`, `pwd`, `name`, `age`, `gender`, `address`, `ipsail`) VALUES
	(1, 'admin', '1234', _binary 0xeab480eba6acec9e90, 20, '여자', NULL, '2026-09-17 12:34:23'),
	(2, 'abc1234', '1234', _binary 0xed998deab8b8eb8f99, 20, '남자', '서울', '2026-09-17 12:34:39'),
	(3, 'drf1234', '1111', _binary 0xeb8db0eba6acec95bceb81bcebb284eab1b0, 21, '남자', '광주', '2026-09-17 12:34:39'),
	(4, 'hix1234', '0000', _binary 0xec8898ec9ca1eab5adebb0a5, 55, '여자', '경주', '2026-09-17 12:34:39'),
	(5, 'aaa1234', '5678', _binary 0xed86a0ec8aa4ed8ab8, 45, '남자', '춘천', '2026-09-17 12:34:39'),
	(6, 'bbb1234', '1240', _binary 0xebb0b1ebb098eca095ec8b9d, 29, '여자', '청주', '2026-09-17 12:34:39'),
	(7, 'ccc1234', '1200', _binary 0xeba788eb9dbced8395, 87, '남자', '부산', '2026-09-17 12:34:39'),
	(8, 'ccc1234', '1200', _binary 0xeabf94ebb094eba19cec9ab0, 10, '여자', '인천', '2026-09-17 12:34:39'),
	(9, 'jkl1234', '1290', _binary 0xec9ca1ed9a8c, 87, '남자', '경남', '2026-09-17 12:34:39'),
	(10, 'ccc12340', '1200', _binary 0xeba788eb9dbced8395, 87, '남자', '부산', '2026-09-01 00:00:00'),
	(11, 'ccc123400', '1200', _binary 0xeabf94ebb094eba19cec9ab0, 10, '여자', '인천', '2020-10-30 00:00:00'),
	(12, 'jkl123400', '1290', _binary 0xec9ca1ed9a8c, 87, '남자', '경남', '0200-10-05 00:00:00');

-- 테이블 greenstudy.member 구조 내보내기
CREATE TABLE IF NOT EXISTS `member` (
  `idx` int NOT NULL AUTO_INCREMENT,
  `mid` varchar(30) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `nickName` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `gender` char(2) NOT NULL DEFAULT '남자',
  `birthday` datetime DEFAULT CURRENT_TIMESTAMP,
  `tel` varchar(15) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `email` varchar(60) NOT NULL,
  `homePage` varchar(60) DEFAULT NULL,
  `job` varchar(20) DEFAULT NULL,
  `hobby` varchar(100) DEFAULT NULL,
  `photo` varchar(100) DEFAULT 'noimage.jpg',
  `content` text,
  `userInfor` char(3) DEFAULT '공개',
  `userDel` char(2) DEFAULT 'NO',
  `point` int DEFAULT '100',
  `level` int DEFAULT '1',
  `visitCnt` int DEFAULT '0',
  `startDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `lastDate` datetime DEFAULT CURRENT_TIMESTAMP,
  `todayCnt` int DEFAULT '0',
  PRIMARY KEY (`idx`),
  UNIQUE KEY `mid` (`mid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- 테이블 데이터 greenstudy.member:~6 rows (대략적) 내보내기
DELETE FROM `member`;
INSERT INTO `member` (`idx`, `mid`, `pwd`, `nickName`, `name`, `gender`, `birthday`, `tel`, `address`, `email`, `homePage`, `job`, `hobby`, `photo`, `content`, `userInfor`, `userDel`, `point`, `level`, `visitCnt`, `startDate`, `lastDate`, `todayCnt`) VALUES
	(4, 'admin', '1091b54a487832cb536cf9b8bf3192e66f2d7e125798cb49eeb7c490de69d4c63771', '홍', '홍길동', '남자', '2026-10-01 00:00:00', '010-1111-2222', '', '', '', '기타', '기타', 'noimage.jsp', '커피 마시니깐 좋당 ㅎㅎㅎ 역시 따뜻한 커피', NULL, 'NO', 100, 0, 0, '2026-10-01 10:41:04', '2026-10-02 16:26:53', 0),
	(5, 'abc1234', '5731c135645ff40a7ca60dc08be45f50155ccb89901e9e949f64fa060cc64f596ecd', '엥 졸려', '졸려', '남자', '2026-10-01 00:00:00', '010-2222-3333', '', '', '', '기타', '바둑/기타', 'noimage.jsp', '쉬는 시간에 자야지 졸리다...', NULL, 'NO', 100, 1, 0, '2026-10-01 10:55:53', '2026-10-01 10:55:53', 0),
	(8, 'admin2', '64051a69bc866e02e341fc5329fd439bdecbd9a00850d12cbffcfcd7d023eefc91bc', '12341', '이지현', '남자', '2026-10-01 00:00:00', '010-1111-3333', '', '', '', '기타', '낚시/기타', 'noimage.jsp', '???왜 안되제??', NULL, 'NO', 100, 1, 0, '2026-10-01 10:59:28', '2026-10-01 10:59:28', 0),
	(9, 'zxcv1266', '9692ac73510915f553b0dd4f036bf71a4db8811e852647e60d53df2e510f3febe6f0', '1234', '호돌이', '남자', '2026-10-01 00:00:00', '010-2222-3333', '', '', '', '군인', '기타', 'noimage.jsp', '빡세구먼', NULL, 'NO', 100, 1, 0, '2026-10-01 11:00:46', '2026-10-01 11:00:46', 0),
	(10, 'atom1111', '299884179a15c3eaf78b569b654cc90cb5384937befd3ecc1d17467d2bfa05c94edf', '1111', '1111', '남자', '2026-10-01 00:00:00', '010-1111-1111', '', '', '', '기타', '기타', 'noimage.jsp', '11111', NULL, 'NO', 100, 1, 0, '2026-10-01 14:19:25', '2026-10-01 15:43:47', 0),
	(11, 'btom2222', '8954edf585df098b9e263d86daad77a0deb5765cc4511cdb7c0fd1d7c05fb34cf6b2', 'btom', 'btom', '여자', '2026-08-13 00:00:00', '010-4545-5555', '28453/충북 청주시 흥덕구 직지대로581번길 33-12/103동203호/ (봉명동, 주공2단지아파트)', 'abc1234@naver.com', '', '기타', '수영/독서/기타', 'noimage.jsp', 'btom입니다.', NULL, 'NO', 100, 1, 0, '2026-10-01 16:09:08', '2026-10-01 16:09:18', 0),
	(12, 'ctom3333', '8447313377bfde62ccf8398b37dd501d362eb0185f7443bd81e0749a52b61da89ee6', 'ctom', 'ctom', '남자', '2026-10-13 00:00:00', '010-7777-7777', ' / / / ', 'ctom3333@hotmail.com', '', '기타', '낚시/수영/기타', 'noimage.jsp', 'ctom입니다.', NULL, 'NO', 100, 1, 0, '2026-10-01 16:10:47', '2026-10-01 16:10:47', 0);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
