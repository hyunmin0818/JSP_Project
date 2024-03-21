package com.movie.web.dao;

import java.util.HashMap;


import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.dto.MovieDTO;
import com.movie.web.mybatis.SqlMapConfig;
import java.util.Map;

public class UserDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = factory.openSession(true);
	}
	
	public boolean insertMovie(MovieDTO mdto) {
		System.out.println(mdto.getMovieSeq());
		boolean result = false;
        if(sqlSession.insert("mapper.movieinsert", mdto) == 1) {
        	result = true;
        }
        return result;
    }
	

}