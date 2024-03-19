//package com.movie.web.servlet;
//
//import com.movie.web.action.Action;
//import com.movie.web.action.ActionForward;
//
//import java.io.IOException;
//
//import org.json.simple.JSONObject;
//
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//
//public class getMovieViewAction implements Action {
//
//    @Override
//    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        // AJAX 요청으로부터 파라미터(movieSeq)를 추출합니다.
//        int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));
//
//        // 업데이트된 조회수를 가져오기 위해 AJAX 요청을 보냅니다.
//        fetchUpdatedViews(movieSeq, response);
//
//        // 추가적인 서버 측 처리가 필요하지 않으므로 ActionForward 객체를 생성하고 null 값을 반환합니다.
//        return null;
//    }
//
//    // 업데이트된 조회수를 가져오는 AJAX 요청을 보내는 메서드
//    private void fetchUpdatedViews(int movieSeq, HttpServletResponse response) throws IOException {
//        // 여기에 AJAX 요청을 보내고 응답을 처리하는 코드를 작성하세요.
//        // 아래는 예시 코드입니다.
//
//        // AJAX 요청을 보내고 성공 시 응답을 처리합니다.
//        // 성공 시에는 JSON 형식으로 응답합니다.
//    	// 업데이트된 영화 조회수 가져오기
//        int updatedViews = mdao.getMovieViews(movieSeq1);
//        
//        // JSON 객체 생성
//        JSONObject jsonResponse = new JSONObject();
//        jsonResponse.put("updatedViews", updatedViews);
//        
//        // 응답으로 JSON 데이터 보내기
//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");
//        try {
//			response.getWriter().write(jsonResponse.toString());
//		} catch (IOException e) {
//			e.printStackTrace();
//		} // 업데이트된 조회수를 응답에 포함합니다. 여기에 실제 조회수를 추가하세요.
//
//   
//    }
//}
