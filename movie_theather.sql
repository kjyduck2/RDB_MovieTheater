DROP DATABASE IF EXISTS MOVIE_THEATER;

CREATE DATABASE MOVIE_THEATER;
SET client_encoding = 'utf-8';

DROP TABLE IF EXISTS 지점, 상영관,
    영화정보, 영화관계자, 영화참여, 필모그래피, 상영정보,
    티켓판매, 좌석관리, 좌석예약,
    사원, 근태관리, 근무내역, 근무변경이력,
    매점상품, 상품판매, 결제상품목록 CASCADE;

DROP TYPE IF EXISTS 상영관종류, 결제방법, 결제경로,
    가능여부, 연령, 계약구분, 직급, 상품사이즈, 구매채널 CASCADE;

-----------------------------

CREATE TABLE 지점
(
    지점번호 SERIAL PRIMARY KEY,
    지점이름 VARCHAR(20) NOT NULL,
    지점주소 VARCHAR(50) NOT NULL,
    지점장명 VARCHAR(20) NOT NULL
);

INSERT INTO 지점 (지점이름, 지점주소, 지점장명)
VALUES ('홍대점', '서울특별시 마포구 동교동 양화로 147 , 7-12층(동교동, 아일렉스)', '김홍대');
INSERT INTO 지점 (지점이름, 지점주소, 지점장명)
VALUES ('고양스타필드점', '경기도 고양시 덕양구 고양대로 1955 스타필드고양 4층', '박고양');
INSERT INTO 지점 (지점이름, 지점주소, 지점장명)
VALUES ('대전점', '대전 서구 문정로 77 로데오타운 5층 메가박스 대전지점', '이꿈돌');
INSERT INTO 지점 (지점이름, 지점주소, 지점장명)
VALUES ('대전현대아울렛', '대전 유성구 테크노중앙로 123, 3층 (용산동, 현대프리미엄아울렛 대전점)', '최대식');

-- SELECT * FROM 지점;

-----------------------------

CREATE TYPE 상영관종류 AS ENUM ('일반', '멀티플렉스', '대박편안', '사운드맥스');

CREATE TABLE 상영관
(
    상영관번호 SERIAL PRIMARY KEY, -- 별도로 지점별 확인 가능한 상영관번호 테이블이 필요
    지점번호  INTEGER NOT NULL,
    상영관유형 상영관종류   NOT NULL,
    좌석수   INTEGER NOT NULL,
    FOREIGN KEY (지점번호) REFERENCES 지점 (지점번호)
);

INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '멀티플렉스', '200');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '멀티플렉스', '200');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '대박편안', '80');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '대박편안', '80');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (1, '대박편안', '80');

INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '멀티플렉스', '200');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '멀티플렉스', '200');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '멀티플렉스', '200');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (2, '사운드맥스', '300');

INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '일반', '227');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '멀티플렉스', '200');
INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수)
VALUES (3, '대박편안', '80');
-- INSERT INTO 상영관 (지점번호, 상영관유형, 좌석수) VALUES (4, '일반', '300');

-- SELECT * FROM 상영관;

-----------------------------

CREATE TABLE 영화정보 -- 개봉일, 종영일은 상영정보에서
(
    영화번호   SERIAL PRIMARY KEY,
    영화제목   VARCHAR(50)   NOT NULL,
    러닝타임   INTEGER       NOT NULL,
    제작사    VARCHAR(20),
    관람가능등급 INTEGER       NOT NULL,
    개봉일    DATE, -- optional 가능
    종영일    DATE, -- optional 가능
    장르     VARCHAR(30)   NOT NULL,
    줄거리    VARCHAR(1000) NOT NULL,
    UNIQUE (영화번호, 러닝타임)

);

INSERT INTO 영화정보 (러닝타임, 영화제목, 제작사, 관람가능등급, 개봉일, 장르, 줄거리)
VALUES (110, '삼진그룹 영어토익반', '롯데엔터테인먼트', 12, '2020-10-21', '드라마',
        '입사 8년차 동기인 말단 여직원들이 ‘삼진그룹 영어토익반’에 모인다! ' ||
        '실무 능력 퍼펙트, 현실은 커피 타기 달인인 생산관리3부 오지랖 ‘이자영’(고아성), ' ||
        '추리소설 마니아로 뼈 때리는 멘트의 달인 마케팅부 돌직구 ‘정유나’(이솜), 수학 올림피아드 우승 출신, ' ||
        '실체는 가짜 영수증 메꾸기 달인 회계부 수학왕 ‘심보람’(박혜수)은 대리가 되면 진짜 ‘일’을 할 수 있을 것이라는 희망에 부푼다. ' ||
        '내부고발이라도 하게? 나서지 마. 우리만 다쳐 잔심부름을 하러 간 공장에서 검은 폐수가 유출되는 것을 목격한 ‘자영’은 ' ||
        '‘유나’, ‘보람’과 함께 회사가 무엇을 감추고자 하는지, 결정적 증거를 찾으려 한다. 불가능해 보이는 싸움, ' ||
        '세 친구는 해고의 위험을 무릅쓰고 고군분투를 시작하는데… 아이 캔 두 잇, 유 캔 두 잇, 위 캔 두 잇! 회사와 맞짱 뜨는 용감한 세 친구!');

