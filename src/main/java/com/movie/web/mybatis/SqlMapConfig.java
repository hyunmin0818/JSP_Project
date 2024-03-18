package com.movie.web.mybatis;

import java.io.Reader;



import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class SqlMapConfig {
	private static SqlSessionFactory factory;
	
	// 클래스 초기화 블럭
	static {
		try{
			String resource = "com/movie/web/mybatis/config.xml";
			Reader reader = Resources.getResourceAsReader(resource);
			factory = new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println("경로이상");
		}
		
	}
	
	public static SqlSessionFactory getFactory() {
		return factory;
	}
}
