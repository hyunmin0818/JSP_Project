package com.movie.web.servlet;

import java.io.IOException;

import com.movie.web.action.ActionForward;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.mo")
public class MovieFrontController extends HttpServlet{
   
   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req,resp);
   }
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req,resp);
   }
   protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String requestURI = req.getRequestURI();
      ActionForward forward = null;
      
      switch (requestURI) {
      case "/current/categori.mo" : 
         forward = new SearchCurrentMovieAction().execute(req, resp);
         break;
      case "" : 
         forward = new SearchMovieInfoAction().execute(req, resp);
         break;
      case "/movie/detailInfo/mo" : 
    	 forward = new MoveMovieDetailAction().execute(req, resp); // db 댓글불러오는 메서드도 연결해야됨
    	 break;
      case "/movie/addComment.mo" : 
    	 forward = new AddCommentAction().execute(req, resp);
    	 break;
      }
   }
}
