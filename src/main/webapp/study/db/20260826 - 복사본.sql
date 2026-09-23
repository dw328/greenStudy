/*이거는 자바와 같은 부분(주석) */
	-- 이것이 주석
SELECT * FROM memo;

-- 홍길순 자료 추가(기본값으로 추가)
INSERT INTO memo (NAME) VALUES ('홍길순');

-- name, age의 내용만 출력
SELECT NAME, age FROM memo;

SELECT age, gender, address FROM memo;	

SELECT NAME FROM memo;	-- memo 테이블의 NAME 보여줌

-- 성별이 남자인 자료만 출력하시오.(조건: where)
SELECT * FROM memo WHERE gender = '남자';	
SELECT * FROM memo WHERE gender != '남자';

-- 나이가 30살 이상인 자료를 출력
SELECT * FROM memo WHERE age >= 30;

-- 나이가 30살 이상인 자료의 성명과, 성별, 나이를 출력
SELECT NAME, gender, age FROM memo WHERE age>=30;

-- 주소가 서울인 사람을 출력
SELECT * FROM memo WHERE address = '서울';

-- 여자중에서 주소가 서울인 사람을 출력
SELECT * FROM memo WHERE gender = '여자' and address = '부산';

-- 서울이나 부산에 사는 사람을 출력
SELECT *FROM memo WHERE address = '서울' OR address = '부산';

-- 서울지역 외의 30대 이상을 출력
SELECT *FROM memo WHERE address != '서울' AND age >= 30;

-- 구조를 바꾸는 방법(gender필드 이름을 -> sex필드로 바꿈)
ALTER TABLE memo CHANGE gender  sex CHAR(2);

-- 테이블의 구조를 보여줌
DESC memo;

ALTER TABLE memo CHANGE sex gender CHAR(2) NOT NULL DEFAULT '남자';

-- address필드의 길이를 10byte로 수정(길이 설정)
ALTER TABLE memo MODIFY address VARCHAR(10);

-- memo 테이블에 자기소개서를 추가하기 위한 text를 추가하시오.
-- txt필드명을 content으로 한다.
ALTER TABLE memo ADD COLUMN content TEXT;

-- memo 테이블에 있는 content필드를 삭제하시오.
ALTER TABLE memo DROP COLUMN content;

-- memo 테이블명을 memo2 변경
ALTER TABLE memo2 RENAME memo;

SHOW TABLES;

-- 전체 나이를 +1 한 살씩 추가하시오.
SELECT * FROM memo;
UPDATE memo SET age = age + 1; 

-- 남자의  나이를 +1 한 살씩 추가하시오.
UPDATE memo SET age = age + 1 WHERE gender = '남자'; 

-- '양양'에 사는 사람을 '청주'로 바꾸기
UPDATE memo SET address = '청주' WHERE address = '서울';	--  ?  반대로 (바꿀  필드 )where  (기존  필드)
 
-- 신규회원 등록처리
-- 성명: 해돌이, 주소: 부산
INSERT INTO memo (NAME, address) VALUES('해돌이', '부산');

-- 전화번호가 null인 자료의 번호를 000-0000-0000으로 변경
UPDATE memo SET tell ='000-0000-0000' WHERE  ISNULL(tell);		-- ??(테이블 보니깐 null이 없음

-- 성명이 해돌이 자료를 삭제
delete FROM memo WHERE NAME = '해돌이';

DESC memo;

-- name 필드명을 '성명'으로 age '나이'로 출력하시오
SELECT * FROM memo;
SELECT NAME AS 성명, age 나이, gender, address FROM memo;

-- 추가
INSERT INTO memo VALUES ('연습', '000-0000-000', DEFAULT, 35 ,'청주');
-- 나이가 30대(30~ 39)까지 출력
SELECT * FROM memo WHERE age >= 30 AND age <40;
SELECT * FROM memo WHERE age BETWEEN 30 AND 39;
SELECT * FROM memo WHERE address IN ('춘천','청주','영월'); 

-- 나이 오름차순 정렬
SELECT * FROM memo ORDER BY age asc;

-- 나이 내림차순 정렬
SELECT * FROM memo ORDER BY age DESC;

-- 주소 오름차순 정렬
SELECT * FROM memo ORDER BY address;

-- 주소 오름차순 정렬하되, 주소가 같은 경우는 나이는 내림차순으로 출력.
SELECT * FROM memo ORDER BY address, age desc;

-- 입력자료 5건만 출력하시오
SELECT * FROM memo LIMIT 5;

-- 입력자료 5건만 출력하시오(나이 많은 사람 5건)
SELECT * FROM memo ORDER BY age LIMIT 5;		-- ?? 맞나?

-- '김'씨만 출력하시오.
SELECT * FROM memo WHERE NAME LIKE '김%';
-- 와,,,,

-- '시'로 끝난 사람만 출력하시오.
SELECT * FROM memo WHERE NAME LIKE '%시';

-- 이름중에서 '숙'자가 들어있는 사람을 출력하시오.
SELECT * FROM memo WHERE NAME LIKE '%숙%';

-- 이름이 '홍길동' 이면서 tell = null인 자료를 성명을 이길동으로 변경
SELECT * FROM memo WHERE NAME = '홍길동' AND ISNULL(tell);
UPDATE memo SET NAME = '이길동' WHERE NAME ='홍길동' AND ISNULL(tell);

-- tell이 null인 자료를 오늘 날짜로 update 하시오.
SELECT * FROM memo WHERE  ISNULL(tell);
UPDATE memo SET birthday = NOW() WHERE  ISNULL(tell);

-- 현재 날짜 시간 출력
SELECT NOW();
SELECT NOW()-1;

-- 테이블 구조
DESC memo;

-- birthday 필드 추가히사오.(날짜 형식, 기본값 오늘날짜)
ALTER TABLE memo add COLUMN birthday DATETIME DEFAULT NOW();

SELECT *FROM memo;
SELECT * FROM memo ORDER BY birthday ASC;	-- 오름차순 생략가능
SELECT * FROM memo ORDER BY birthday DESC;-- 내림차순

-- 2026년 5월 이전에 태어난 사람들만 출력
SELECT * FROM memo WHERE birthday < '2026-5-1';
SELECT * FROM memo WHERE birthday < '2026-05-01';

-- 2026년 2월 이후에 태어난 여자중에서 서울에 사는 사람을 보여주시오
SELECT * FROM memo WHERE birthday >= '2026-3-1' AND address = '서울' AND gender = '여자';

-- 