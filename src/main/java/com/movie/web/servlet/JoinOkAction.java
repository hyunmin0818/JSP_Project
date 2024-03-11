package com.movie.web.servlet;


import com.movie.web.dao.UserDAO;

import com.movie.web.dto.UserDTO;
import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class JoinOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO udao = new UserDAO();
		UserDTO udto = new UserDTO();
		ActionForward forward = new ActionForward(); 
		
		udto.setUserid(request.getParameter("userid"));
		udto.setUserpassword(request.getParameter("userpassword"));
		udto.setUsername(request.getParameter("username"));
		udto.setUserphone(request.getParameter("userphone"));
		udto.setUserbirth(request.getParameter("userbirth"));
		udto.setEmail(request.getParameter("email"));
		
		
		if(udao.join(udto)) {	// 회원가입
			forward.setPath("/movie/html/login.jsp");
			forward.setRedirect(true);
		}else {
			forward.setPath("/movie/html/join.jsp");
		}
		return forward;

}
}