package com.movie.web.servlet;

import java.io.IOException;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeParseException;
import java.util.Date;
import java.util.List;

import org.apache.el.parser.ParseException;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dto.MovieDTO;
import com.movie.web.services.MovieServiceHp;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class GetMoviesByViewCountAction implements Action {
    @Override
    public ActionForward execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String startDateStr = req.getParameter("startDate");
        String endDateStr = req.getParameter("endDate");
        
        DateTimeFormatter inputFormatter = DateTimeFormatter.ofPattern("yyyyMMdd");
        LocalDate startDate = null;
        LocalDate endDate = null;									// 클래스와 메서드, js 파일을 거치며 형변환이 많이 일어나므로 
        															// 디버깅을 걸어 확인하는것이 좋습니다.
        System.out.println("startDateStr"+startDate);
        System.out.println("endDateStr"+endDate);			// null 값을 반환하므로 원래는 좀 더 아래에 위치해야합니다.
        try {
            if (startDateStr != null && endDateStr != null) {
                startDate = LocalDate.parse(startDateStr, inputFormatter);
                endDate = LocalDate.parse(endDateStr, inputFormatter);
            }
        } catch (DateTimeParseException e) {
            e.printStackTrace();
            System.out.println("잘못된 날짜 형식입니다.");
        }

        // MovieServiceHp를 사용하여 영화 데이터를 조회
        MovieServiceHp movieService = MovieServiceHp.getInstance();
        List<MovieDTO> movies = movieService.selectMoviesByViewCount(startDate, endDate);


        // 조회된 영화 데이터를 JSON으로 변환
        JSONArray moviesArray = new JSONArray();
        for (MovieDTO movie : movies) {
            JSONObject movieObj = new JSONObject();
            movieObj.put("movieSeq", movie.getMovieSeq());
            movieObj.put("title", movie.getTitle());
            movieObj.put("movieView", movie.getMovieView());
            movieObj.put("releaseDate", movie.getReleaseDate());		// 여기서 담아줘야 페이지로 가져올 수 있습니다.
            movieObj.put("stillUrl", movie.getStillUrl());
            movieObj.put("genre", movie.getGenre());
            moviesArray.add(movieObj);
        }

        // JSON 데이터를 String으로 변환하여 클라이언트에게 응답
        resp.setContentType("application/json");
        PrintWriter out = resp.getWriter();
        out.print(moviesArray.toJSONString());
        out.flush();

        // 응답 처리 후 페이지 이동이 필요 없으므로 null을 반환
        return null;
    }
}