INSERT INTO 영화정보 (러닝타임, 영화제목, 제작사, 관람가능등급, 개봉일, 장르, 줄거리)
VALUES (101, 'Search', '소니픽처코리아', 12, '2018-08-29', '드라마',
        '목요일 저녁, 딸 마고에게 걸려온 부재중전화 3통 아빠 데이빗은 그 후 연락이 닿지 않는 딸이 실종됐음을 알게된다. ' ||
        '경찰의 조사는 본격적으로 시작되지만 결정적인 단서들이 나오지 않는 가운데, 실종된 날 밤 마고가 향하던 곳이 밝혀지며 새로운 사실들이 발견된다. ' ||
        '사건의 실마리를 찾은 곳은 다름 아닌 딸 마고의 노트북 구글, 유튜브, 페이스북 등 SNS에서 상상조차하지 못한 딸의 진실이 펼쳐지는데… ' ||
        '현실에서는 찾을 수 없는 딸의 흔적을 검색하다!');

INSERT INTO 영화정보 (러닝타임, 영화제목, 제작사, 관람가능등급, 개봉일, 장르, 줄거리)
VALUES (104, 'Get Out', '유니버설 픽처스', 15, '2017-05-17', '공포, 미스터리, 스릴러, 드라마',
        '흑인 남자가 백인 여자친구 집에 초대 받으면서 벌어지는 이야기');

