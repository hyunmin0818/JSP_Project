package com.movie.web.servlet;

import java.io.IOException;

import com.movie.web.action.ActionForward;
import com.movie.web.services.MovieServiceHp;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("*.mo")
public class MovieFrontController extends HttpServlet {
   
   private MovieServiceHp movieServices;

	@Override
	public void init() throws ServletException {
	    super.init();
	    movieServices = MovieServiceHp.getInstance();	// 메인 페이지에서 렌더링할 요청을 받아줌 프론트 페이지에 경로 설정 x
	    System.out.println("여기는 탔음.");
	}
   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }
   
   protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String requestURI = req.getRequestURI();
      ActionForward forward = null;
      
      System.out.println("requestURI : " + requestURI);		// 경로 요청을 잘 받았는지 확인
      
      // 세션 확인
      HttpSession session = req.getSession(false); // 기존에 존재하는 세션 반환, 없으면 null 반환
      
      
      switch (requestURI) {
         case "/movie/clickPoster.mo": 
            forward = new ClickPosterAction().execute(req, resp);
            break;				// 포스터 클릭시 
         case "/movie/searchMovie.mo": 
            forward = new SearchMovieInfoAction().execute(req, resp);
            break;				// 검색창 검색시
         case "/movie/RandomAction/mo": 
            forward = new MainSliderRandomAction().execute(req, resp); // db 댓글불러오는 메서드도 연결해야됨
            break;				// 슬라이더에 던져줄 데이터 반환. 미연결
         case "/movie/addComment.mo": 
            forward = new AddCommentAction().execute(req, resp);
            break;				// 댓글 등록
         case "/movie/deleteComment.mo": 
            forward = new DeleteCommentAction().execute(req, resp);
            break; 				// 댓글 삭제
         case "/movie/getMoviesByView.mo":
        	forward = new GetMoviesByViewCountAction().execute(req, resp); 
        	 break;				// 조회수에 따른 영화 정보
     
      }
      
      if (forward != null) {
         if (forward.isRedirect()) {    // Redirect 방식
            resp.sendRedirect(forward.getPath());
         } else {                        // forward 방식
            req.getRequestDispatcher(forward.getPath()).forward(req, resp);
         }

      }
   }
   }
