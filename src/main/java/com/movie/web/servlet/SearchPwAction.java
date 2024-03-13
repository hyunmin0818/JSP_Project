package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.UserDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchPwAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
        // request에서 아이디 파라미터 가져오기
        String user_id = request.getParameter("user_id");

        // UserDAO 인스턴스 생성 및 findPasswordById 메서드 호출
        UserDAO userDAO = new UserDAO();
        String userpassword = userDAO.searchPw(user_id);

        if (userpassword != null) {
            // 비밀번호 찾기 성공: 비밀번호를 request에 속성으로 추가
            request.setAttribute("userpassword", userpassword);
            // 포워딩할 경로 설정: passwordResult.jsp로 리다이렉트
            forward.setPath("/movie/html/passwordResult.jsp");
            forward.setRedirect(true); // true: 리다이렉트, false: 디스패치
        } else {
            // 비밀번호 찾기 실패: 에러 메시지를 설정하고 에러 페이지나 다른 페이지로 리다이렉트할 수 있음
            request.setAttribute("error", "사용자 정보를 찾을 수 없습니다.");
            forward.setPath("/movie/html/findPasswordError.jsp");
            forward.setRedirect(true);
        }

        return forward;
    }
}
