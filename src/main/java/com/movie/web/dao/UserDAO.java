package com.movie.web.dao;

import java.util.HashMap;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.dto.UserDTO;
import com.movie.web.mybatis.SqlMapConfig;

public class UserDAO {
	
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;
	
	public UserDAO() {
		sqlSession = factory.openSession(true);
		
	}

	public boolean submit(String userid, String userpw) {	// 로그인 
		boolean result = false;
		HashMap <String, String> datas = new HashMap<String, String>();
		datas.put("userid", userid);
		datas.put("userpw", userpw);
		
		
		if((Integer)sqlSession.selectOne("User.submit", datas)== 1) {
			return true;
		}
		 
		return result;
	}

	public UserDTO getDetail(String usernum ) {
		return sqlSession.selectOne("User.getDetail", usernum);
	}

	public boolean join(UserDTO udto) {
		boolean result = false;
		if(sqlSession.insert("User.join",udto) == 1) {
			result = true;
		}
		return result;
	}

	 public boolean checkId(String userId) {
	        int count = sqlSession.selectOne("User.checkId", userId);
	        return count > 0;
	    }
		

	public UserDTO getDetail(int usernum ) {
		return sqlSession.selectOne("User.getDetail", usernum);
	}

	

}
