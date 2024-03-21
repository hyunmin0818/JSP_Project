package com.movie.web.servlet;

import java.io.IOException;

import com.movie.web.action.ActionForward;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

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
      ActionForward forward = new ActionForward();
      
      HttpSession session = req.getSession(false);
      
      switch (requestURI) {
      case "/insert.mo" :
    	 forward = new AddReplyAction().execute(req, resp);
    	 break;
      }
   // 페이지 이동에 대한 일괄처리
	if (forward != null) {
		if (forward.isRedirect()) { // Redirect 방식
			resp.sendRedirect(forward.getPath());
		} else { // forward 방식
			req.getRequestDispatcher(forward.getPath()).forward(req, resp);
		}
   		}
   }
}
