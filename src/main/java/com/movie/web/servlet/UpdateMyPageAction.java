package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.MovieDAO;
import com.movie.web.dao.UserDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class UpdateMyPageAction implements Action{
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		UserDAO udao = new UserDAO();
		
		
		String user_id = request.getParameter("user_id");
        String username = request.getParameter("username");
        String userphone = request.getParameter("userphone");
        String userbirth = request.getParameter("userbirth");
        String email = request.getParameter("email");

        
        // 업데이트 성공 여부
        boolean result = udao.updateUserinfo(user_id, username, userphone, userbirth, email);
		
		
		 if(result) {
	            // 업데이트 성공 시, 마이페이지로 리다이렉트
	            forward.setRedirect(true); // 리다이렉트 방식으로 전송
	            forward.setPath("mypage.jsp?user_id=" + user_id); // 업데이트된 정보를 확인할 수 있는 페이지로 이동
	        } else {
	            // 업데이트 실패 시, 오류 메시지를 가지고 이전 페이지로 돌아가기
	            request.setAttribute("errorMsg", "정보 업데이트에 실패했습니다.");
	            forward.setRedirect(false); 
	            forward.setPath("errorPage.jsp"); // 오류 메시지를 보여줄 페이지
	        }

	        return forward;
	    }
	
	}

