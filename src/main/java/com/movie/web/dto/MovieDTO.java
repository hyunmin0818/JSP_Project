package com.movie.web.dto;

public class MovieDTO {
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
		
		
		public int getMovie_id() {
			return movie_id;
		}
		public void setMovie_id(int movie_id) {
			this.movie_id = movie_id;
		}
		public int getMovieSeq() {
			return movieSeq;
		}
		public void setMovieSeq(int movieSeq) {
			this.movieSeq = movieSeq;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getTitleEng() {
			return titleEng;
		}
		public void setTitleEng(String titleEng) {
			this.titleEng = titleEng;
		}
		public String getTitleOrg() {
			return titleOrg;
		}
		public void setTitleOrg(String titleOrg) {
			this.titleOrg = titleOrg;
		}
		public String getProdYear() {
			return prodYear;
		}
		public void setProdYear(String prodYear) {
			this.prodYear = prodYear;
		}
		public String getProduction_country() {
			return production_country;
		}
		public void setProduction_country(String production_country) {
			this.production_country = production_country;
		}
		public int getRuntime() {
			return runtime;
		}
		public void setRuntime(int runtime) {
			this.runtime = runtime;
		}
		public String getRating() {
			return rating;
		}
		public void setRating(String rating) {
			this.rating = rating;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getGenre() {
			return genre;
		}
		public void setGenre(String genre) {
			this.genre = genre;
		}
		public String getUse() {
			return use;
		}
		public void setUse(String use) {
			this.use = use;
		}
		public int getDirectorId() {
			return directorId;
		}
		public void setDirectorId(int directorId) {
			this.directorId = directorId;
		}
		public String getDirectorNm() {
			return directorNm;
		}
		public void setDirectorNm(String directorNm) {
			this.directorNm = directorNm;
		}
		public String getActorId() {
			return actorId;
		}
		public void setActorId(String actorId) {
			this.actorId = actorId;
		}
		public String getActorNm() {
			return actorNm;
		}
		public void setActorNm(String actorNm) {
			this.actorNm = actorNm;
		}
		public String getNation() {
			return nation;
		}
		public void setNation(String nation) {
			this.nation = nation;
		}
		public String getCompany() {
			return company;
		}
		public void setCompany(String company) {
			this.company = company;
		}
		public String getPlot() {
			return plot;
		}
		public void setPlot(String plot) {
			this.plot = plot;
		}
		public String getPosterURL() {
			return posterURL;
		}
		public void setPosterURL(String posterURL) {
			this.posterURL = posterURL;
		}
		public String getStillURL() {
			return stillURL;
		}
		public void setStillURL(String stillURL) {
			this.stillURL = stillURL;
		}
		public String getVodClass() {
			return vodClass;
		}
		public void setVodClass(String vodClass) {
			this.vodClass = vodClass;
		}
		public String getVodURL() {
			return vodURL;
		}
		public void setVodURL(String vodURL) {
			this.vodURL = vodURL;
		}
		public String getScreenArea() {
			return screenArea;
		}
		public void setScreenArea(String screenArea) {
			this.screenArea = screenArea;
		}
		public String getAudiAcc() {
			return audiAcc;
		}
		public void setAudiAcc(String audiAcc) {
			this.audiAcc = audiAcc;
		}
		public String getAwards1() {
			return Awards1;
		}
		public void setAwards1(String awards1) {
			Awards1 = awards1;
		}
		public String getAwards2() {
			return Awards2;
		}
		public void setAwards2(String awards2) {
			Awards2 = awards2;
		}
		
		
}
