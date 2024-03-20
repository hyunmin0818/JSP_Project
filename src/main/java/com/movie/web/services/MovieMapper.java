package com.movie.web.services;

import java.time.LocalDate;
import java.util.Date;
import java.util.List;

import com.movie.web.dto.MovieDTO;

public interface MovieMapper {
   
	List<MovieDTO> selectMoviesByViewCount(LocalDate startDate, LocalDate endDate);
}
