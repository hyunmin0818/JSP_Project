package com.movie.web.servlet;

import java.io.IOException;

import java.util.ArrayList;

import java.util.Collections;
import java.util.List;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.MovieDAO;
import com.movie.web.dto.MovieDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class MainSliderRandomAction implements Action {

    private MovieDAO movieDAO;

    // 생성자를 통해 MovieDAO 인스턴스를 초기화합니다.
    public MainSliderRandomAction() {
        this.movieDAO = new MovieDAO();
    }

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        // 랜덤 영화 목록을 가져와서 request에 속성으로 설정하는 로직을 구현할 수 있습니다.
        List<MovieDTO> randomMovies = getRandomMovies();
        request.setAttribute("randomMovies", randomMovies);
        
        // 적절한 뷰로 포워딩하는 ActionForward 인스턴스를 반환합니다.
        // 예: return new ActionForward("main_slider.jsp", false);
        return null; // 실제 구현에 맞게 수정 필요
    }

    public List<MovieDTO> getRandomMovies() {
        // 모든 영화 목록을 가져옵니다.
        List<MovieDTO> allMovies = movieDAO.selectMoviesByReleaseDate();

        // 영화 목록을 섞습니다.
        Collections.shuffle(allMovies);

        // 섞인 목록에서 최대 3개까지만 추출합니다.
        return new ArrayList<>(allMovies.subList(0, Math.min(allMovies.size(), 3)));
    }
}

