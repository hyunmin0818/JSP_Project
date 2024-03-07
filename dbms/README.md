# DBMS 릴레이션 매핑

## 감독 (Directors) 테이블

- **director_id (PK)**
- **name: 감독 이름**
- **birth_date: 감독 생년월일**

## 배우 (Actors) 테이블

- **actor_id (PK)**
- **actor: 배우 이름**
- **birth_date: 배우 생년월일**

## 영화 (Movies) 테이블

- **movie_id (PK)**
- **createDts: 제작시작 년도**
- **createDte: 제작종료 년도**
- **releaseDts: 개봉시작일**
- **releaseDte: 개봉종료일**
- **nation: 제작국가명**
- **company: 제작사명**
- **genre: 장르**
- **plot: 줄거리**
- **runtime: 상영시간**
- **type: 영화유형**
- **director: 감독명**
- **actor: 배우명**
- **staff: 스탭명**

## 사용자 (Users) 테이블

- **user_id (PK)**
- **userpassword: 사용자 비밀번호**
- **username: 사용자 이름**
- **email: 사용자 이메일**
- **userphone: 사용자 연락처**
- **userbirth: 사용자 생년월일**

## 운영자 (Operator) 테이블

- **operator_id (PK)**
- **username: 운영자 이름**
- **operator_password: 운영자 비밀번호**
- **email: 운영자 이메일**
- **operator_phone: 운영자 연락처**

## 리뷰 (Reviews) 테이블

- **review_id (PK)**
- **user_id (FK): Users 릴레이션의 외래키 (사용자 정보 연결)**
- **movie_id (FK): Movies 릴레이션의 외래키 (영화 정보 연결)**
- **operator_id: Operator 릴레이션의 외래키 (운영자 정보 연결)**
- **rating: 평점**
- **comment: 리뷰 내용**
- **review_time: 리뷰 작성 시간**

## 댓글 (Comments) 테이블

- **comment_id (PK)**
- **user_id (FK): Users 릴레이션의 외래키 (사용자 정보 연결)**
- **review_id (FK): Reviews 릴레이션의 외래키 (리뷰 정보 연결)**
- **operator_id: Operator 릴레이션의 외래키 (운영자 정보 연결)**
- **content: 댓글 내용**
- **comment_time: 댓글 작성 시간**

## API정보

- **https://www.kmdb.or.kr/info/api/apiDetail/6**
