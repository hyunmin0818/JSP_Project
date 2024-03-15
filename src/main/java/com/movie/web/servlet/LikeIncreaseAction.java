package com.movie.web.servlet;

import java.io.IOException;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.LikesDAO;
import com.movie.web.dto.LikesDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LikeIncreaseAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("UTF-8");
		
		
		
		return null;
	}

		
	}