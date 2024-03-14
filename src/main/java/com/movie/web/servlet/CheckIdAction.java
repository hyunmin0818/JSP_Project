package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CheckIdAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDTO udto = new UserDTO();
		UserDAO udao = new UserDAO();

		String user_id = request.getParameter("user_id");
		
		if(udao.checkId(user_id)) {
			 forward.setPath("");
        } 

		
		return forward;
	}

}
