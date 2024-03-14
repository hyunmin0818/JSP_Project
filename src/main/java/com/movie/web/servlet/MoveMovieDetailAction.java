package com.movie.web.servlet;

import java.util.List;


import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.CommentDAO;
import com.movie.web.dao.MovieDAO;
import com.movie.web.dto.CommentDTO;
import com.movie.web.dto.MovieDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MoveMovieDetailAction implements Action{
	 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
	     CommentDAO cdao = new CommentDAO();
	     MovieDAO mdao = new MovieDAO();
	     
	     // request 객체에서 "movie_seq" 파라미터 값을 String 타입으로 가져옵니다.
	     String movieSeq = request.getParameter("movieSeq");
	     
	     // movie_seq를 이용해 해당 영화의 댓글 목록을 가져옵니다.
	     List<CommentDTO> commentList = cdao.getCommentList(movieSeq);
	     List<MovieDTO> movieList = mdao.getMovieInfo(movieSeq);
		
	
	     
	     // 댓글 목록을 request 객체에 속성으로 추가합니다.
	     request.setAttribute("commentList", commentList);
	     request.setAttribute("movieList", movieList);
	     
	     // 포워딩 설정: 리다이렉트 방식이 아니며, 댓글 목록이 표시될 페이지 경로를 지정합니다.
	     forward.setRedirect(false); 
	     forward.setPath("/movie/html/movie-details.jsp"); // 해당 영화의 상세 정보와 댓글 목록을 보여줄 JSP 페이지 경로
	     
	     return forward;
	 }
}

