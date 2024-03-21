package com.movie.web.dao;

import java.sql.Connection;

import java.util.Date;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
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
	        sqlSession.insert("mapper.movieinsert", map); // mapper 자리에 실제 xml에 정의된 id값
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
	   
	   // 포스터를 클릭하면 정보를 담아오는 기능
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
	  
	
	   // 서버측에서 페이징 처리를 해줄때 필요한 메서드
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
	public void updateMovieViews(int movieSeq) {
	    sqlSession.update("Movie.updateMovieViews", movieSeq);
	    System.out.println("요기까진 왔음");
	}

	// 영화의 조회수를 가져오는 메서드
	public Integer getMovieViews(int movieSeq) {
	    return sqlSession.selectOne("Movie.getMovieViews", movieSeq);
	    
	}

//	// 영화의 조희수를 올리는 메서드
//	public void addMovieViewCount(int movieId) {
//		sqlSession.update("Movie.updateMovieViews", movieId);
//	}
	
	// 특정 날짜값을 범위로 두고 조회수가 높은순으로 정렬하여 값을 가져와 주는 메서드 : index 페이지 슬라이더 적용
	public List<MovieDTO> selectMoviesByViewCount(LocalDate startDate, LocalDate endDate) {
	    HashMap<String, Object> params = new HashMap<>();

	    // startDate와 endDate에 대한 null 체크 및 기본값 설정
	    LocalDate defaultStartDate = LocalDate.of(2020, 1, 1); // 기본 시작 날짜를 조정했습니다.
	    LocalDate defaultEndDate = LocalDate.of(2024, 3, 18); // 기본 종료 날짜입니다.

	    // 날짜를 정수형으로 변환하는 과정
	    // 자바 기본 라이브러리에서 받아오는 값과 다르므로 형변환이 필요. 사용하는 db나 컬럼데이터 타입에 따라 다를 수 있음.
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
	    // 서버측에서 미리 7개로 잘라서 보내주기
	}
		
		// 큰 슬라이더에 쓸 개봉일 내림차순 : 시간부족으로 구현 x 쿼리문에 90개만 가지고 오도록 제한.
		public List<MovieDTO> selectMoviesByReleaseDate() {
        List<MovieDTO> movieList = null;
        try {
            // 이번에는 파라미터가 필요 없으므로 별도의 맵을 만들지 않습니다.
            movieList = sqlSession.selectList("Movie.selectMoviesByReleaseDate");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
    }
	
	}




