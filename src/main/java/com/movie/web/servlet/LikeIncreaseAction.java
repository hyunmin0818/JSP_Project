package com.movie.web.servlet;

import java.io.IOException;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.LikesDAO;
import com.movie.web.dto.LikesDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LikeIncreaseAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		
		String movieSeq = request.getParameter("movieSeq");
		
		LikesDTO ldto = new LikesDTO();
		ldto.setMovieSeq(movieSeq);		// 좋아요를 추가할 영화 Seq설정
		
		LikesDAO ldao = new LikesDAO();
		boolean success = ldao.addLikeAndUpdateLikesCount(ldto); // 좋아요 추가 및 업데이트
		
		 if (success) {
	            // 좋아요 추가 및 업데이트 성공시
	            int updatedLikesCount = ldao.getLikesCount(ldto.getMovieLike()); // 업데이트된 좋아요 수 가져오기
	            response.setContentType("application/json");
	            try {
	                response.getWriter().write(String.valueOf(updatedLikesCount)); // 업데이트된 좋아요 수를 클라이언트에 전송
	            } catch (IOException e) {
	                e.printStackTrace();
	            }
	        } 

	        return null; // 이동할 페이지가 없으므로 null 반환
	    }
	}