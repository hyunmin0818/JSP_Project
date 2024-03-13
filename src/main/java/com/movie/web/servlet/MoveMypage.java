package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class MoveMypage implements Action{

	 @Override
	    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	        ActionForward forward = new ActionForward();
	        HttpSession session = request.getSession(false); 
	        UserDAO udao = new UserDAO();
	        UserDTO udto = new UserDTO();

	     // 세션에서 userinfo 객체 가져오기
	        UserDTO userInfo = null;
	        if (session != null) {
	            userInfo = (UserDTO) session.getAttribute("userinfo"); // 세션에서 "userinfo"로 저장된 UserDTO 객체 가져오기
	        }

	        // userInfo가 null이 아닐 경우(즉, 로그인된 상태일 경우) 사용자 정보를 사용
	        if (userInfo != null) {
	            System.out.println("정보 받아오기 성공!!");
	            // 조회된 사용자 정보를 request 객체에 설정
	            request.setAttribute("userid", userInfo.getUserid());
	            request.setAttribute("email", userInfo.getEmail());
	            request.setAttribute("username", userInfo.getUsername());
	            request.setAttribute("userphone", userInfo.getUserphone());
	            request.setAttribute("userbirth", userInfo.getUserbirth());
	        } else {
	            // 세션에 userinfo 객체가 없는 경우(로그인되지 않은 상태), 로그인 페이지로 리다이렉션
	            forward.setRedirect(true);
	            forward.setPath("/movie/html/login.jsp");
	            return forward;
	        }

	        forward.setRedirect(false);
	        forward.setPath("/movie/html/mypage.jsp");

	        return forward;
	    }
	}
