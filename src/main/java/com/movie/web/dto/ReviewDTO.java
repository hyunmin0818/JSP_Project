package com.movie.web.dto;

public class ReviewDTO {
	// review 테이블
		private int review_id;
		private int user_id;
		private int movieid;
		private int user_rating;
		private String comment;
		
		public int getReview_id() {
			return review_id;
		}
		public void setReview_id(int review_id) {
			this.review_id = review_id;
		}
		public int getUser_id() {
			return user_id;
		}
		public void setUser_id(int user_id) {
			this.user_id = user_id;
		}
		public int getMovieid() {
			return movieid;
		}
		public void setMovieid(int movieid) {
			this.movieid = movieid;
		}
		public int getUser_rating() {
			return user_rating;
		}
		public void setUser_rating(int user_rating) {
			this.user_rating = user_rating;
		}
		public String getComment() {
			return comment;
		}
		public void setComment(String comment) {
			this.comment = comment;
		}
		
		
}
