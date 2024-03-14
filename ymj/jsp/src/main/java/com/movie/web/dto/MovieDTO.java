package com.movie.web.dto;

public class MovieDTO {
	// movie 테이블
		private String movieSeq;	 // 영화 고유 ID
		private String title;	 	 // 영화 제목
		private String titleEng;	 // 제목 영문명
		private String titleOrg;	 // 원문 제목
		private int prodYear;		 // 제작 연도
		private String production_country; // 제작국가
		private int runtime;		 // 상영 시간
		private String rating;		 // 평점
		private String type;		 // 영화 유형
		private String genre;		 // 장르
		private String use; 		 // ott & 극장 구분
		private int directorId;		 // 감독id
		private String directorNm;	 // 감독 이름
		private String actorId;		 // 배우id
		private String actorEnNm;	 // 배우 영문이름 (한글이름 ?)
		private String nation;		 // 국가
		private String company;		 // 제작사
		private String plot;
		private String posterUrl; 	 // 포스터 Url
		private String stillUrl; 	 // 스틸컷 Url
		private String vodClass;	 // 티저 예고편
		private String vodUrl; 		 // vod URL
		private String screenArea; 	 // 관람지역
		private int audiAcc;	 	 // 누적 관람인원
		private String Awards1; 	 // 영화제 수상내역
		private String Awards2; 	 // 기타 수상내역
		private int movie_likes; 	 // 영화 좋아요
		
		public MovieDTO(String movieSeq, String title, String titleEng, String titleOrg, int prodYear,
				String production_country, int runtime, String rating, String type, String genre, String use,
				int directorId, String directorNm, String actorId, String actorEnNm, String nation, String company,
				String plot, String posterUrl, String stillUrl, String vodClass, String vodUrl, String screenArea,
				int audiAcc, String awards1, String awards2) {
			this.movieSeq = movieSeq;
			this.title = title;
			this.titleEng = titleEng;
			this.titleOrg = titleOrg;
			this.prodYear = prodYear;
			this.production_country = production_country;
			this.runtime = runtime;
			this.rating = rating;
			this.type = type;
			this.genre = genre;
			this.use = use;
			this.directorId = directorId;
			this.directorNm = directorNm;
			this.actorId = actorId;
			this.actorEnNm = actorEnNm;
			this.nation = nation;
			this.company = company;
			this.plot = plot;
			this.posterUrl = posterUrl;
			this.stillUrl = stillUrl;
			this.vodClass = vodClass;
			this.vodUrl = vodUrl;
			this.screenArea = screenArea;
			this.audiAcc = audiAcc;
			Awards1 = awards1;
			Awards2 = awards2;
		}
		
		
		public String getMovieSeq() {
			return movieSeq;
		}
		public void setMovieSeq(String movieSeq) {
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
		public int getProdYear() {
			return prodYear;
		}
		public void setProdYear(int prodYear) {
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
		public String getActorEnNm() {
			return actorEnNm;
		}
		public void setActorEnNm(String actorEnNm) {
			this.actorEnNm = actorEnNm;
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
		public String getPosterUrl() {
			return posterUrl;
		}
		public void setPosterUrl(String posterUrl) {
			this.posterUrl = posterUrl;
		}
		public String getStillUrl() {
			return stillUrl;
		}
		public void setStillUrl(String stillUrl) {
			this.stillUrl = stillUrl;
		}
		public String getVodClass() {
			return vodClass;
		}
		public void setVodClass(String vodClass) {
			this.vodClass = vodClass;
		}
		public String getVodUrl() {
			return vodUrl;
		}
		public void setVodUrl(String vodUrl) {
			this.vodUrl = vodUrl;
		}
		public String getScreenArea() {
			return screenArea;
		}
		public void setScreenArea(String screenArea) {
			this.screenArea = screenArea;
		}
		public int getAudiAcc() {
			return audiAcc;
		}
		public void setAudiAcc(int audiAcc) {
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
		public int getMovie_likes() {
			return movie_likes;
		}
		public void setMovie_likes(int movie_likes) {
			this.movie_likes = movie_likes;
		}
		
		
		
		
}
