package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LogOutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		session.invalidate();	// 세션값 날리기
		
		forward.setRedirect(true);
		forward.setPath("/movie/html/index.jsp");
		
		return forward;
	}

}
