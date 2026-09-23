select * from insa;
show tables;

create table insa (
	idx int not null auto_increment,
    mid varchar(20) not null,
    pwd varchar(15) not null,
    name varbinary(20) not null,
    age int default 20,
    gender char(2) default '여자',
    address varchar(10),
    ipsail datetime default now(),
    primary key(idx)
);

desc insa;

drop table insa;

alter table insa auto_increment =1;

insert into insa (mid, pwd, name) value('admin','1234','관리자');
insert into insa values(default,'abc1234','1234','홍길동',20,'남자','서울',default);
insert into insa values(default,'drf1234','1111','데리야끼버거',21,'남자','광주' ,default);
insert into insa values(default,'hix1234','0000','수육국밥',55,'여자','경주' ,default);
insert into insa values(default,'aaa1234','5678','토스트',45,'남자','춘천' ,default);
insert into insa values(default,'bbb1234','1240','백반정식',29,'여자','청주' ,default);
insert into insa values(default,'ccc12340','1200','마라탕',87,'남자','부산' ,'2026-9-1');
insert into insa values(default,'ccc123400','1200','꿔바로우',10,'여자','인천' ,'2020-10-30');
insert into insa values(default,'jkl123400','1290','육회',87,'남자','경남' ,'200-10-05');

alter table insa add column ipsail datetime default now();
 

select * from insa;

delete from insa;

-- 주석을 띄우고 사용해야한다... 
-- 집계함수(합계(sum), 평균(avg), 개수(count), 최대값(max), 최소값(min))
 select count(*) from insa;
 select count(*) as 총갯수 from insa;
 
 -- 나이의 합계를 구하시오.
 select sum(age) as age from insa;
 
 -- 나이의 평균를 구하시오.
 select avg(age) as age from insa;
 
-- 최대 나이는 몇살?
select max(age) from insa;

-- 최소 나이는 몇살?
select min(age) from insa;

-- 최대 나이를 갖는 사람은?
select name, max(age) from insa;
 
 -- 최대 나이, 최소 나이, 합계, 평균
 select max(age), min(age), sum(age), avg(age) from insa;
 
-- 문자열 결합: concat()
select concat(age, '살') from insa;

select concat(name,':' ,age ,'살') as imsi from insa;

-- 형식을 지정한 출력: format()
select format(avg(age),1) from insa;

-- 수치함수
SELECT 123.456 AS su;
-- 반올림(round)
select round(123.456) as su;
select round(123.457) as su;
select round(125.456,-1) as su;

-- 절삭: truncate() -는 정수를 잘라낸다.
select truncate(123.456, 0) as su;
select truncate(123.456, 1) as su;
select truncate(123.456, -1) as su;
select truncate(123.456, -2) as su;

-- 무조건 소수이하 -정수부로 올림: ceil()
select ceil(123.456) as su;
select ceil(123.4123456) as su;

-- 무조건 소수 이하내림 - 정수부로 표시 (floor)
select floor(123.456) as su;
select floor(123.456) as su;

-- 나머지 mod()
select mod(10,3);
select  floor(10/3), mod(10,3);
select  floor(10/3) as mok, mod(10,3) as na;

-- max랑은 다른 것이다.  <-집계함수에 사용
-- 내가 넣은 수에서 찾아줌
select greatest(15,162,12,01,-1) as max;
select least(15,162,12,01,-1) as max;

-- 정수화로 바꿔준다. unsigned 정수화한다.
select cast('159.258' as unsigned);
select cast('154.258' as unsigned);

-- 문자만을 빼온다.
select cast('159.258' as char(1));
select cast('159.258' as char(3));
select cast('asdfsd' as char(3));

-- 정수를 문자화
select convert(12345, char);

-- 정수형식으로 표현된 날짜:()
select(20260917);
select convert(20260917, date);
select convert(2026917, date);

-- 문자함수
-- 문자열의 길이: length()
select ('seoul');
select length('seoul') as len;

-- 대문자(upper) 소문자(lower)변환
select ('sEoUl');
select upper('sEoUl');
select lower('sEoUl');

-- 문자열 발췌: substring()
select  '1234567980' as 위치값;
select  substring('1234567980', 1,5) as 위치값;
select  substring('1234567980', 2,4) as 위치값;
select  substring('1234567980',5) as 위치값;
select  substring('1234567980',-5) as 위치값;

-- 자바: 문자열.함수 // DB: 함수.문자열

select substring(now(),1,10);	-- 날짜 출력
select substring(now(),11);		-- 시:분:초
select substring(now(),-5);		-- 분:초

-- 특정문자의 유무? indexOf() -> instr()
select instr('welcome to Korea!!!','o');
select instr('welcome to Korea!!!','x');
select instr('welcome to Korea!!!','kor');

-- 지정된 자리수부터 이후문자를 모두 버린다.: substring_index()
select substring_index('ab.cd.efg','.',2);

-- 왼쪽(오른쪽)부터 발췌
select left('welcome to Korea!!!',5);
select right('welcome to Korea!!!',5);

-- 중간거 발췌:mid()
select mid('welcome to Korea!!!',3 , 5);

-- 문자열 치환? replace()
select replace("welcome to Korea!!",'Korea','USA');
select replace("welcome to Korea!!",' ','');

-- trim
select ("     welcome to Korea!!   ");
select trim("     welcome to Korea!!   ");
select concat("aaa",trim("     welcome to Korea!!   "),"bbb");
select concat("aaa","     welcome to Korea!!   ","bbb");

-- repeat
select repeat('*',50);
select repeat('abc/', 10);

-- 내가 원하는 자리에 몇개까지 들어가라.
select insert('가나다라마나사아',2,3,'***');
select insert('가나다라마나사아',2,3,'*');

-- 날짜 함수
select now();
select year(now());
select month(now());
select day(now());	

-- 몇년-몇월-몇칠
select concat(year(now()),'년',month(now()),'월',day(now()),'일');

-- 날짜형식지정: date_format()
-- 년도2자리(y), 년도 4자리(Y), m(월), d(일), M(문자로), H(시간-24제), i(분), s(초)
 
select date_format(now(),'%y-%m-%d');
select date_format(now(),'%Y-%m-%d');
select date_format(now(),'%y-%M-%d');
select date_format(now(),'%y-%m-%D %H:%i:%s');  -- 24시
select date_format(now(),'%y-%m-%D %h:%i:%s');  -- 12시
 
 -- 날짜 연산: date_add(), to_days(), datediff()
select date_add(now(), interval 1 day);
select date_add(now(), interval -1 day);
select date_add(now(), interval 0 day);

 select date_add('2026-1-1', interval 31 day);
 select name,ipsail from insa;
 
 select name, date_add(ipsail, interval 30 day) from insa;
 select name, date_add(ipsail, interval 3 month) from insa;
 
 select name, to_days(now()) - to_days(ipsail) from insa;
 
 -- 해당 월의 마지막 일자 구하기: last_day()
 select last_day(now());
 select last_day('2026-2-7');
 -- 날짜 비교
 select name, datediff(now(), ipsail) from insa;
 
 