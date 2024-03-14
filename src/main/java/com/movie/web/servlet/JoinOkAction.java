package com.movie.web.servlet;


import com.movie.web.dao.UserDAO;

import com.movie.web.dto.UserDTO;
import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class JoinOkAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		UserDAO udao = new UserDAO();
		UserDTO udto = new UserDTO();
		ActionForward forward = new ActionForward(); 
		
		int Movie_like = 0; // 기본값으로 0을 설정
		String movieLikeParam = request.getParameter("movie_like"); // 올바른 파라미터 이름으로 수정
		if (movieLikeParam != null) {
		    try {
		        Movie_like = Integer.parseInt(movieLikeParam);
		    } catch (NumberFormatException e) {
		        // movie_like 파라미터가 숫자가 아닐 경우 처리
		        // 여기서는 예외가 발생해도 Movie_like가 이미 0으로 설정되어 있으므로 추가적인 처리를 하지 않
		    }
		}

		udto.setUser_id(request.getParameter("user_id"));
		udto.setUserpassword(request.getParameter("userpassword"));
		udto.setUsername(request.getParameter("username"));
		udto.setUserphone(request.getParameter("userphone"));
		udto.setUserbirth(request.getParameter("userbirth"));
		udto.setEmail(request.getParameter("email"));
		udto.setMovie_like(Movie_like);
		
		
		if(udao.join(udto)) {	// 회원가입
			forward.setPath("/movie/html/login.jsp");
			forward.setRedirect(true);
			System.out.println("가입완료");
		}else {
			forward.setPath("/movie/html/join.jsp");
		}
		return forward;

}
}