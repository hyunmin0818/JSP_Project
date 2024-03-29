package com.movie.web.servlet;

import com.movie.web.action.Action;


import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class SubmitOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String user_id = request.getParameter("user_id");
	    String userpassword = request.getParameter("userpassword");
		
	    UserDAO udao = new UserDAO();
		UserDTO userInfo = udao.getUserInfo(user_id);
        ActionForward forward = new ActionForward();
        // 사용자로부터 입력받은 아이디와 비밀번호

        System.out.println("값 받아오기 성공"); // 값 받아오기 여부 확인용

        forward.setRedirect(true); // redirect
        
        // MemberDAO의 login 메서드를 사용하여 로그인 여부 확인
        if (udao.submit(user_id, userpassword)) {
        	System.out.println("로그인에 성공하였습니다.");
            // 로그인 성공
        	if (userInfo != null) {
        	    // 사용자 정보가 존재하는 경우
        	    // 이후 필요한 로직을 수행
        		HttpSession session = request.getSession(true);
                session.setAttribute("userinfo", userInfo);
                session.setAttribute("isLoggedIn", true);
        		forward.setPath("/movie/html/loginOk_index.jsp?user_id="+user_id);
        		System.out.println("Session logincheck: " + session.getAttribute("isLoggedIn"));
        		System.out.println("Session UserInfo: " + session.getAttribute("userinfo"));
        		session.setAttribute("loggedInUser_id", user_id); 
        		
        		// 세션 유지 시간 설정 (초 단위)
                session.setMaxInactiveInterval(1800); // 30분 유지

                // 이전 페이지의 URL을 가져와서 세션에 저장
                String prevURL = request.getHeader("referer");
                session.setAttribute("prevURL", prevURL);

        		
        	} else {
        	    // 사용자 정보가 존재하지 않는 경우
        	    // 이에 대한 처리를 수행
        		forward.setPath("/movie/html/join.jsp");
        	}

        } else {
			forward.setPath("/movie/html/login.jsp?flag=false");
			System.out.println("로그인 실패");
		}

		return forward;
	}
	
}
