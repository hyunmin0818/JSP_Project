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

public class SearchMovieInfoAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		// 파라미터 가져오기
        String parameter = request.getParameter("searchParameter");
        
        // MovieDAO 인스턴스 생성
        MovieDAO movieDAO = new MovieDAO();
        CommentDAO commentDAO = new CommentDAO();
        // 영화 검색
        List<MovieDTO> movieList = movieDAO.searchMovies(parameter);
        // 댓글 리스트 가져오기
        List<CommentDTO> commentList = commentDAO.getCommentList(parameter);
        
        // 검색 결과를 request에 저장
        request.setAttribute("movieList", movieList);
     // 댓글 리스트를 request에 저장
        request.setAttribute("commentList", commentList);
        
        
        // JSP 페이지로 포워딩
        ActionForward forward = new ActionForward();
        forward.setPath("movie/html/movie-detail.jsp?parameter="+parameter); // 검색 결과를 표시할 JSP 페이지 경로 설정필
        forward.setRedirect(false); // 포워딩이므로 false로 설정
        return forward;
	}

}
