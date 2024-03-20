package com.movie.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.io.InputStream;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.movie.web.dto.MovieDTO;
import com.movie.web.mybatis.SqlMapConfig;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;

public class MovieDAO {
	   
	   SqlSessionFactory factory = SqlMapConfig.getFactory();
	   SqlSession sqlSession;
	   
	   public MovieDAO (){
	      sqlSession = factory.openSession(true);
	   }
	   public void insertMovie(Map<String, Object> map) {
	        sqlSession.insert("mapper.movieinsert", map);
	    }
		
	   // 여러 파라미터에 활용 가능. 검색창에 사용
	   public List<MovieDTO> searchMovies(String parameter) {
		    List<MovieDTO> movieList = null;
		    try {
		        HashMap<String, Object> paramMap = new HashMap<>();
		        paramMap.put("parameter", "%" + parameter + "%"); // 부분 일치 검색을 위해 '%' 추가

		        // 수정된 부분: paramMap을 전달합니다.
		        movieList = sqlSession.selectList("Movie.searchMovies", paramMap);
		    } catch (Exception e) { 
		        e.printStackTrace();
		    }
		    return movieList;
		}
	   // 장르 : 상세페이지 활용
	   public List<MovieDTO> searchMoviesByGenre(String genre) {
		    List<MovieDTO> movieList = null;
		    try {
		        HashMap<String, Object> paramMap = new HashMap<>();
		        paramMap.put("genre", "%" + genre + "%"); // 부분 일치 검색을 위해 '%' 추가

		        // 수정된 부분: paramMap을 전달합니다.
		        movieList = sqlSession.selectList("Movie.searchMoviesByGenre", paramMap);
		    } catch (Exception e) { 
		        e.printStackTrace();
		    }
		    return movieList;
		}
	   
	   public List<MovieDTO> clickPoster(String movieSeq) {
		    List<MovieDTO> movieInfo = null;
		    try {
		        HashMap<String, Object> paramMap = new HashMap<>();
		        paramMap.put("movieSeq", movieSeq); // 영화 시퀀스를 매개변수로 받습니다.

		        // 수정된 부분: paramMap을 전달하며, 여러 개의 결과를 받기 위해 selectList를 사용합니다.
		        movieInfo = sqlSession.selectList("Movie.clickPoster", paramMap);
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		    return movieInfo;
		}
	  
	
	public List<MovieDTO> getMovieList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List <MovieDTO> MovieList
			= sqlSession.selectList("Movie.getMovieList", datas);
		return MovieList;
	}

	// 영화의 총 개수를 가져오는 메서드
	public int getMovieCnt() {
		return sqlSession.selectOne("Movie.getMovieCnt");
	}
	
	// 영화의 조회수를 추가하는 메서드
	public void updateMovieViews(int movieId) {
	    sqlSession.update("Movie.updateMovieViews", movieId);
	}

	// 영화의 조회수를 가져오는 메서드
	public int getMovieViews(int movieId) {
	    return sqlSession.selectOne("Movie.getMovieViews", movieId);
	}

	// 영화의 조희수를 올리는 메서드
	public void addMovieViewCount(int movieId) {
		sqlSession.update("Movie.updateMovieViews", movieId);
	}
	public List<MovieDTO> selectMoviesByViewCount(LocalDate startDate, LocalDate endDate) {
	    HashMap<String, Object> params = new HashMap<>();

	    // startDate와 endDate에 대한 null 체크 및 기본값 설정
	    LocalDate defaultStartDate = LocalDate.of(2020, 1, 1); // 기본 시작 날짜를 조정했습니다.
	    LocalDate defaultEndDate = LocalDate.of(2024, 3, 18); // 기본 종료 날짜입니다.

	    // 날짜를 정수형으로 변환하는 과정
	    int formattedStartDate = (startDate != null) ? 
	        Integer.parseInt(startDate.format(DateTimeFormatter.ofPattern("yyyyMMdd"))) : 
	        Integer.parseInt(defaultStartDate.format(DateTimeFormatter.ofPattern("yyyyMMdd")));
	    
	    int formattedEndDate = (endDate != null) ? 
	        Integer.parseInt(endDate.format(DateTimeFormatter.ofPattern("yyyyMMdd"))) : 
	        Integer.parseInt(defaultEndDate.format(DateTimeFormatter.ofPattern("yyyyMMdd")));

	    // 변환된 날짜를 매개변수로 추가
	    params.put("startDate", formattedStartDate);
	    params.put("endDate", formattedEndDate);
	    
	    // MyBatis (또는 사용하는 SQL 매퍼)를 사용하여 쿼리 실행
	    List<MovieDTO> movies = sqlSession.selectList("Movie.selectMoviesByViewCount", params);
	    System.out.println("movies" + movies);
	    return movies.stream().limit(7).collect(Collectors.toList());
	    
	}
	
//	public List<MovieDTO> getMovieDESCAction() {
//	    List<MovieDTO> movieList = sqlSession.selectList("getMovieDESC");
//	    return movieList;
//	}
}


