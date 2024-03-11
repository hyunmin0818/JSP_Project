package com.movie.web.servlet;

import com.movie.web.action.Action;

import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SubmitOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		
        UserDAO udao = new UserDAO();
        UserDTO udto = new UserDTO();
        ActionForward forward = new ActionForward();
        // 사용자로부터 입력받은 아이디와 비밀번호
        String userid = req.getParameter("userid");
        String userpw = req.getParameter("userpw");
        
       

        System.out.println("값 받아오기 성공"); // 값 받아오기 여부 확인용

        forward.setRedirect(true); // redirect

        // MemberDAO의 login 메서드를 사용하여 로그인 여부 확인
        if (udao.submit(userid, userpw)) {
            // 로그인 성공
            forward.setPath("/movie/html/loginOk_index.jsp");
        } else {
			forward.setPath("/movie/html/login2.jsp?flag=false");
		}

       
		return forward;
	}
	
}
