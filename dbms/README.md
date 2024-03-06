# DBMS 릴레이션 매핑

## 감독 (Directors) 테이블

- **director_id (PK)**
- **name: 감독 이름**
- **birth_date: 감독 생년월일**

## 배우 (Actors) 테이블

- **actor_id (PK)**
- **name: 배우 이름**
- **birth_date: 배우 생년월일**

## 영화 (Movies) 테이블

- **movie_id (PK)**
- **title_korean: 영화 한글 제목**
- **title_english: 영화 영문 제목**
- **movie_code: 영화 코드**
- **production_year: 제작 연도**
- **production_country: 제작 국가**
- **type: 영화 유형**
- **genre: 영화 장르**
- **production_status: 제작 상태**
- **director_id (FK): Directors 릴레이션의 외래키 (감독 정보 연결)**
- **production_company: 제작사**

## 사용자 (Users) 테이블

- **user_id (PK)**
- **userpassword: 사용자 비밀번호**
- **username: 사용자 이름**
- **email: 사용자 이메일**
- **userphone: 사용자 연락처**
- **userbirth: 사용자 생년월일**

## 리뷰 (Reviews) 테이블

- **review_id (PK)**
- **user_id (FK): Users 릴레이션의 외래키 (사용자 정보 연결)**
- **movie_id (FK): Movies 릴레이션의 외래키 (영화 정보 연결)**
- **rating: 평점**
- **comment: 리뷰 내용**
- **review_time: 리뷰 작성 시간**

## 댓글 (Comments) 테이블

- **comment_id (PK)**
- **user_id (FK): Users 릴레이션의 외래키 (사용자 정보 연결)**
- **review_id (FK): Reviews 릴레이션의 외래키 (리뷰 정보 연결)**
- **content: 댓글 내용**
- **comment_time: 댓글 작성 시간**

- `https://service-oriented-computing.netlify.app/`
