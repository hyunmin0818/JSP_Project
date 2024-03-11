-- Active: 1710125344966@@127.0.0.1@3306@Project
CREATE TABLE movie (
    movie_id INT PRIMARY KEY,
    movieSeq INT,
    title VARCHAR(255),
    titleEng VARCHAR(255),
    titleOrg VARCHAR(255),
    prodYear INT,
    production_country VARCHAR(255),
    runtime INT,
    rating VARCHAR(50),
    type VARCHAR(50),
    genre VARCHAR(255),
    `use` VARCHAR(50), -- 변경된 열 이름
    releaseDate DATE,
    directorId INT,
    directorNm VARCHAR(255),
    actorId INT,
    actorEnNm VARCHAR(255),
    nation VARCHAR(255),
    company VARCHAR(255),
    plot TEXT,
    posterUrl VARCHAR(255),
    stillUrl VARCHAR(255),
    vodClass VARCHAR(50),
    vodUrl VARCHAR(255),
    screenArea VARCHAR(255),
    audiAcc INT,
    Awards1 TEXT,
    Awards2 TEXT
);

CREATE TABLE user (
    user_id INT PRIMARY KEY,
    userpassword VARCHAR(255),
    username VARCHAR(255),
    email VARCHAR(255),
    userphone VARCHAR(20),
    userbirth DATE
);

CREATE TABLE actor (
    actorid INT PRIMARY KEY,
    `name` VARCHAR(255),
    birth_date DATE
);

CREATE TABLE director (
    director_id INT PRIMARY KEY,
    `name` VARCHAR(255),
    birth_date DATE
);

CREATE TABLE review (
    review_id INT PRIMARY KEY,
    user_id INT,
    movie_id INT,
    rating INT,
    comment TEXT,
    review_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);

CREATE TABLE comment (
    comment_id INT PRIMARY KEY,
    user_id INT,
    review_id INT,
    content TEXT,
    comment_time DATETIME,
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (review_id) REFERENCES review(review_id)
);

ALTER TABLE movie
ADD CONSTRAINT fk_director
FOREIGN KEY (directorId)
REFERENCES director(director_id);

ALTER TABLE movie
ADD CONSTRAINT fk_actor
FOREIGN KEY (actorId)
REFERENCES actor(actorid);

CREATE TABLE movie_likes (
    user_id INT,
    movie_id INT,
    PRIMARY KEY (user_id, movie_id),
    FOREIGN KEY (user_id) REFERENCES user(user_id),
    FOREIGN KEY (movie_id) REFERENCES movie(movie_id)
);
