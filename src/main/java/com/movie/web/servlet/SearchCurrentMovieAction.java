package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchCurrentMovieAction implements Action{

	   @Override
	   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	      ActionForward forward = new ActionForward();
	      
	      forward.setRedirect(false);
	      forward.setPath("/movie/html/categories.jsp");
	      return forward;
	   }

	}
