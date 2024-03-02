-- 데이터베이스 생성
DROP DATABASE MusicJsp;
CREATE DATABASE MusicJsp;
USE MusicJsp;

-- 곡 정보 저장 테이블
CREATE TABLE Songs (
    song_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    album VARCHAR(255),
    genre VARCHAR(255),
    release_date DATE,
    lyrics TEXT
);

-- 사용자 정보 저장 테이블
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 재생목록 및 저장 테이블
CREATE TABLE Playlists (
    playlist_id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);

CREATE TABLE PlaylistSongs (
    playlist_id INT,
    song_id INT,
    song_order INT,
    PRIMARY KEY (playlist_id, song_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

CREATE TABLE PlayHistory (
    user_id INT,
    song_id INT,
    play_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

-- 음악 파일 관리 테이블
CREATE TABLE MusicFiles (
    song_id INT PRIMARY KEY,
    file_path VARCHAR(255) NOT NULL,
    file_format VARCHAR(10) NOT NULL,
    file_size INT,
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

-- 권한 및 보안 관리
CREATE TABLE UserRoles (
    role_id INT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL
);

CREATE TABLE UserRolesMapping (
    user_id INT,
    role_id INT,
    PRIMARY KEY (user_id, role_id),
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (role_id) REFERENCES UserRoles(role_id)
);

-- 평점관리 추가
CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    user_id INT,
    song_id INT,
    rating DECIMAL(2,1) NOT NULL,
    comment TEXT,
    rating_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);

-- 곡 테이블에 평균 평점 추가
ALTER TABLE Songs
ADD COLUMN average_rating DECIMAL(2,1);


-- 앨범 정보 표시 기능
CREATE TABLE Albums (
    album_id INT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    artist VARCHAR(255) NOT NULL,
    release_date DATE,
    genre VARCHAR(255),
    cover_image_url VARCHAR(255),
    description TEXT
);

CREATE TABLE AlbumSongs (
    album_id INT,
    song_id INT,
    track_number INT,
    PRIMARY KEY (album_id, song_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id)
);


-- 좋아요 표시 기능
CREATE TABLE Likes (
    like_id INT PRIMARY KEY,
    user_id INT,
    song_id INT,
    album_id INT,
    like_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (song_id) REFERENCES Songs(song_id),
    FOREIGN KEY (album_id) REFERENCES Albums(album_id)
);

-- 플레이리스트 공유 기능
CREATE TABLE SharedPlaylists (
    share_id INT PRIMARY KEY,
    user_id INT,
    playlist_id INT,
    shared_with_user_id INT,
    share_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (shared_with_user_id) REFERENCES Users(user_id)
);

-- 플레이리스트 곡 자동추가 (백엔드 구현 필요)
CREATE TABLE PlaylistRules (
    rule_id INT PRIMARY KEY,
    playlist_id INT,
    genre VARCHAR(255),
    artist_id INT,
    rule_type ENUM('include', 'exclude') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (playlist_id) REFERENCES Playlists(playlist_id),
    FOREIGN KEY (artist_id) REFERENCES Artists(artist_id)
);
