package com.movie.web.servlet;

import java.io.IOException;

import org.json.simple.JSONObject;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.LikesDAO;
import com.movie.web.dto.LikesDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class LikeDecreaseAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        
        String movieSeq = request.getParameter("movieSeq");
		String userId = request.getParameter("userId");
        
        LikesDTO ldto = new LikesDTO();
        ldto.setMovieSeq(movieSeq);    // 좋아요를 추가할 영화 Seq 설정
        ldto.setUser_Id(userId);

        LikesDAO ldao = new LikesDAO();
        boolean success = ldao.removeLike(ldto);
        
        if (success) {
            // 좋아요가 성공적으로 제거되면 좋아요 수를 다시 가져와서 업데이트
            int updatedLikesCount = ldao.getLikesCount(ldto.getMovieLike()); // 영화의 좋아요 수 가져오기
            response.setContentType("application/json");
            
            try {
				// JSON 응답 생성
				JSONObject jsonResponse = new JSONObject();
				jsonResponse.put("status", "success");
				jsonResponse.put("action", "unlike");
				jsonResponse.put("updatedLikesCount", updatedLikesCount);
                response.getWriter().write(jsonResponse.toJSONString()); // JSON 문자열로 변환하여 출력
                System.out.println("좋아요가 성공적으로 제거되었습니다.");
            } catch (IOException e) {
                e.printStackTrace();
                System.out.println("좋아요 제거에 실패하였습니다.");
            }
        } 

        return null;
    }

}
