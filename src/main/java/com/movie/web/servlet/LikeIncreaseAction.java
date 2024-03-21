package com.movie.web.servlet;

import java.io.IOException;

import org.json.simple.JSONObject;

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
		String userId = request.getParameter("userId"); // 변수명 수정
		
		System.out.println(movieSeq);
		System.out.println(userId);
		System.out.println("------");
		
		LikesDTO ldto = new LikesDTO();
		ldto.setMovieSeq(movieSeq);
		ldto.setUser_Id(userId); 
		
		LikesDAO ldao = new LikesDAO();
		boolean success = ldao.addLikeAndUpdateLikesCount(ldto);
		System.out.println(success);
		
		 if (success) {
		        int updatedLikesCount = ldao.getLikesCount(ldto.getMovieLike());
		        response.setContentType("application/json");
		        try {
		            JSONObject jsonResponse = new JSONObject();
		            jsonResponse.put("status", "success");
		            jsonResponse.put("action", "like");
		            jsonResponse.put("updatedLikesCount", updatedLikesCount);
		            response.getWriter().write(jsonResponse.toString());
		            System.out.println("좋아요가 성공적으로 추가되었습니다.");
		        } catch (IOException e) {
		            e.printStackTrace();
		            System.out.println("좋아요 추가에 실패하였습니다.");
		        }
		    } 

		return null;
	    }
	}