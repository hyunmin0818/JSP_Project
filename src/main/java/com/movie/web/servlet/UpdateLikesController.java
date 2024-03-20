package com.movie.web.servlet;

import java.io.IOException;

import com.movie.web.action.ActionForward;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("*.lk")
public class UpdateLikesController extends HttpServlet{

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
		
		HttpSession session = req.getSession(false);
		
		System.out.println(requestURI);
		
		switch (requestURI) {
		
		case "/movie/LikeIncrease.lk" :
			System.out.println("테스트");
			forward = new LikeIncreaseAction().execute(req, resp);
			break;
		case "/movie/LikeDecrease.lk" :
			System.out.println("테스트2");
			forward = new LikeDecreaseAction().execute(req, resp);
			break;
			
		}
	
	}
	
}
