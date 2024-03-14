package com.movie.web.dto;

import java.time.LocalDateTime;

public class CommentDTO {
	private int comment_id;
	private String user_id;
	private String operator_id;
	private String comment;
    private LocalDateTime commentTime;
    
	public int getComment_id() {
		return comment_id;
	}
	public void setComment_id(int comment_id) {
		this.comment_id = comment_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getOperator_id() {
		return operator_id;
	}
	public void setOperator_id(String operator_id) {
		this.operator_id = operator_id;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public LocalDateTime getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(LocalDateTime commentTime) {
		this.commentTime = commentTime;
	}
	
    
}
