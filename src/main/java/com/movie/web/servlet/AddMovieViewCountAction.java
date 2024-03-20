//package com.movie.web.servlet;
//
//import com.movie.web.action.Action;
//import com.movie.web.action.ActionForward;
//import com.movie.web.dao.MovieDAO;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//
//public class AddMovieViewCountAction implements Action {
//
//    @Override
//    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        int movieSeq = Integer.parseInt(request.getParameter("movieSeq"));
//
//        // MovieDAO를 이용하여 영화 조회수 증가시키기
//        MovieDAO mdao = new MovieDAO();
//        mdao.addMovieViewCount(movieSeq);
//
//        response.setContentType("application/json");
//        PrintWriter out = response.getWriter();
//        out.print("{\"result\": \"success\"}");
//        out.flush();
//
//        return null;
//    }
//}
