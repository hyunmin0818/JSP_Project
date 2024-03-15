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
        // 영화 관련 DAO 인스턴스 생성
        MovieDAO movieDAO = new MovieDAO();
        CommentDAO commentDAO = new CommentDAO();
        
        // ActionForward 인스턴스 생성
        ActionForward forward = new ActionForward();
        
        // 파라미터 분기 처리
        String searchParameter = request.getParameter("searchParameter");
        String movieSeq = request.getParameter("movieSeq");
        
        if (searchParameter != null) {
            // 영화 검색 로직
            List<MovieDTO> movieList = movieDAO.searchMovies(searchParameter);
            request.setAttribute("movieList", movieList);
            forward.setPath("/movie/html/movie-detail.jsp"); // 검색 결과 페이지
        } else if (movieSeq != null) {
            // 영화 상세 정보 및 댓글 로직
            List<MovieDTO> movieList = movieDAO.searchMovies(movieSeq);
            List<CommentDTO> commentList = commentDAO.getCommentList(movieSeq);
            request.setAttribute("movieList", movieList);
            request.setAttribute("commentList", commentList);
            forward.setPath("/movie/html/movie-details.jsp"); // 상세 정보 페이지
        } else {
            // 오류 처리 또는 기본 페이지 설정
            // 예: forward.setPath("/error.jsp");
        }
        
        forward.setRedirect(false); // 포워딩 방식 설정
        return forward;
    }
}

