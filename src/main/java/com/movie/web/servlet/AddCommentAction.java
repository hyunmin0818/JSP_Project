package com.movie.web.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.json.simple.JSONObject;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.CommentDAO;
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
        

        String movieSeq = request.getParameter("movieSeq"); // 검색 혹은 클릭해서 들어간 결과 페이지의 영화 pk값을 받습니다.
        
        if (udto != null) {					// 로그인 여부 확인 부분
            String user_id = udto.getUser_id(); // 로그인한 사용자의 ID 가져오기
            String comment = request.getParameter("comment"); // 댓글 내용 가져오기

            // CommentDAO의 insertComment 메서드를 호출하여 댓글 추가
            CommentDAO commentDAO = new CommentDAO(); 
            boolean result = commentDAO.insertComment( user_id, comment , movieSeq);

            response.setContentType("application/json");	// 비동기 통신 ajax로 받아주고 내보낼 것이므로 이렇게 설정합니다.
            response.setCharacterEncoding("UTF-8");
            
            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            String comment_time = dateFormat.format(new Date());
            
            JSONObject jsonResponse = new JSONObject();
            if (result) {
                jsonResponse.put("status", "success");
                jsonResponse.put("message", "댓글 등록 성공");
                jsonResponse.put("user_id", user_id);
                jsonResponse.put("comment_time", comment_time);		// 등록이 성공할 경우 바로 업데이트 될 수 있도록
                jsonResponse.put("comment", comment);
            } else {
                jsonResponse.put("status", "fail");
                jsonResponse.put("message", "댓글 등록 실패");
            }
            try {
				response.getWriter().write(jsonResponse.toString());
			} catch (IOException e) {
				
				e.printStackTrace();
			}
        } else {
            JSONObject jsonResponse = new JSONObject();
            jsonResponse.put("status", "fail");
            jsonResponse.put("message", "로그인 필요");
            try {
				response.getWriter().write(jsonResponse.toString());
			} catch (IOException e) {
				e.printStackTrace();
			}
            return null; // 처리를 여기서 마칩니다.
        }
        return forward;
    }
}
