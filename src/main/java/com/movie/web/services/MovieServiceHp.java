package com.movie.web.services;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;

import java.util.List;

import com.movie.web.dao.MovieDAO;
import com.movie.web.dto.MovieDTO;

public class MovieServiceHp implements MovieMapper {
    private static MovieServiceHp instance; 
    private MovieDAO movieDAO;

    private MovieServiceHp() {
        movieDAO = new MovieDAO();
    }

    public static MovieServiceHp getInstance() {
        if (instance == null) {
            synchronized (MovieServiceHp.class) {
                if (instance == null) {
                    instance = new MovieServiceHp();
                }
            }
        }
        return instance;
    }

    // 인터페이스의 메서드 시그니처에 맞춰서 메서드 시그니처 수정
    @Override
    public List<MovieDTO> selectMoviesByViewCount(LocalDate startDate, LocalDate endDate) {
        // 인자로 받은 LocalDate를 그대로 DAO 메서드로 전달합니다.
        return movieDAO.selectMoviesByViewCount(startDate, endDate);
    }

    // 필요에 따라 LocalDate를 int로 변환하는 유틸리티 메서드를 추가할 수 있습니다.
    private int convertToLocalDateToInt(LocalDate date) {
        // LocalDate를 int로 변환하는 로직 추가
        return Integer.parseInt(date.format(DateTimeFormatter.ofPattern("yyyyMMdd")));
    }
}


