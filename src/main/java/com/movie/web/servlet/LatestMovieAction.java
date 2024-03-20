//package com.movie.web.servlet;
//
//import com.movie.web.action.Action;
//import com.movie.web.action.ActionForward;
//import com.movie.web.dao.MovieDAO;
//import com.movie.web.dto.MovieDTO;
//
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//import java.util.List;
//
//public class LatestMovieAction implements Action {
//
//    @Override
//    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
//        MovieDAO movieDAO = new MovieDAO();
//
//        List<MovieDTO> latestMovies = movieDAO.getMovieList(1, 10);
//
//        request.setAttribute("latestMovies", latestMovies);
//
//        ActionForward forward = new ActionForward();
//        forward.setPath("/latest_movies.jsp");
//        forward.setRedirect(false);
//
//        return forward;
//    }
//}
