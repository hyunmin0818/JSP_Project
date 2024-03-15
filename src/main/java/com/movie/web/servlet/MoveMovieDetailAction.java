package com.movie.web.servlet;

import java.util.List;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.CommentDAO;
import com.movie.web.dto.CommentDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MoveMovieDetailAction implements Action{
	 
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		ActionForward forward = new ActionForward();
	     CommentDAO cdao = new CommentDAO();
	     
	     // request 객체에서 "movie_seq" 파라미터 값을 String 타입으로 가져옵니다.
	     String movie_seq = request.getParameter("movie_seq");
	     
	     // movie_seq를 이용해 해당 영화의 댓글 목록을 가져옵니다.
	     List<CommentDTO> commentList = cdao.getCommentList(movie_seq);

		
	
     
     // 댓글 목록을 request 객체에 속성으로 추가합니다.
     request.setAttribute("commentList", commentList);
     
     // 포워딩 설정: 리다이렉트 방식이 아니며, 댓글 목록이 표시될 페이지 경로를 지정합니다.
     forward.setRedirect(false); 
     forward.setPath("/movie/movie-details.jsp"); // 해당 영화의 상세 정보와 댓글 목록을 보여줄 JSP 페이지 경로
     
     return forward;
 }
}

