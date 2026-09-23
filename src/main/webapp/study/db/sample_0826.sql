CREATE TABLE hoewon(
	MID	VARCHAR(15) NOT NULL,
	pwd	VARCHAR(20)	NOT NULL,
	NAME	VARCHAR(20) NOT NULL,
	age	INT		DEFAULT  20,
	sex	CHAR(2)	DEFAULT '남자',
	ipsail datetime DEFAULT NOW(),
	address VARCHAR(50));
	
-- SELECT * FROM hoewon;

-- DROP TABLE hoewon;

ALTER TABLE hoewon RENAME sinsang;

SELECT * FROM sinsang;

SHOW TABLES;

ALTER TABLE sinsang ADD COLUMN content TEXT;

DESC sinsang;

ALTER TABLE sinsang CHANGE content soge TEXT;

ALTER TABLE sinsang MODIFY soge VARCHAR(100);

-- DELETE FROM contenxt;

ALTER TABLE sinsang CHANGE sex gender CHAR(2) DEFAULT '여자';

ALTER TABLE sinsang CHANGE POINT INT DEFAULT = 1000;


ALTER TABLE sinsang 
MODIFY POINT INT 
DEFAULT  1000;

DESC sinsang;

ALTER TABLE sinsang MODIFY gender CHAR(6);

INSERT INTO sinsang VALUES	('hong','1234','홍길동',25,'남자','1990-10-05','서울',default);
INSERT INTO sinsang VALUES	('kim','1234','김말숙',33,'여자','1997-12-3','부산',default),
									('lee','1234','이순자',24,'여자','1985-7-25','광주',default),
									('lee1','1234','이기자',40,'남자','1999-10-3','울산',default),
									('park','1234','박찬호',32,'남자','1980-6-08','대전',default),
									('bea','1234','백은숙',19,'여자','1993-11-22','마산',default),
									('son','1234','손기정',45,'남자','1987-12-15','제주',default),
									('kim1','1234','김영숙',36,'여자','2002-10-5','부천',default),
									('kim2','1234','김영철',39,'남자','1988-10-5','인천',default),
									('lee2','1234','이겨라',29,'남자','2000-10-09','서울',default),
									('son2','1234','손오공',23,'남자','2005-12-15','서울',default);

DELETE FROM sinsang;
SELECT * FROM sinsang;

SELECT * FROM sinsang WHERE mid like 'kim%';

SELECT * FROM sinsang WHERE gender = '남자';

SELECT * FROM sinsang WHERE address = '서울';

SELECT * FROM sinsang WHERE address = '서울' or address = '인천';

SELECT * from sinsang WHERE address = '서울' AND gender ='남자';	

ALTER table sinsang ADD COLUMN point INT;		

-- ALTER TABLE sinsang MODIFY POINT INT(1000);

DESC sinsang;			

UPDATE sinsang SET POINT = 100 + POINT  WHERE gender ='여자'; 	

UPDATE sinsang SET POINT = POINT + 50 WHERE gender ='남자' AND age >= 35;

SELECT * FROM sinsang;

UPDATE sinsang SET address = '서울'  where MID = 'kim1';

SELECT NAME, age, address FROM sinsang;

SELECT MID AS 아이디, gender 성별, ipsail 입사일 FROM sinsang WHERE ipsail >= '2000-01-01';


SELECT * FROM memo;

CREATE TABLE test1 (
	idx  INT NOT NULL AUTO_INCREMENT PRIMARY key,
	NAME VARCHAR(20) NOT NULL, 
	age  INT DEFAULT 20
	);

DROP TABLE test1;
	
INSERT INTO test1 VALUES (default, '홍길동', 22);
INSERT INTO test1 VALUES (default, '김말숙', 33);
INSERT INTO test1 VALUES (default, '이기자', 44);
INSERT INTO test1 VALUES (DEFAULT, '김연아', 29);

INSERT into sinsang VALUES ('park','1234','박세리',35,'여자', DEFAULT,'인천',DEFAULT, default);

DESC sinsang;
SELECT * FROM test1;

DELETE FROM test1 WHERE idx = 2;

DELETE FROM test1;

-- /DB연동/자바 select 서치연결/ 그리고 저번주에 안 한거까지

SELECT * FROM sinsang;

SELECT MID  아이디, age 나이, address 주소, gender 성별 
FROM sinsang 
WHERE gender = '여자' AND age >=30 AND age <40;

SELECT * 
FROM sinsang 
where POINT is NULL;

