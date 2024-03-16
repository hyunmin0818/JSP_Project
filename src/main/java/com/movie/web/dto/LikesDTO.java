package com.movie.web.dto;

public class LikesDTO {
    private String user_Id;
    private String movieSeq;
    private int movieLike;
    
	public String getUser_Id() {
		return user_Id;
	}
	public void setUser_Id(String user_Id) {
		this.user_Id = user_Id;
	}
	public String getMovieSeq() {
		return movieSeq;
	}
	public void setMovieSeq(String movieSeq) {
		this.movieSeq = movieSeq;
	}
	public int getMovieLike() {
		return movieLike;
	}
	public void setMovieLike(int movieLike) {
		this.movieLike = movieLike;
	}

    
}
  