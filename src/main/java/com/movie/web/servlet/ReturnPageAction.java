package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class ReturnPageAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
	     HttpSession session = request.getSession(false); // 기존의 세션 가져오기
	        ActionForward forward = new ActionForward();

	        if (session != null && session.getAttribute("userinfo") != null) {
	            // 세션에 사용자 정보가 존재하는 경우
	            System.out.println("이미 로그인한 사용자입니다.");
	            forward.setRedirect(true); // 리다이렉트 방식으로 페이지 전환
	            forward.setPath("/movie/html/loginOk_index.jsp"); // 로그인한 사용자를 위한 페이지로 이동
	        } else {
	            // 세션에 사용자 정보가 존재하지 않는 경우
	            System.out.println("로그인이 필요합니다.");
	            forward.setRedirect(true); // 리다이렉트 방식으로 페이지 전환
	            forward.setPath("/movie/html/login.jsp"); // 로그인 페이지로 이동
	        }

	        return forward;
	    }
	}
