package com.movie.web.dto;


public class UserDTO {

 	// DB 수정되면 같이 수정...완
	
	private String user_id;
	private String userpassword;
	private String username;
	private String email;
	private String userphone;
	private String userbirth;
	private int movie_like;
	
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserphone() {
		return userphone;
	}
	public void setUserphone(String userphone) {
		this.userphone = userphone;
	}
	public String getUserbirth() {
		return userbirth;
	}
	public void setUserbirth(String userbirth) {
		this.userbirth = userbirth;
	}
	public int getMovie_like() {
		return movie_like;
	}
	public void setMovie_like(int movie_like) {
		this.movie_like = movie_like;
	}
	
	
	
}
