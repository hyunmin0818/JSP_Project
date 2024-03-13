package com.movie.web.servlet;

import java.util.List;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.MovieDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchMovieInfoAction implements Action{

	   @Override
	   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	      
	      MovieDAO movieDAO = new MovieDAO();
	        List<MovieDAO> movies = movieDAO.searchMovies(request.getParameter("searchQuery"));
	        
	        // 검색 결과를 request 속성에 저장
	        request.setAttribute("movies", movies);
	        
	        ActionForward forward = new ActionForward();
	        forward.setRedirect(false); // 포워딩 방식으로 페이지 전환
	        forward.setPath("/movieList.jsp"); // 검색 결과를 보여줄 JSP 페이지 경로 설정
	        
	        return forward;
	    }

	}
