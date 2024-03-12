drop database bonobonomovie;
create database bonobonomovie;
use bonobonomovie;

-- Movie (영화) 테이블
CREATE TABLE movie (
    movie_id VARCHAR(255) PRIMARY KEY,     -- 영화 고유 ID
    movieSeq VARCHAR(255),                 -- 영화 순서
    title VARCHAR(255),                    -- 영화 제목
    titleEng VARCHAR(255),                 -- 영화 영문 제목
    titleOrg VARCHAR(255),                 -- 영화 원문 제목
    prodYear INT,                          -- 제작 연도
    production_country VARCHAR(255),       -- 제작 국가
    runtime INT,                           -- 상영 시간
    rating VARCHAR(50),                    -- 평점
    type VARCHAR(50),                      -- 영화 유형
    genre VARCHAR(255),                    -- 장르
    `use` VARCHAR(50),                     -- 사용 여부
    releaseDate DATE,                      -- 개봉일
    directorId INT,                        -- 감독 ID
    directorNm VARCHAR(255),               -- 감독 이름
    actorId INT,                           -- 배우 ID
    actorEnNm VARCHAR(255),                -- 배우 영문 이름
    nation VARCHAR(255),                   -- 국가
    company VARCHAR(255),                  -- 제작사
    plot TEXT,                             -- 줄거리
    posterUrl VARCHAR(255),                -- 포스터 URL
    stillUrl VARCHAR(255),                 -- 스틸컷 URL
    vodClass VARCHAR(50),                  -- VOD 등급
    vodUrl VARCHAR(255),                   -- VOD URL
    screenArea VARCHAR(255),               -- 상영 지역
    audiAcc INT,                           -- 누적 관객 수
    Awards1 TEXT,                          -- 수상 내역 1
    Awards2 TEXT,                          -- 수상 내역 2
    movie_likes TINYINT(2)                 -- 영화 좋아요 수
);

-- User (사용자) 테이블
CREATE TABLE user (
    user_id VARCHAR(255) PRIMARY KEY,      -- 사용자 ID
    userpassword VARCHAR(255),             -- 사용자 비밀번호
    username VARCHAR(255),                 -- 사용자 이름
    email VARCHAR(255),                    -- 이메일
    userphone VARCHAR(20),                 -- 전화번호
    userbirth DATE,                        -- 생년월일
    movie_like TINYINT(1)                  -- 영화 좋아요 여부
);

-- Operator (운영자) 테이블
CREATE TABLE operator (
    operator_id VARCHAR(255) PRIMARY KEY,  -- 운영자 ID
    operatorpassword VARCHAR(255),         -- 운영자 비밀번호
    operatorname VARCHAR(255),             -- 운영자 이름
    op_email VARCHAR(255),                 -- 운영자 이메일
    operatorphone VARCHAR(20)              -- 운영자 전화번호
);

-- Actor (배우) 테이블
CREATE TABLE actor (
    actorid INT PRIMARY KEY,               -- 배우 ID
    `name` VARCHAR(255),                   -- 배우 이름
    birth_date DATE                        -- 생년월일
);

-- Director (감독) 테이블
CREATE TABLE director (
    director_id INT PRIMARY KEY,           -- 감독 ID
    `name` VARCHAR(255),                   -- 감독 이름
    birth_date DATE                        -- 생년월일
);

-- Comment (댓글) 테이블
CREATE TABLE comment (	
    comment_id INT PRIMARY KEY,            -- 댓글 ID
    user_id VARCHAR(255),                  -- 사용자 ID (외래 키)
    operator_id VARCHAR(255),              -- 운영자 ID (외래 키)
    review_id INT,                         -- 리뷰 ID
    comment TEXT,                          -- 댓글 내용
    comment_time DATETIME,                 -- 댓글 작성 시간
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (operator_id) REFERENCES operator(operator_id)
);

-- Movie_likes (영화 좋아요) 테이블
CREATE TABLE movie_likes (
    user_id VARCHAR(255),                  -- 사용자 ID (외래 키)
    movie_id VARCHAR(255),                 -- 영화 ID (외래 키)
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

ALTER TABLE movie
ADD CONSTRAINT fk_director
FOREIGN KEY (directorId)
REFERENCES director(director_id);

ALTER TABLE movie
ADD CONSTRAINT fk_actor
FOREIGN KEY (actorId)
REFERENCES actor(actorid);

ALTER TABLE movie_likes
ADD CONSTRAINT fk_movie
FOREIGN KEY (movie_id)
REFERENCES movie(movie_id);
