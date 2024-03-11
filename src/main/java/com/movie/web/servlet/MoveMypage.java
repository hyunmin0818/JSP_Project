package com.movie.web.servlet;

import org.apache.catalina.Session;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MoveMypage implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		UserDTO udto = new UserDTO();
		
		String userid = request.getParameter("userid");
		request.setAttribute("userid", userid);
		
		
		forward.setRedirect(false);
		forward.setPath("/movie/html/mypage.jsp?userid="+userid);
		
		
		return forward;
		
		
	}

}
