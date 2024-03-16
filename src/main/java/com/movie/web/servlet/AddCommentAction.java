package com.movie.web.servlet;

import java.util.HashMap;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.CommentDAO;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.MovieDTO;
import com.movie.web.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class AddCommentAction implements Action{
	ActionForward forward = new ActionForward();
	 
	@Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        // ActionForward 객체 초기화
        ActionForward forward = new ActionForward();
        
        // 세션에서 userinfo 객체 가져오기
        HttpSession session = request.getSession();
        UserDTO udto = (UserDTO) session.getAttribute("userinfo");

        String movieSeq = request.getParameter("movieSeq");
        
        if (udto != null) {
            String user_id = udto.getUser_id(); // 로그인한 사용자의 ID 가져오기
            String comment = request.getParameter("comment"); // 댓글 내용 가져오기

            // CommentDAO의 insertComment 메서드를 호출하여 댓글 추가
            CommentDAO commentDAO = new CommentDAO(); 
            boolean result = commentDAO.insertComment( user_id, comment , movieSeq);

            if (result) {
                // 댓글 추가 성공 시, 원래 페이지로 리다이렉트
                forward.setRedirect(true); // 리다이렉트 방식으로 전송
                forward.setPath("/movie/html/movie-details.jsp"); // 원래 페이지로 이동
                System.out.println("댓글 등록 완료");
            }else {
                // 댓글 추가 실패 시, 에러 페이지로 이동
                forward.setRedirect(true);
                forward.setPath("errorPage.jsp");
            }
        } else {
            // 로그인하지 않은 경우 로그인 페이지로 리다이렉트
            forward.setRedirect(true);
            forward.setPath("/movie/html/login.jsp");
        }
        return forward;

	}
}
