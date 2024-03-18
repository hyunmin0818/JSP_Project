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
                String comment = request.getParameter("comment"); 
                String user_id = udto.getUser_id(); // UserDTO에서 사용자 ID를 가져옴

                CommentDAO commentDAO = new CommentDAO(); 
                boolean result = commentDAO.updateComment(comment_id, comment, user_id); // user_id도 전달

                if (result) {
                    forward.setRedirect(true);
                    forward.setPath("/movie/html/movie-details.jsp?movieSeq=" + movieSeq);
                    System.out.println("댓글 수정 완료");
                } else {
                    forward.setRedirect(true);
                    forward.setPath("errorPage.jsp");
                }
            } catch (NumberFormatException e) {
                e.printStackTrace();
                forward.setRedirect(true);
                forward.setPath("errorPage.jsp");
            }
        } else {
            forward.setRedirect(true);
            forward.setPath("/movie/html/login.jsp");
        }
        return forward;
    }
}
