package com.movie.web.servlet;

import java.time.LocalDate;
import java.util.List;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.MovieDAO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class SearchCurrentMovieAction implements Action{

	@Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        try {
            // 서비스 레이어 접근을 위한 MovieService 객체 초기화 (가정)
            MovieService movieService = new MovieServiceImpl();

            LocalDate startDate = LocalDate.of(2024, 2, 13);
            LocalDate endDate = LocalDate.of(2024, 3, 13);
            List<Movie> movies = movieService.findMoviesByReleaseDateBetween(startDate, endDate);

            // 조회한 영화 목록을 request 속성에 추가
            request.setAttribute("movies", movies);

            // ActionForward 객체를 통해 이동할 페이지와 리다이렉트 여부 설정
            ActionForward forward = new ActionForward();
            forward.setPath("movies.jsp"); // 영화 목록을 표시할 JSP 페이지 경로 설정
            forward.setRedirect(false); // Dispatcher 방식으로 포워드
            return forward;
        } catch (Exception e) {
            // 예외 처리
            throw new RuntimeException(e);
        }
    }
}
