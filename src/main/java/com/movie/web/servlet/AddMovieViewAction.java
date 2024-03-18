package com.movie.web.servlet;

import java.io.IOException;

import org.json.simple.JSONObject;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.MovieDAO;
import com.movie.web.dto.MovieDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddMovieViewAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) {
		
		String movieSeq = req.getParameter("movieSeq");
        
        // 영화 Seq를 정수로 변환하기
        int movieSeq1 = Integer.parseInt(movieSeq);
        
        // MovieDAO 객체 생성
        MovieDAO mdao = new MovieDAO();
        
        // 영화 조회수 업데이트하기
        mdao.updateMovieViews(movieSeq1);
        
        // 업데이트된 영화 조회수 가져오기
        int updatedViews = mdao.getMovieViews(movieSeq1);
        
        // JSON 객체 생성
        JSONObject jsonResponse = new JSONObject();
        jsonResponse.put("updatedViews", updatedViews);
        
        // 응답으로 JSON 데이터 보내기
        resp.setContentType("application/json");
        resp.setCharacterEncoding("UTF-8");
        try {
			resp.getWriter().write(jsonResponse.toString());
		} catch (IOException e) {
			e.printStackTrace();
		}
        
        // null을 반환하여 리다이렉션 없이 현재 페이지에 머무릅니다.
        return null;
	}

}
