package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchIdAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		// request에서 파라미터 가져오기
        String username = request.getParameter("username");
        String userbirth = request.getParameter("userbirth");
        String userphone = request.getParameter("userphone");

        // UserDAO 인스턴스 생성 및 findUserIdByUsernameAndBirthAndPhone 메서드 호출
        UserDAO userDAO = new UserDAO();
        String userId = userDAO.searchId(username, userbirth, userphone);

        if (userId != null) {
            // 아이디 찾기 성공: 아이디를 request에 속성으로 추가
            request.setAttribute("userId", userId);
            // 포워딩할 경로 설정: login.jsp로 리다이렉트
            forward.setPath("/movie/html/login.jsp");
            forward.setRedirect(true); // true: 리다이렉트, false: 디스패치
        } else {
            // 아이디 찾기 실패: 에러 메시지를 설정하고 에러 페이지나 다른 페이지로 리다이렉트할 수 있음
            // 에러 메시지 설정 예: request.setAttribute("error", "사용자 정보를 찾을 수 없습니다.");
            // 에러 페이지로 포워딩 예: forward.setPath("/error_page.jsp");
        }

        return forward;
    }

	}


