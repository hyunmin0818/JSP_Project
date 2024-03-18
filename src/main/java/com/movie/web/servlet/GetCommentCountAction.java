package com.movie.web.servlet;

import java.io.IOException;

import org.json.simple.JSONObject;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.CommentDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GetCommentCountAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String movieSeq = request.getParameter("movieSeq");

	        // CommentDAO 객체 생성
	        CommentDAO commentDAO = new CommentDAO();

	        // 댓글 수 가져오기
	        int commentCount = commentDAO.getCommentCountByMovieSeq(movieSeq);

	        // JSON 형식으로 응답하기
	        JSONObject jsonResponse = new JSONObject();
	        jsonResponse.put("commentCount", commentCount);

	        response.setContentType("application/json");
	        response.setCharacterEncoding("UTF-8");

	        try {
	            response.getWriter().write(jsonResponse.toString());
	        } catch (IOException e) {
	            e.printStackTrace();
	        }

	        // 리다이렉션 없이 현재 페이지에 머무릅니다.
	        return null;
	}

   
    }
