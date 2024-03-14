package com.movie.web.servlet;

import java.io.IOException;

import com.movie.web.action.ActionForward;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("*.ms")
public class UserFrontController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request,response);
	}
	protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		ActionForward forward = null;
	    
	    System.out.println("requestURI : " + requestURI);
		 
		// 세션 확인
	    HttpSession session = request.getSession(false); // 기존에 존재하는 세션 반환, 없으면 null 반환
	    // 조건확인할것 kjh
//	    boolean isLoggedIn = (session != null && session.getAttribute("userinfo") != null);
//
//	    if (!isLoggedIn && !requestURI.endsWith("login.ms") && !requestURI.endsWith("joinOk.ms")) {
//	        // 사용자가 로그인하지 않았고, 로그인 또는 회원가입 요청이 아닌 경우 로그인 페이지로 리다이렉트
//	    	response.sendRedirect("/login.ms");
//	        return;
//	    }
		switch (requestURI) {
		
		case "/SubmitOk.ms" : 
			forward = new SubmitOkAction().execute(request ,response);
			break;
		case "/movie/mypage.ms" : 
			forward = new MoveMypage().execute(request ,response);
			break;
		case "/movie/updateMypage.ms" :
			forward = new UpdateMyPageAction().execute(request ,response);
			break;
		case "/movie/checkId.ms" : 
			//forward = new CheckIdAction().execute(request ,response);
			break;
		case "/movie/joinOk.ms" :
			forward = new JoinOkAction().execute(request ,response);
			break;
		case "/movie/returnPage" : 
			forward = new ReturnPageAction().execute(request ,response);
			break;				// 세션정보 include
		case "/movie/logout.ms" : 
			forward = new LogOutAction().execute(request ,response);
			break;
		case "/movie/searchId.ms" :
			forward = new SearchIdAction().execute(request ,response);
			break;
		case "/movie/searchPw.ms" : 
			forward = new SearchPwAction().execute(request ,response);
			break;
		}
		
		
		if(forward != null) {
			if(forward.isRedirect()) {		// Redirect 방식
				response.sendRedirect(forward.getPath());
			}else {							// forward 방식
				request.getRequestDispatcher(forward.getPath()).forward(request, response);
			}
		}
	}
	}
