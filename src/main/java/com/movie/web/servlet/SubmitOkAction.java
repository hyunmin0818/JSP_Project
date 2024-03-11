package com.movie.web.servlet;

import com.movie.web.action.Action;

import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.UserDTO;

import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class SubmitOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String userid = req.getParameter("userid");
	    String userpassword = req.getParameter("userpassword");
		
	    UserDAO udao = new UserDAO();
		UserDTO userInfo = udao.getUserInfo(userid);
        ActionForward forward = new ActionForward();
        // 사용자로부터 입력받은 아이디와 비밀번호
      
        
        HttpSession session = req.getSession();
        session.setAttribute("userinfo", userid);

        System.out.println("값 받아오기 성공"); // 값 받아오기 여부 확인용

        forward.setRedirect(false); // redirect
        
        // MemberDAO의 login 메서드를 사용하여 로그인 여부 확인
        if (udao.submit(userid, userpassword)) {
            // 로그인 성공
        	if (userInfo != null) {
        	    // 사용자 정보가 존재하는 경우
        	    // 이후 필요한 로직을 수행
        		forward.setPath("/movie/html/loginOk_index.jsp?userid="+userid);
        		session.getAttribute(userid);
        	} else {
        	    // 사용자 정보가 존재하지 않는 경우
        	    // 이에 대한 처리를 수행
        	}
        	
        
            
        } else {
			forward.setPath("/movie/html/login.jsp?flag=false");
		}

       
		return forward;
	}
	
}
