package com.movie.web.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.mybatis.SqlMapConfig;

public class MovieDAO {
	   
	   SqlSessionFactory factory = SqlMapConfig.getFactory();
	   SqlSession sqlSession;
	   
	   public MovieDAO (){
	      sqlSession = factory.openSession(true);
	   }

	public List<MovieDAO> searchMovies(String parameter) {
		
		return null;
	}
	   
	}
