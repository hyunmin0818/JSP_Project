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
	        UserDAO udao = new UserDAO();
	        UserDTO udto = new UserDTO();

	     // 세션에서 userid 가져오기
	        HttpSession session = request.getSession(false); // 현재 세션 가져오기, 없으면 null 반환
	        String userid = null;
	        if (session != null) {
	            userid = (String) session.getAttribute("userinfo"); // 세션에서 "userinfo"로 저장된 userid 가져오기
	        }

	        // userid가 null이 아닐 경우(즉, 로그인된 상태일 경우) 사용자 정보를 데이터베이스에서 조회
	        if (userid != null) {
	            udto = udao.getUserInfo(userid); // 데이터베이스에서 사용자 정보 조회

	            // 조회된 사용자 정보를 request 객체에 설정
	            if (udto != null) { // 사용자 정보가 정상적으로 조회되었다면
	                request.setAttribute("userid", udto.getUserid());
	                request.setAttribute("email", udto.getEmail());
	                request.setAttribute("username", udto.getUsername());
	                request.setAttribute("userphone", udto.getUserphone());
	                request.setAttribute("userbirth", udto.getUserbirth());
	            }
	        } else {
	            // 세션에 userid가 없는 경우(로그인되지 않은 상태), 로그인 페이지로 리다이렉션
	            forward.setRedirect(true);
	            forward.setPath("/movie/html/login.jsp");
	            return forward;
	        }

	        forward.setRedirect(false);
	        forward.setPath("/movie/html/mypage.jsp?userid=" + userid);

	        return forward;
	    }
	}
