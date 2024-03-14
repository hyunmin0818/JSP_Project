package com.movie.web.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import com.movie.web.dto.MovieDTO;
import com.movie.web.mybatis.SqlMapConfig;

public class MovieDAO {
	   
	   SqlSessionFactory factory = SqlMapConfig.getFactory();
	   SqlSession sqlSession;
	   
	   public MovieDAO (){
	      sqlSession = factory.openSession(true);
	   }
	   public void insertMovie(Map<String, Object> map) {
	        sqlSession.insert("mapper.movieinsert", map);
	    }
		
	
	// 영화의 상세정보를 가져오는 메서드
	public List<MovieDTO> searchMovies(String parameter) {
        List<MovieDTO> movieList = null;
        try {
            HashMap<String, Object> paramMap = new HashMap<>();
            paramMap.put("parameter", "%" + parameter + "%"); // 부분 일치 검색을 위해 '%' 추가

            movieList = sqlSession.selectList("Movie.searchMovies", paramMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return movieList;
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
		return sqlSession.selectOne("Movie.getCoListCnt");
	}
	
	
}