INSERT INTO 영화정보 (러닝타임, 영화제목, 제작사, 관람가능등급, 개봉일, 장르, 줄거리)
VALUES (106, 'The Invisible Guest', '더블앤조이 픽처스', 15, '2017-09-21', '범죄, 미스터리, 스릴러',
        '의문의 습격으로 살해 당한 ‘로라’
        ‘아드리안’은 연인의 죽음에 절망하고, 범인은 흔적도 없이 사라졌다.

        유력한 용의자로 누명을 쓴 ‘아드리안’은 승률 100%의 변호사 ‘버지니아’를 선임한다.
        그리고 자신의 무죄를 입증하기 위해 고군분투하던 중
        과거 그와 ‘로라’가 은폐한 교통사고와 숨겨진 연관성을 찾게 되는데…

        남은 시간은 단 3시간, 사건을 재구성해 무죄를 입증해야 한다!');

INSERT INTO 영화정보 (러닝타임, 영화제목, 제작사, 관람가능등급, 장르, 줄거리)
VALUES (120, '승리호', '한국픽처스_임의데이터', 12, 'SF',
        '2092년, 지구는 병들고 우주 위성궤도에 인류의 새로운 보금자리인 UTS가 만들어졌다. ' ||
        '돈 되는 일이라면, 뭐든 하는 조종사 ‘태호’(송중기) 과거, 우주 해적단을 이끌었던 ‘장선장’(김태리) ' ||
        '갱단 두목이었지만 이제는 기관사가 된 ‘타이거 박’(진선규) 평생 이루고 싶은 꿈을 가진 작살잡이 로봇 ‘업동이’(유해진). ' ||
        '이들은 우주쓰레기를 주워 돈을 버는 청소선 ‘승리호’의 선원들이다. ' ||
        '“오지 마! 쳐다보지도 말고, 숨도 조심해서 쉬어. 엉겨 붙을 생각하지 마!” ' ||
        '어느날, 사고 우주정을 수거한 ‘승리호’는 그 안에 숨어있던 대량살상무기로 알려진 인간형 로봇 ‘도로시’를 발견한다. ' ||
        '돈이 절실한 선원들은 ‘도로시’를 거액의 돈과 맞바꾸기 위한 위험한 거래를 계획하는데… “비켜라, 이 무능한 것들아. 저건 내 거다!”');

INSERT INTO 영화정보 (러닝타임, 영화제목, 관람가능등급, 장르, 줄거리)
VALUES (135, '봉오동 전투', 15, '액션, 드라마',
        '임무는 단 하나! 달리고 달려, 일본군을 죽음의 골짜기로 유인하라!
        1919년 3.1운동 이후 봉오동 일대에서 독립군의 무장항쟁이 활발해진다.

        일본은 신식 무기로 무장한 월강추격대를 필두로 독립군 토벌 작전을 시작하고,
        독립군은 불리한 상황을 이겨내기 위해 봉오동 지형을 활용하기로 한다.

        항일대도를 휘두르는 비범한 칼솜씨의 해철(유해진)과 발 빠른 독립군 분대장 장하(류준열)
        그리고 해철의 오른팔이자 날쌘 저격수 병구(조우진)는
        빗발치는 총탄과 포위망을 뚫고 죽음의 골짜기로 일본군을 유인한다.

        계곡과 능선을 넘나들며 귀신같은 움직임과 예측할 수 없는 지략을 펼치는 독립군의 활약에
        일본군은 당황하기 시작하는데...

        1920년 6월, 역사에 기록된 독립군의 첫 승리
        봉오동 죽음의 골짜기에 묻혔던 이야기가 지금부터 시작된다.');

INSERT INTO 영화정보 (러닝타임, 영화제목, 관람가능등급, 장르, 줄거리)
VALUES (135, '말모이', 12, '드라마',
        '까막눈 판수, 우리말에 눈뜨다! vs 조선어학회 대표 정환, ‘우리’의 소중함에 눈뜨다!
        1940년대 우리말이 점점 사라져가고 있는 경성.
        극장에서 해고된 후 아들 학비 때문에 가방을 훔치다 실패한 판수.
        하필 면접 보러 간 조선어학회 대표가 가방 주인 정환이다.
        사전 만드는데 전과자에다 까막눈이라니!
        그러나 판수를 반기는 회원들에 밀려 정환은 읽고 쓰기를 떼는 조건으로 그를 받아들인다.
        돈도 아닌 말을 대체 왜 모으나 싶었던 판수는 난생처음 글을 읽으며 우리말의 소중함에 눈뜨고,
        정환 또한 전국의 말을 모으는 ‘말모이’에 힘을 보태는 판수를 통해 ‘우리’의 소중함에 눈뜬다.
        얼마 남지 않은 시간, 바짝 조여오는 일제의 감시를 피해 ‘말모이’를 끝내야 하는데…

        우리말이 금지된 시대, 말과 마음이 모여 사전이 되다');

INSERT INTO 영화정보 (러닝타임, 영화제목, 관람가능등급, 장르, 줄거리)
VALUES (115, '완벽한 타인', 15, '드라마, 코미디',
        '우리 게임 한 번 해볼까? 다들 핸드폰 올려봐
        저녁 먹는 동안 오는 모든 걸 공유하는 거야
        전화, 문자, 카톡, 이메일 할 것 없이 싹!

        오랜만의 커플 모임에서 한 명이 게임을 제안한다.
        바로 각자의 핸드폰을 테이블 위에 올려두고
        통화 내용부터 문자와 이메일까지 모두 공유하자고 한 것.
        흔쾌히 게임을 시작하게 된 이들의 비밀이 핸드폰을 통해 들통나면서
        처음 게임을 제안했던 것과는 전혀 다른 상상치 못한 결말로 흘러가는데….
        상상한 모든 예측이 빗나간다!');

-- SELECT * FROM 영화정보;

-----------------------------

CREATE TYPE 가능여부 AS ENUM ('Yes', 'No');

CREATE TABLE 영화관계자
(
    영화관계자고유번호 SERIAL PRIMARY KEY,
    활동명       VARCHAR(20) NOT NULL,
    국적        VARCHAR(20),
    출생년도      DATE,
    결혼유무      가능여부,
    본명        VARCHAR(20)
);

INSERT INTO 영화관계자 (활동명, 국적, 본명)
VALUES ('이종필', '한국', '이종필');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('고아성', '한국', '1992-08-10', '고아성');

INSERT INTO 영화관계자 (활동명, 출생년도, 본명)
VALUES ('이솜', '1990-01-30', '이소영');

INSERT INTO 영화관계자 (활동명, 출생년도, 본명)
VALUES ('박혜수', '1994-11-24', '박혜수');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('Aneesh Chaganty', 'USA', '1991-01-30', 'Aneesh Chaganty');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('John Cho', 'USA', '1972-06-16', '조요한');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('Debra Messing', 'USA', '1968-08-15', 'Debra Messing');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('Jordan Haworth Peele', 'USA', '1979-02-21', 'Jordan Haworth Peele');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('Daniel Kaluuya', 'UK', '1989-02-24', 'Daniel Kaluuya');

INSERT INTO 영화관계자 (활동명, 국적, 본명)
VALUES ('Oriol Paulo', 'Spain', 'Oriol Paulo');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('Mario Casas', 'Spain', '1986-06-12', 'Mario Casas Sierra');

INSERT INTO 영화관계자 (활동명, 본명)
VALUES ('조성희', '조성희');

INSERT INTO 영화관계자 (활동명, 국적, 본명)
VALUES ('송중기', '한국', '송중기');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('김태리', '한국', '1990-04-24', '김태리');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('진선규', '한국', '1977-09-13', '진선규');

INSERT INTO 영화관계자 (활동명, 국적, 출생년도, 본명)
VALUES ('유해진', '한국', '1970-01-04', '유해진');

-- SELECT * FROM 영화관계자;

-----------------------------

CREATE TABLE 영화참여 -- 역할도 코드성 데이터 (카테고리열) ex. 주연 vs 주연배우
(
    영화번호      INTEGER,
    영화관계자고유번호 INTEGER,
    역할        VARCHAR(20),
    PRIMARY KEY (영화번호, 영화관계자고유번호, 역할),
    FOREIGN KEY (영화번호) REFERENCES 영화정보 (영화번호),
    FOREIGN KEY (영화관계자고유번호) REFERENCES 영화관계자 (영화관계자고유번호)
);

INSERT INTO 영화참여
VALUES (1, 1, '감독');
INSERT INTO 영화참여
VALUES (1, 2, '주연배우');
INSERT INTO 영화참여
VALUES (1, 3, '주연배우');
INSERT INTO 영화참여
VALUES (1, 4, '주연배우');
INSERT INTO 영화참여
VALUES (2, 5, '감독');
INSERT INTO 영화참여
VALUES (2, 6, '주연배우');
INSERT INTO 영화참여
VALUES (2, 7, '주연배우');
INSERT INTO 영화참여
VALUES (3, 8, '감독');
INSERT INTO 영화참여
VALUES (3, 9, '주연배우');
INSERT INTO 영화참여
VALUES (4, 10, '감독');
INSERT INTO 영화참여
VALUES (4, 11, '주연배우');
INSERT INTO 영화참여
VALUES (5, 12, '감독');
INSERT INTO 영화참여
VALUES (5, 13, '주연배우');
INSERT INTO 영화참여
VALUES (5, 14, '주연배우');
INSERT INTO 영화참여
VALUES (5, 15, '주연배우');
INSERT INTO 영화참여
VALUES (5, 16, '주연배우');

INSERT INTO 영화참여
VALUES (6, 16, '주연배우');
INSERT INTO 영화참여
VALUES (7, 16, '주연배우');
INSERT INTO 영화참여
VALUES (8, 16, '주연배우');

-- SELECT * FROM 영화참여;

-----------------------------

-- CREATE TABLE 필모그래피
-- (
--     영화번호 INTEGER,
--     영화관계자고유번호 INTEGER,
--     FOREIGN KEY (영화번호) REFERENCES 영화정보 (영화번호),
--     FOREIGN KEY (영화관계자고유번호) REFERENCES 영화관계자 (영화관계자고유번호)
-- );
--
-- --유해진 : 봉오동 전투, 말모이, 완벽한 타인
-- INSERT INTO 필모그래피 VALUES (5, 16);
-- INSERT INTO 필모그래피 VALUES (6, 16);
-- INSERT INTO 필모그래피 VALUES (7, 16);
-- INSERT INTO 필모그래피 VALUES (8, 16);
--
--  SELECT * FROM 필모그래피;

-----------------------------

CREATE TABLE 상영정보
(
    영화번호  INTEGER,
    상영관번호 INTEGER,
    상영일자  DATE,
    상영회차  INTEGER,
    시작시간  TIME    NOT NULL,
    러닝타임  INTEGER NOT NULL,
    PRIMARY KEY (영화번호, 상영관번호, 상영일자, 상영회차),
    FOREIGN KEY (영화번호, 러닝타임) REFERENCES 영화정보 (영화번호, 러닝타임),
    FOREIGN KEY (상영관번호) REFERENCES 상영관 (상영관번호)
);

-- 삼진그룹 영어토익반 개봉일
INSERT INTO 상영정보
VALUES (1, 1, '2020-10-21', 1, '09:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 1, '2020-10-21', 2, '12:30:00', 110);
INSERT INTO 상영정보
VALUES (1, 1, '2020-10-21', 3, '15:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 1, '2020-10-21', 4, '19:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 1, '2020-10-21', 5, '22:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 5, '2020-10-21', 1, '09:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 5, '2020-10-21', 2, '12:30:00', 110);
INSERT INTO 상영정보
VALUES (1, 5, '2020-10-21', 3, '15:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 5, '2020-10-21', 4, '19:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 5, '2020-10-21', 5, '22:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 11, '2020-10-21', 1, '09:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 11, '2020-10-21', 2, '12:30:00', 110);
INSERT INTO 상영정보
VALUES (1, 11, '2020-10-21', 3, '15:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 11, '2020-10-21', 4, '19:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 11, '2020-10-21', 5, '22:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 14, '2020-10-21', 1, '09:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 14, '2020-10-21', 2, '12:30:00', 110);
INSERT INTO 상영정보
VALUES (1, 14, '2020-10-21', 3, '15:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 14, '2020-10-21', 4, '19:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 14, '2020-10-21', 5, '22:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 20, '2020-10-21', 1, '09:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 20, '2020-10-21', 2, '12:30:00', 110);
INSERT INTO 상영정보
VALUES (1, 20, '2020-10-21', 3, '15:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 20, '2020-10-21', 4, '19:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 20, '2020-10-21', 5, '22:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 31, '2020-10-21', 1, '09:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 31, '2020-10-21', 2, '12:30:00', 110);
INSERT INTO 상영정보
VALUES (1, 31, '2020-10-21', 3, '15:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 31, '2020-10-21', 4, '19:00:00', 110);
INSERT INTO 상영정보
VALUES (1, 31, '2020-10-21', 5, '22:00:00', 110);

-- SELECT * FROM 상영정보;

-----------------------------

CREATE TYPE 결제방법 AS ENUM ('카드', '현금');
CREATE TYPE 결제경로 AS ENUM ('인터넷', '창구');
CREATE TYPE 구매채널 AS ENUM ('앱', '티켓링크', '11번가');

CREATE TABLE 티켓판매
(
    판매번호     SERIAL PRIMARY KEY,
    지점번호     INTEGER   NOT NULL,
    영화번호     INTEGER   NOT NULL,
    상영관번호    INTEGER   NOT NULL,
    상영일자     DATE      NOT NULL,
    상영회차     INTEGER   NOT NULL,
    총금액      INTEGER   NOT NULL,
    결제수단     결제방법      NOT NULL,
    티켓구매채널   구매채널,                           --  구매대행경로, 인터넷판매일 경우에만 필요
    구매일시     TIMESTAMP NOT NULL,
    구매좌석수    INTEGER   NOT NULL,
    결제경로구분코드 결제경로      NOT NULL,
    발권일시     TIMESTAMP,                      -- 창구판매의 경우
    판매사원번호   INTEGER,                        -- 인터넷판매의 경우
    FOREIGN KEY (지점번호) REFERENCES 지점 (지점번호), -- 지점 참조 필요
    FOREIGN KEY (영화번호, 상영관번호, 상영일자, 상영회차) REFERENCES 상영정보 (영화번호, 상영관번호, 상영일자, 상영회차),
    UNIQUE (상영일자, 상영회차)
);

INSERT INTO 티켓판매 (지점번호, 영화번호, 상영관번호, 상영일자, 상영회차, 총금액, 결제수단, 티켓구매채널, 구매일시, 구매좌석수, 결제경로구분코드, 발권일시, 판매사원번호)
VALUES (1, 1, 1, '2020-10-21', 1, 18000, '카드', '앱', '2020-10-19 19:11:23', 3, '인터넷', '2020-10-21 08:40:11', 1);

INSERT INTO 티켓판매 (지점번호, 영화번호, 상영관번호, 상영일자, 상영회차, 총금액, 결제수단, 구매일시, 구매좌석수, 결제경로구분코드, 발권일시, 판매사원번호)
VALUES (1, 1, 1, '2020-10-21', 3, 160000, '카드', '2020-10-21 11:11:11', 20, '창구', '2020-11-11 11:11:51', 1);

-- SELECT * FROM 티켓판매;

-----------------------------

CREATE TABLE 좌석관리
(
    상영관번호  INTEGER,
    -- 좌석번호   SERIAL PRIMARY KEY,
    좌석번호   VARCHAR(10),
    판매가능여부 가능여부 NOT NULL, -- 예약과 관계없이 --코로나..예약이 안되도 불가능한 좌석 설정 필요
    FOREIGN KEY (상영관번호) REFERENCES 상영관 (상영관번호),
    PRIMARY KEY (상영관번호, 좌석번호)
);

INSERT INTO 좌석관리
VALUES (1, 'A-1', 'No');
INSERT INTO 좌석관리
VALUES (1, 'A-2', 'No');
INSERT INTO 좌석관리
VALUES (1, 'A-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'A-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'A-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'A-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'A-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'A-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'A-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'A-10', 'No');
INSERT INTO 좌석관리
VALUES (1, 'A-11', 'No');
INSERT INTO 좌석관리
VALUES (1, 'B-1', 'No');
INSERT INTO 좌석관리
VALUES (1, 'B-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'B-11', 'No');
INSERT INTO 좌석관리
VALUES (1, 'C-1', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'C-11', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-1', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'D-11', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-1', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'E-11', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-1', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'F-11', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-1', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'G-11', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-1', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'H-11', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-1', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'I-11', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-1', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-2', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-3', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-4', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-5', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-6', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-7', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-8', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-9', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-10', 'Yes');
INSERT INTO 좌석관리
VALUES (1, 'J-11', 'Yes');

-- SELECT * FROM 좌석관리;

-----------------------------

CREATE TYPE 연령 AS ENUM ('성인', '청소년', '어린이');

CREATE TABLE 좌석예약
(
    판매번호  INTEGER,
    상영관번호 INTEGER,
    좌석번호  VARCHAR(10),
    관람객연령 연령,
    PRIMARY KEY (판매번호, 상영관번호, 좌석번호),
    FOREIGN KEY (상영관번호, 좌석번호) REFERENCES 좌석관리 (상영관번호, 좌석번호),
    FOREIGN KEY (판매번호) REFERENCES 티켓판매 (판매번호)
);

INSERT INTO 좌석예약
VALUES (1, 1, 'F-5', '성인');
INSERT INTO 좌석예약
VALUES (1, 1, 'F-6', '성인');
INSERT INTO 좌석예약
VALUES (1, 1, 'F-7', '성인');

INSERT INTO 좌석예약
VALUES (2, 1, 'E-2', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-3', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-4', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-5', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-6', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-7', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-8', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-9', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-10', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'E-11', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-2', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-3', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-4', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-5', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-6', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-7', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-8', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-9', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-10', '청소년');
INSERT INTO 좌석예약
VALUES (2, 1, 'F-11', '청소년');

-- SELECT * FROM 좌석예약;

-----------------------------

CREATE TYPE 계약구분 AS ENUM ('정규직','계약직', '파트타임');
CREATE TYPE 직급 AS ENUM ('매니저','사원');

CREATE TABLE 사원
(
    사원번호   SERIAL PRIMARY KEY,
    이름     VARCHAR(20) NOT NULL,
    주소     VARCHAR(50) NOT NULL,
    연락처    VARCHAR(30) NOT NULL,
    지점번호   INTEGER     NOT NULL,
    계약구분코드 계약구분        NOT NULL,

    직급     직급,
    입사일자   DATE,
    연봉     INTEGER,

    시급     INTEGER,
    근무조    VARCHAR(10),
    근무시간   INTEGER,

    FOREIGN KEY (지점번호) REFERENCES 지점 (지점번호)
);

INSERT INTO 사원 (이름, 주소, 연락처, 지점번호, 계약구분코드, 직급, 입사일자, 연봉)
VALUES ('박찬열', '대전 한밭대로', '010-2758-0284', 4, '정규직', '사원', '2019-07-01', '3000');

INSERT INTO 사원 (이름, 주소, 연락처, 지점번호, 계약구분코드, 직급, 입사일자, 연봉)
VALUES ('이성원', '대전 덕명로', '010-5539-0284', 4, '정규직', '사원', '2020-07-01', '2000');

INSERT INTO 사원 (이름, 주소, 연락처, 지점번호, 계약구분코드, 직급, 입사일자, 연봉)
VALUES ('강아지', '대전 봉명로', '010-3232-5683', 4, '정규직', '매니저', '2019-01-01', '2800');

INSERT INTO 사원 (이름, 주소, 연락처, 지점번호, 계약구분코드, 시급, 근무조, 근무시간)
VALUES ('강정윤', '대전 문지로', '010-1234-4566', 4, '계약직', 9000, '티켓확인조', '33');

INSERT INTO 사원 (이름, 주소, 연락처, 지점번호, 계약구분코드, 시급, 근무조, 근무시간)
VALUES ('강민우', '대전 문지로', '010-1234-4566', 4, '계약직', 9000, '마감청소조', '48');

INSERT INTO 사원 (이름, 주소, 연락처, 지점번호, 계약구분코드, 시급, 근무조, 근무시간)
VALUES ('강샛별', '대전 신갈마로', '010-1423-4682', 4, '파트타임', 9000, '마감청소조', '48');

-- SELECT * FROM 사원;

-----------------------------

CREATE TABLE 근태관리
(
    사원번호 INTEGER,
    날짜   DATE,
    부재사유 VARCHAR(200) NOT NULL,
    PRIMARY KEY (사원번호, 날짜),
    FOREIGN KEY (사원번호) REFERENCES 사원 (사원번호)
);

INSERT INTO 근태관리
VALUES (3, '2020-12-24', '크리스마스 이브에 누가 일을 시켜요');
INSERT INTO 근태관리
VALUES (5, '2020-12-25', '크리스마스에는 일하지 않겠어요');
INSERT INTO 근태관리
VALUES (4, '2020-12-10', '대학원 세미나');
INSERT INTO 근태관리
VALUES (4, '2020-12-11', '대학원 수업');

-- SELECT * FROM 근태관리;

-----------------------------

CREATE TABLE 근무내역 -- 근무조 코드테이블
(
    사원번호   INTEGER,
    근무시작시간 TIMESTAMP,
    근무종료시간 TIMESTAMP,
    날짜     DATE NOT NULL,
    근무조    VARCHAR(10),
    PRIMARY KEY (사원번호, 근무시작시간),
    FOREIGN KEY (사원번호) REFERENCES 사원 (사원번호)
);

INSERT INTO 근무내역
VALUES (4, '2020-12-24 08:00:00', '2020-12-24 16:00:24', '2020-12-24', '티켓확인조');
INSERT INTO 근무내역
VALUES (4, '2020-12-24 16:04:10', '2020-12-25 00:00:21', '2020-12-24', '마감청소조');
INSERT INTO 근무내역
VALUES (4, '2020-12-25 08:01:08', '2020-12-25 15:59:49', '2020-12-25', '티켓확인조');
INSERT INTO 근무내역
VALUES (4, '2020-12-25 16:04:10', '2020-12-26 00:00:21', '2020-12-25', '마감청소조');

-- SELECT * FROM 근무내역;

-----------------------------

CREATE TABLE 근무변경이력
(
    사원번호  INTEGER,
    근무시작일 TIMESTAMP,
    근무종료일 TIMESTAMP   NOT NULL,
    근무조   VARCHAR(10) NOT NULL,
    PRIMARY KEY (사원번호, 근무시작일),
    FOREIGN KEY (사원번호) REFERENCES 사원 (사원번호)
);

INSERT INTO 근무변경이력
VALUES (4, '2020-12-24 08:00:00', '2020-12-24 16:00:24', '티켓확인조');
INSERT INTO 근무변경이력
VALUES (4, '2020-12-24 16:04:10', '2020-12-25 00:00:21', '마감청소조');
INSERT INTO 근무변경이력
VALUES (4, '2020-12-25 08:01:08', '2020-12-25 15:59:49', '티켓확인조');
INSERT INTO 근무변경이력
VALUES (4, '2020-12-25 16:04:10', '2020-12-26 00:00:21', '마감청소조');
INSERT INTO 근무변경이력
VALUES (4, '2020-12-26 00:00:21', '9999-12-31 23:59:59', '티켓확인조');

-- SELECT * FROM 근무변경이력;

-----------------------------

CREATE TYPE 상품사이즈 AS ENUM ('mini','regular','family');

CREATE TABLE 매점상품
(
    -- 지점번호 INTEGER     NOT NULL, --
    상품번호 SERIAL,
    상품명  VARCHAR(10) NOT NULL,
    사이즈  상품사이즈,
    단가   INTEGER,
    PRIMARY KEY (상품번호, 단가) -- ,
    -- FOREIGN KEY (지점번호) REFERENCES 지점 (지점번호)
);

INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('오리지널 팝콘', 'mini', 5000);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('오리지널 팝콘', 'regular', 6700);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('오리지널 팝콘', 'family', 8500);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('카라멜 팝콘', 'mini', 5500);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('카라멜 팝콘', 'regular', 7200);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('카라멜 팝콘', 'family', 9000);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('콜라', 'mini', 2200);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('콜라', 'regular', 2500);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('사이다', 'mini', 2200);
INSERT INTO 매점상품 (상품명, 사이즈, 단가)
VALUES ('사이다', 'regular', 2500);
INSERT INTO 매점상품 (상품명, 단가)
VALUES ('토익 콤보', 9000);
INSERT INTO 매점상품 (상품명, 단가)
VALUES ('승리호 콤보', 9300);
INSERT INTO 매점상품 (상품명, 단가)
VALUES ('겨울왕국 콤보', 9000);
INSERT INTO 매점상품 (상품명, 단가)
VALUES ('좀비 콤보', 9300);

-- SELECT * FROM 매점상품;

-----------------------------
-- drop table 상품판매, 결제상품목록;
CREATE TABLE 상품판매
(
    상품판매번호 SERIAL PRIMARY KEY,
    지점번호   INTEGER   NOT NULL,
    판매일시   TIMESTAMP NOT NULL,
    수량     INTEGER   NOT NULL,
    총금액    INTEGER   NOT NULL,
    결제수단   결제방법      NOT NULL,
    FOREIGN KEY (지점번호) REFERENCES 지점 (지점번호)
);

INSERT INTO 상품판매 (지점번호, 판매일시, 수량, 총금액, 결제수단)
VALUES (1, '2020-11-10 12:01:32', 2, 18000, '카드');

-- SELECT * FROM 상품판매;

-----------------------------

CREATE TABLE 결제상품목록
(
    결제상품번호 INTEGER,
    상품판매번호 INTEGER,
    -- 판매수량   INTEGER NOT NULL,
    단가     INTEGER NOT NULL,
    PRIMARY KEY (결제상품번호, 상품판매번호),
    FOREIGN KEY (결제상품번호, 단가) REFERENCES 매점상품 (상품번호, 단가),
    FOREIGN KEY (상품판매번호) REFERENCES 상품판매 (상품판매번호)
);

INSERT INTO 결제상품목록
VALUES (11, 1, 9000);

-- SELECT * FROM 결제상품목록;

-----------------------------

---------------------------------------------------------------------------------------

-- Q1. 영화배우 유해진의 필모그래피는?
SELECT B.영화제목
FROM 영화참여 A, 영화정보 B
WHERE A.영화번호 = B.영화번호
    AND 영화관계자고유번호 = (SELECT 영화관계자고유번호
                     FROM 영화관계자
                     WHERE 활동명 = '유해진');

-- Q2. 영화 '승리호'와의 계약이 파기되었다. 관련 데이터를 업데이트 해보자.
--     - 전제 : 일단 티켓예매가 시작되면, 계약은 절대 파기하면 안된다

CREATE VIEW 승리호관계자 AS
(
SELECT 영화관계자고유번호
FROM 영화참여
WHERE 영화참여.영화번호 = (SELECT 영화번호 FROM 영화정보 WHERE 영화제목 = '승리호'));

SELECT *
FROM 승리호관계자;

DELETE
FROM 영화참여
    USING 영화참여 A, 승리호관계자 B
WHERE A.영화관계자고유번호 = B.영화관계자고유번호
    AND A.영화번호 = (SELECT 영화번호 FROM 영화정보 WHERE 영화제목 = '승리호');

-- DELETE
-- FROM 필모그래피
--     USING 승리호관계자 A, 필모그래피 B
-- WHERE A.영화관계자고유번호 = B.영화관계자고유번호
--   AND B.영화번호 = (SELECT 영화번호 FROM 영화정보 WHERE 영화제목 = '승리호');

DELETE
FROM 영화관계자
    USING 영화관계자 A, 승리호관계자 B
WHERE A.영화관계자고유번호 = B.영화관계자고유번호
  AND (SELECT COUNT(영화번호)
       FROM 승리호관계자 C,
            영화참여 D
       WHERE C.영화관계자고유번호 = B.영화관계자고유번호
             AND C.영화관계자고유번호 = D.영화관계자고유번호) = 1;

DELETE
FROM 영화정보
WHERE 영화제목 = '승리호';

-- 영화관 앱을 만들려고 한다.

-- Q3. 현재 상영중인 영화는?
--     - 전제 : 종영된 영화 상영일정은 기억하지 않는다. -> 종영일 삭제!!
SELECT DISTINCT 영화제목
FROM 영화정보 A,
     상영정보 B
WHERE A.영화번호 = B.영화번호;

-- Q4. 홍대점의 상영일정은?
SELECT A.영화제목, B.상영일자, B.상영회차, B.시작시간, C.상영관번호, C.상영관유형
FROM 영화정보 A,
     상영정보 B,
     상영관 C
WHERE A.영화번호 = B.영화번호
  AND B.상영관번호 = C.상영관번호
  AND C.지점번호 = (SELECT 지점번호 FROM 지점 WHERE 지점이름 = '홍대점');
-- 조인 vs 서브쿼리
-- 상영관번호가 지점마다 1번으로 시작하는 것이 좋을 듯

-- Q5. 좌석예약 서비스 시,
--     홍대점 일반상영관 1관 '삼진그룹 영어토익반' 개봉일(2020-10-21) 1회에 좌석예매 가능한 자리는? (예매불가능과, 이미 예매된 좌석 검색할 것)
SELECT 좌석번호
FROM 좌석관리
WHERE 좌석번호 NOT IN (SELECT DISTINCT A.좌석번호
                   FROM 좌석관리 A, 좌석예약 B, 티켓판매 C
                   WHERE A.상영관번호 = B.상영관번호 AND A.좌석번호 = B.좌석번호
                     AND A.상영관번호 IN (SELECT 상영관번호
                                       FROM 상영관
                                       WHERE 지점번호 = (SELECT 지점번호 FROM 지점 WHERE 지점이름 = '홍대점'))
                     AND B.판매번호 = C.판매번호
                     AND C.상영회차 = 1
                     AND C.상영일자 = '2020-10-21'
                   ORDER BY A.좌석번호);

-- Q6. 홍대점에서 '삼진그룹 영어토익반' 개봉일(2020-10-21)에 1회차로 예약한 티켓 취소 요청이 들어왔다. 티켓을 삭제하고 관련 데이터를 업데이트 해보자.
--     - update : 좌석을 예매 가능 좌석으로 만들어야 한다.

-- 이 질문에는 오류가 있다. " '삼진그룹 영어토익반' 개봉일(2020-10-21)에 1회차로 예약한 티켓 "은 한 두개가 아닐 수 있으므로, 티켓번호를 명시해야 한다.
-- 실제로 영화관에서 예매 취소 시, 멤버쉽 번호 기준 혹은 티켓번호 기준으로 한다.

SELECT *
-- DELETE
-- FROM 좌석예약
FROM 좌석예약 A,
     티켓판매 B,
     영화정보 C
WHERE A.판매번호 = B.판매번호
    AND C.영화제목 = '삼진그룹 영어토익반'
    AND B.상영일자 = C.개봉일
    AND B.상영회차 = 1;

SELECT *
-- DELETE
-- FROM 티켓판매
FROM 티켓판매 A,
     상영정보 B,
     영화정보 C
WHERE A.영화번호 = B.영화번호
  AND A.상영관번호 = B.상영관번호
  AND A.상영일자 = B.상영일자
  AND A.상영회차 = B.상영회차
  AND C.영화번호 = B.영화번호
  AND A.상영회차 = 1
  AND A.상영일자 = C.개봉일
  AND A.영화번호 = (SELECT 영화번호 FROM 영화정보 WHERE 영화제목 = '삼진그룹 영어토익반');


-- 영화관 대표 입장에서, 사원관리 및 매출관리가 필요하다.
-- Q7. '강정윤' 사원의 근태관리 이력을 살펴보자.
SELECT *
FROM 근태관리
WHERE 사원번호 = (SELECT 사원번호 FROM 사원 WHERE 이름 = '강정윤');

-- Q8. '강정윤' 사원은 열심히 일했다. 근무시간을 업데이트 해보자.
UPDATE 사원
SET 근무시간 = 50
WHERE 이름 = '강정윤';
-- 월급관리 따로 하고 싶다

-- Q9. 이번달 지점별 매출(티켓, 매점)은?
SELECT C.지점이름, SUM(A.총금액) + SUM(B.총금액) AS 월매출
FROM 티켓판매 A,
     상품판매 B,
     지점 C
WHERE C.지점번호 = A.지점번호
  AND B.지점번호 = C.지점번호
GROUP BY C.지점번호;

-- 방법1) 상품판매 테이블이 지점을 포함한다
-- 방법2) 상품판매 테이블과 티켓판매 테이블에 매출 테이블을 관계 엔티티로 생성

/*CREATE TABLE 월매출
(
    지점번호    INTEGER PRIMARY KEY,
    티켓판매_총액 INTEGER, -- integer 너무 작을 수 있음 (12억까지 표현 가능)
    상품판매_총액 INTEGER,
    FOREIGN KEY (지점번호) REFERENCES 지점 (지점번호)
);*/
