<%@page import="com.movie.web.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    String user_id = request.getParameter("user_id");
    UserDAO udao= new UserDAO();
    // udao.checkId(userid)메서드 작성 =>
   	// 중복된 아이디가 있으면 true 
    // 중복된 아이디가 없으면 false;
    if(!udao.checkId(user_id)){		//중복아이디 없음 = 가입가능
    	out.print("ok");
    }else{			// 중복아이디 있음 = 가입불가
    	out.print("not-ok");
    }
    %>