package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class LogOutAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		
		// 세션 가져오기
        HttpSession session = request.getSession(false); // false: 현재 세션이 존재하지 않으면 null을 반환

        // 세션이 존재하는 경우, 세션 종료
        if(session != null) {
            session.invalidate();
            System.out.println("로그아웃 성공"); // 로그아웃 여부 확인용
        }

        // 로그아웃 후 리다이렉트 할 페이지 설정
        forward.setRedirect(true); // 클라이언트가 직접 URL을 요청하도록 함
        forward.setPath("/movie/html/index.jsp"); // 초기 페이지 또는 로그인 페이지로 이동

        return forward;
    }
}
