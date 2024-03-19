# DBMS 릴레이션 매핑

## movie 테이블 (영화 정보)
- movieSeq VARCHAR(255): 영화의 고유 식별자 (Primary Key)
- title VARCHAR(255): 영화 제목
- titleEng VARCHAR(255): 영화의 영문 제목
- titleOrg VARCHAR(255): 영화의 원문 제목
- prodYear INT: 영화 제작 연도
- runtime INT: 영화의 상영 시간(분 단위)
- rating VARCHAR(50): 영화의 평점
- type VARCHAR(50): 영화의 유형
- genre VARCHAR(255): 영화 장르
- use VARCHAR(50): 영화 사용 여부
- releaseDate INT: 영화의 개봉일
- directorNm VARCHAR(255): 영화 감독의 이름
- actorEnNm VARCHAR(255): 주요 배우의 영문 이름
- nation VARCHAR(255): 영화의 국가
- company VARCHAR(255): 영화 제작사
- plot TEXT: 영화 줄거리
- posterUrl VARCHAR(255): 영화 포스터 이미지 URL
- stillUrl VARCHAR(255): 영화 스틸컷 이미지 URL
- Awards1 TEXT: 영화 수상 내역 1
- Awards2 TEXT: 영화 수상 내역 2
- movie_likes INT: 영화 좋아요 수 <br>(movie_likes 테이블과의 연결을 위한 Foreign Key)
- movieView INT: 영화 조회수

## user 테이블 (사용자 정보)
- user_id VARCHAR(20): 사용자의 고유 식별자 (Primary Key)
- userpassword VARCHAR(255): 사용자의 비밀번호
- username VARCHAR(255): 사용자 이름
- email VARCHAR(255): 사용자의 이메일 주소
- userphone VARCHAR(20): 사용자의 전화번호
- userbirth DATE: 사용자의 생년월일
- movie_like TINYINT(1): 사용자가 영화를 좋아하는지 여부
- movie_likes 테이블 (영화 좋아요 정보)
- movieLike TINYINT: 영화 좋아요 상태
- user_id VARCHAR(255): 사용자 ID<br> (user 테이블과의 Foreign Key)
- movieSeq VARCHAR(255): 영화 ID<br> (movie 테이블과의 Foreign Key)

## comment 테이블 (댓글 정보)
- user_id VARCHAR(255): 댓글을 작성한 사용자 ID<br> (user 테이블과의 Foreign Key)
- comment TEXT: 댓글 내용
- comment_time DATETIME: 댓글 작성 시간
- movieSeq VARCHAR(255): 댓글이 달린 영화의 ID <br>(movie 테이블과의 Foreign Key)
- comment_id INT: 댓글의 고유 식별자 (Primary Key)

## API정보

- **https://www.kmdb.or.kr/info/api/apiDetail/6**

# dbeaver 연결

- **Connect to a database > MySQL > URL > ServerHost > port >
  database > username > Password(Save password) > Test Connection > 완료**
- **URL: jdbc:mysql://database-2.c9iqq0es8tfn.ap-northeast-2.rds.amazonaws.com:3306/bonobonomovie**
- **ServerHost: database-2.c9iqq0es8tfn.ap-northeast-2.rds.amazonaws.com**
- **Database: bonobonomovie**