UPDATE sinsang 
SET POINT = NULL 
WHERE MID = 'park';
-- ---------------------------------------------------------
SELECT *
FROM sinsang;
 
SELECT * 
FROM sinsang
WHERE POINT IS NULL;

UPDATE sinsang 
SET POINT = 1000 
where point IS NULL;

SELECT * FROM sinsang
WHERE POINT <1000; 
-- ------------------------------------------------------------

SELECT POINT FROM sinsang;

UPDATE sinsang SET POINT = POINT + 1000 WHERE POINT <1000;

-- ---------------------------------------------------
SELECT * FROM sinsang
WHERE NOT (address = '서울' OR address = '인천');

UPDATE sinsang SET POINT = POINT + 500
WHERE  NOT (address ='서울' OR address = '인천');
-- ---------------------------------------------------
SELECT * 
FROM sinsang
WHERE ipsail <'1990-12-31'and gender = '남자';

UPDATE sinsang
SET POINT = 0
WHERE ipsail < '1990-12-31' and gender = '남자';
-- -------------------------------------------
SELECT *
FROM sinsang
WHERE POINT = 0 AND age >= 40 ;

SELECT *
FROM sinsang
WHERE age >= 40;
-- -------------------------------------------
SELECT * 
FROM sinsang
WHERE address = '서울';

UPDATE sinsang
SET pwd = '0000' AND POINT = POINT + 300
WHERE address ='서울';

SELECT * 
FROM sinsang
WHERE address ='서울';

UPDATE sinsang
SET pwd ='0000'
WHERE address = '서울';
-- ----------------------------------------

UPDATE sinsang 
SET POINT = 0;

UPDATE sinsang
SET POINT =1000;
-- ----------------------------------------
-- 인원추가(홍길동, 김영철) (실종되어서)
INSERT INTO sinsang VALUES ('hong','1234','홍길동',25,'남자','1990-10-5','서울',null,DEFAULT);
INSERT INTO sinsang VALUES	('kim2','1234','김영철',39,'남자','1988-10-5','인천',null,DEFAULT);
-- ----------------------------------------

INSERT INTO sinsang VALUES ('홍길공자','1234','hkgj',20,'남자',DEFAULT,'영월',null,DEFAULT,DEFAULT);

SELECT * 
FROM sinsang
WHERE age >= 40;

SELECT *
FROM sinsang
WHERE address ='서울' AND pwd = '0000';

UPDATE sinsang
SET POINT = POINT + 300
WHERE address = '서울' AND pwd = '0000';

SELECT *
FROM sinsang
WHERE POINT =0 AND address = '서울' AND ipsail < '1985-12-31';

SELECT *
FROM sinsang
WHERE age >29 and age <40 ;

SELECT *
FROM sinsang
WHERE age  BETWEEN 30 AND 39;

SELECT NAME 이름, age 나이, gender 성별, address 주소
FROM sinsang
WHERE address = '서울'OR  address = '부산';

SELECT NAME 이름, age 나이, gender 성별, address 주소
FROM sinsang
WHERE address IN ('부산','서울');

ALTER TABLE sinsang ADD COLUMN idx INT NOT NULL AUTO_INCREMENT primary KEY;

SELECT * 
FROM sinsang
order by age DESC, NAME ASC, idx ASC;

SELECT *
FROM sinsang
WHERE NAME = '홍길공자';

SELECT * 
FROM sinsang;

UPDATE sinsang
SET MID = 'hkgj',NAME ='홍길공자'
WHERE idx = 13;

SELECT *
FROM sinsang
WHERE idx = 13;

SELECT *
FROM sinsang
WHERE NAME LIKE '홍%';

SELECT *
FROM sinsang
WHERE NAME LIKE '%자';

SELECT *
FROM sinsang
WHERE NAME LIKE '%공%';

SELECT MID 아이디, NAME 이름 ,gender  성별
FROM sinsang 
WHERE NAME LIKE '%기%';

SELECT MID 아이디, NAME 이름 ,gender  성별
FROM sinsang 
WHERE NAME LIKE '_기%';


SELECT *
FROM sinsang
WHERE NAME LIKE '%공_';

SELECT MID 아이디, NAME 성명, gender 성별
FROM sinsang
LIMIT 5;

SELECT MID 아이디, NAME 성명, age 성별 
FROM sinsang
LIMIT 4,5;

SELECT MID 아이디, NAME 성명, age 성별 
FROM sinsang
ORDER BY gender DESC, NAME asc
LIMIT 4,5;

SELECT *
FROM sinsang
ORDER BY age DESC LIMIT 3;

DESC sinsang;

select * 
from memo;