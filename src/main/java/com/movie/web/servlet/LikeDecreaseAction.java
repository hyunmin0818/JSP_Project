package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.LikesDAO;
import com.movie.web.dto.LikesDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LikeDecreaseAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String movieSeq = request.getParameter("movieSeq");
		
		LikesDTO ldto = new LikesDTO();
		ldto.setMovieSeq(movieSeq);
		
		LikesDAO ldao = new LikesDAO();
		
		
		
		return null;
	}

}
