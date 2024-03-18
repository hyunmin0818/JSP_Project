package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.CommentDAO;
import com.movie.web.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class DeleteCommentAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        // ActionForward 객체 초기화
        ActionForward forward = new ActionForward();
        HttpSession session = request.getSession();
        UserDTO udto = (UserDTO) session.getAttribute("userinfo");
        String movieSeq = request.getParameter("movieSeq");
        
        if (udto != null) {
            try {
                int comment_id = Integer.parseInt(request.getParameter("comment_id"));
                String user_id = udto.getUser_id(); // UserDTO에서 사용자 ID를 가져옴

                CommentDAO commentDAO = new CommentDAO(); 
                boolean result = commentDAO.deleteComment(comment_id, user_id); // 댓글 삭제 메소드 호출

                if (result) {
                    forward.setRedirect(true);
                    forward.setPath("/movie/html/movie-details.jsp?movieSeq=" + movieSeq); // 댓글 삭제 후 리다이렉트될 페이지
                    System.out.println("댓글 삭제 완료");
                } else {
                    forward.setRedirect(true);
                    forward.setPath("errorPage.jsp"); // 에러 발생 시 이동할 페이지
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
                forward.setRedirect(true);
                forward.setPath("errorPage.jsp"); // NumberFormatException 발생 시 이동할 페이지
            }
        } else {
            forward.setRedirect(true);
            forward.setPath("/movie/html/login.jsp"); // 로그인하지 않은 사용자가 댓글 삭제 시도 시 이동할 페이지
        }
        return forward;
    }
}
