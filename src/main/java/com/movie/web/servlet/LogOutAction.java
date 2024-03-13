package com.movie.web.servlet;

import org.apache.catalina.Session;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogOutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
//		HttpSession session = request.getAttribute(null);
//		session.invalidate();	// 세션값 날리기
		
		forward.setRedirect(true);
		forward.setPath("/movie/html/index.jsp");
		
		return forward;
	}

}
