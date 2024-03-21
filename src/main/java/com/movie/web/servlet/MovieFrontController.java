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
	    movieServices = MovieServiceHp.getInstance();
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
      
      System.out.println("requestURI : " + requestURI);
      
      // 세션 확인
      HttpSession session = req.getSession(false); // 기존에 존재하는 세션 반환, 없으면 null 반환
      
      
      switch (requestURI) {
         case "/movie/clickPoster.mo": 
            forward = new ClickPosterAction().execute(req, resp);
            break;
         case "/movie/searchMovie.mo": 
            forward = new SearchMovieInfoAction().execute(req, resp);
            break;
         case "/movie/RandomAction/mo": 
            forward = new MainSliderRandomAction().execute(req, resp); // db 댓글불러오는 메서드도 연결해야됨
            break;
         case "/movie/addComment.mo": 
            forward = new AddCommentAction().execute(req, resp);
            break;
         case "/movie/deleteComment.mo": 
            forward = new DeleteCommentAction().execute(req, resp);
            break; 
         case "/movie/getMoviesByView.mo":
        	forward = new GetMoviesByViewCountAction().execute(req, resp); // FetchMoviesAction은 새로 구현해야 하는 액션 클래스입니다.
        	 break;
     
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
