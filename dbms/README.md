# DBMS 릴레이션 매핑

## movie (영화) 테이블

- **movieSeq (Primary Key): 영화 고유 ID**
- **title: 영화 제목**
- **titleEng: 영화 영문 제목**
- **titleOrg: 영화 원문 제목**
- **prodYear: 제작 연도**
- **production_country: 제작 국가**
- **runtime: 상영 시간**
- **rating: 평점**
- **type: 영화 유형**
- **genre: 장르**
- **use: 사용 여부**
- **releaseDate: 개봉일**
- **directorId (Foreign Key): 감독 ID (director 테이블의 directorId와 연결)**
- **directorNm: 감독 이름**
- **actorId (Foreign Key): 배우 ID (actor 테이블의 actorId와 연결)**
- **actorEnNm: 배우 영문 이름**
- **nation: 국가**
- **company: 제작사**
- **plot: 줄거리**
- **posterUrl: 포스터 URL**
- **stillUrl: 스틸컷 URL**
- **vodClass: 티저예고편**
- **vodUrl: VOD URL**
- **screenArea: 상영 지역**
- **audiAcc: 누적 관객 수**
- **Awards1: 수상 내역 1**
- **Awards2: 수상 내역 2**
- **movie_likes: 영화 좋아요 수 (movie_likes 테이블과 연결)**

## user (사용자) 테이블

- **user_id (Primary Key): 사용자 ID**
- **userpassword: 사용자 비밀번호**
- **username: 사용자 이름**
- **email: 이메일**
- **userphone: 전화번호**
- **userbirth: 생년월일**
- **movie_like: 영화 좋아요 여부 (movie_likes 테이블과 연결)**

## operator (운영자) 테이블

- **operator_id (Primary Key): 운영자 ID**
- **operatorpassword: 운영자 비밀번호**
- **operatorname: 운영자 이름**
- **op_email: 운영자 이메일**
- **operatorphone: 운영자 전화번호**

## actor (배우) 테이블

- **actorId (Primary Key): 배우 ID**
- **actor_name: 배우 이름**
- **birth_date: 생년월일**

## director (감독) 테이블

- **directorId (Primary Key): 감독 ID**
- **director_name: 감독 이름**
- **birth_date: 생년월일**

## comment (댓글) 테이블

- **comment_id (Primary Key): 댓글 ID**
- **user_id (Foreign Key): 사용자 ID (user 테이블의 user_id와 연결)**
- **operator_id (Foreign Key): 운영자 ID (operator 테이블의 operator_id와 연결)**
- **comment: 댓글 내용**
- **comment_time: 댓글 작성 시간**
- **movieSeq (Foreign Key): 영화 ID (movie 테이블의 movieSeq와 연결)**

## movie_likes (영화 좋아요) 테이블

- **user_id (Foreign Key): 사용자 ID (user 테이블의 user_id와 연결)**
- **movieSeq (Foreign Key): 영화 ID (movie 테이블의 movieSeq와 연결)**
- **(Primary Key): (user_id, movieSeq) 조합으로 사용자별 영화 좋아요 여부를 나타냄**

## API정보

- **https://www.kmdb.or.kr/info/api/apiDetail/6**

# dbeaver 연결

- **Connect to a database > MySQL > URL > ServerHost > port >
  database > username > Password(Save password) > Test Connection > 완료**
- **URL: jdbc:mysql://database-2.c9iqq0es8tfn.ap-northeast-2.rds.amazonaws.com:3306/bonobonomovie**
- **ServerHost: database-2.c9iqq0es8tfn.ap-northeast-2.rds.amazonaws.com**
- **Database: bonobonomovie**
