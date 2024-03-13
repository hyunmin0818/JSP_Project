package com.movie.web.dao;

import java.util.HashMap;


import java.util.List;
import java.util.Map;

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

	public boolean submit(String user_id, String userpassword) {	// 로그인 
		boolean result = false;
		HashMap <String, Object> datas = new HashMap<String, Object>();
		datas.put("user_id", user_id);
		datas.put("userpassword", userpassword);
		
		
		if((Integer)sqlSession.selectOne("User.submit", datas)== 1) {
			return true;
		}
		 
		return result;
	}

	public UserDTO getDetail(String user_id ) {
		return sqlSession.selectOne("User.getDetail", user_id);
	}

	public boolean join(UserDTO udto) {
		boolean result = false;
		if(sqlSession.insert("User.join",udto) == 1) {
			result = true;
		}
		return result;
	}


	public boolean checkId(String user_id) {
		boolean result = false;
		int cnt = 0;

		cnt = sqlSession.selectOne("User.checkId", user_id);
		if(cnt >= 1) {
			result =true;
		}

		return result;
	}

	public UserDTO getUserInfo(String user_id) {
	    HashMap<String, Object> datas = new HashMap<>();
	    datas.put("user_id", user_id);
	    
	    UserDTO userInfo = sqlSession.selectOne("User.getList", datas);
	    System.out.println("userInfo 객체 상태: " + (userInfo != null ? "존재함" : "null"));
	    return userInfo;
	}
	

	public UserDTO searchById (String user_id){
		UserDTO udto = null;
		return sqlSession.selectOne("User.searchById",user_id);

	}

	public void insertMovie(Map<String, Object> map) {
        sqlSession.insert("mapper.movieinsert", map);
    }
	
}