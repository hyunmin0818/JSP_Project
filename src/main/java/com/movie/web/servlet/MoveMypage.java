package com.movie.web.servlet;

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
		
		int usernum = Integer.parseInt(request.getParameter("usernum"));
		request.setAttribute("user", udao.getDetail("usernum"));
		
		forward.setRedirect(false);
		forward.setPath("/movie/html/mypage.jsp");
		
		
		return forward;
		
		
	}

}
