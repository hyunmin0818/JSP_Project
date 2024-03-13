package com.movie.web.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.mybatis.SqlMapConfig;

public class CommentDAO {

	 SqlSessionFactory factory = SqlMapConfig.getFactory();
	   SqlSession sqlSession;
	   
	   public CommentDAO(){
	      sqlSession = factory.openSession(true);
	      
	      
	   }
}
