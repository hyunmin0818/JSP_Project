package com.movie.web.dto;

public class UserDTO { 	// DB 수정되면 같이 수정...
	// movie 테이블
	private int movie_id;
	private int movieSeq;
	private String title;
	private String titleEng; // 제목 영문명
	private String titleOrg; // 원제
	private String prodYear;
	private String production_country; // 제작국가
	private int runtime;
	private String rating;
	private String type;
	private String genre;
	private String use; // ott & 극장 구분
	private int directorId;
	private String directorNm;
	private String actorId;
	private String actorNm;
	private String nation;
	private String company;
	private String plot;
	private String posterURL; // 포스터
	private String stillURL; // 스틸컷 URL
	private String vodClass; // 티저 예고편
	private String vodURL; // vod URL
	private String screenArea; // 관람지역
	private String audiAcc; // 누적 관람인원
	private String Awards1; // 영화제 수상내역
	private String Awards2; // 기타 수상내역
	// user 테이블
	private String userid;
	private String userpassword;
	private String username;
	private String email;
	private String userphone;
	private String userbirth;
	// actor 테이블
	private int actorid;
	private String name;
	private int birth_date;
	// director 테이블
	private int directorid;
	private String name2;
	private int birth_date2;
	// review 테이블
	private int review_id;
	private int user_id;
	private int movieid;
	private int user_rating;
	private String comment;

	public int getMovie_id() {
		return this.movie_id;
	}

	public void setMovie_id(int movie_id) {
		this.movie_id = movie_id;
	}

	public int getMovieSeq() {
		return this.movieSeq;
	}

	public void setMovieSeq(int movieSeq) {
		this.movieSeq = movieSeq;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTitleEng() {
		return this.titleEng;
	}

	public void setTitleEng(String titleEng) {
		this.titleEng = titleEng;
	}

	public String getTitleOrg() {
		return this.titleOrg;
	}

	public void setTitleOrg(String titleOrg) {
		this.titleOrg = titleOrg;
	}

	public String getProdYear() {
		return this.prodYear;
	}

	public void setProdYear(String prodYear) {
		this.prodYear = prodYear;
	}

	public String getProduction_country() {
		return this.production_country;
	}

	public void setProduction_country(String production_country) {
		this.production_country = production_country;
	}

	public int getRuntime() {
		return this.runtime;
	}

	public void setRuntime(int runtime) {
		this.runtime = runtime;
	}

	public String getRating() {
		return this.rating;
	}

	public void setRating(String rating) {
		this.rating = rating;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getGenre() {
		return this.genre;
	}

	public void setGenre(String genre) {
		this.genre = genre;
	}

	public String getUse() {
		return this.use;
	}

	public void setUse(String use) {
		this.use = use;
	}

	public int getDirectorId() {
		return this.directorId;
	}

	public void setDirectorId(int directorId) {
		this.directorId = directorId;
	}

	public String getDirectorNm() {
		return this.directorNm;
	}

	public void setDirectorNm(String directorNm) {
		this.directorNm = directorNm;
	}

	public String getActorId() {
		return this.actorId;
	}

	public void setActorId(String actorId) {
		this.actorId = actorId;
	}

	public String getActorNm() {
		return this.actorNm;
	}

	public void setActorNm(String actorNm) {
		this.actorNm = actorNm;
	}

	public String getNation() {
		return this.nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}

	public String getCompany() {
		return this.company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPlot() {
		return this.plot;
	}

	public void setPlot(String plot) {
		this.plot = plot;
	}

	public String getPosterURL() {
		return this.posterURL;
	}

	public void setPosterURL(String posterURL) {
	this.posterURL  = posterURL ;
	}

	public String getStillURL() {
		return this.stillURL;
	}

	public void setStillURL(String stillURL) {
		this.stillURL = stillURL;
	}

	public String getVodClass() {
		return this.vodClass;
	}

	public void setVodClass(String vodClass) {
		this.vodClass = vodClass;
	}

	public String getVodURL() {
	return this.vodURL;
	}

	public void setVodURL(String vodURL) {
	this.vodURL = vodURL;
	}

	public String getScreenArea() {
		return this.screenArea;
	}

	public void setScreenArea(String screenArea) {
		this.screenArea = screenArea;
	}

	public String getAudiAcc() {
	return this.audiAcc;
	}

	public void setAudiAcc(String audiAcc) {
	this.audiAcc = audiAcc;
	}

	public String getAwards1() {
	return this.Awards1;
	}

	public void setAwards1(String Awards1) {
	this.Awards1 = Awards1;
	}

	public String getAwards2() {
	return this.Awards2;
	}

	public void setAwards2(String Awards2) {
	this.Awards2 = Awards2;
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUserpassword() {
		return this.userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getUserphone() {
		return this.userphone;
	}

	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}

	public String getUserbirth() {
		return this.userbirth;
	}

	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}

	public int getActorid() {
		return this.actorid;
	}

	public void setActorid(int actorid) {
		this.actorid = actorid;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getBirth_date() {
		return this.birth_date;
	}

	public void setBirth_date(int birth_date) {
		this.birth_date = birth_date;
	}

	public int getDirectorid() {
		return this.directorid;
	}

	public void setDirectorid(int directorid) {
		this.directorid = directorid;
	}

	public String getName2() {
		return this.name2;
	}

	public void setName2(String name2) {
		this.name2 = name2;
	}

	public int getBirth_date2() {
		return this.birth_date2;
	}

	public void setBirth_date2(int birth_date2) {
		this.birth_date2 = birth_date2;
	}

	public int getReview_id() {
		return this.review_id;
	}

	public void setReview_id(int review_id) {
		this.review_id = review_id;
	}

	public int getUser_id() {
		return this.user_id;
	}

	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}

	public int getMovieid() {
		return this.movieid;
	}

	public void setMovieid(int movieid) {
		this.movieid = movieid;
	}

	public int getUser_rating() {
		return this.user_rating;
	}

	public void setUser_rating(int user_rating) {
		this.user_rating = user_rating;
	}

	public String getComment() {
		return this.comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}



	
	
	
}
