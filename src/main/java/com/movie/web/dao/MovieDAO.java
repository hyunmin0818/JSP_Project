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
		
	

	public List<MovieDAO> searchMovies(String parameter) {
		
		return null;
	}
	public List<MovieDTO> getMovieList(int startRow, int endRow) {
		HashMap<String, Integer> datas = new HashMap<>();
		datas.put("startRow", startRow);
		datas.put("endRow", endRow);
		List <MovieDTO> MovieList
			= sqlSession.selectList("Movie.getMovieList", datas);
		return MovieList;
	}

	public int getMovieCnt() {
			return sqlSession.selectOne("Movie.getCoListCnt");
			
			
		}
	
	}
	   
	
