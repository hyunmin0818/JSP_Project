package com.movie.web.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.dto.UserDTO;
import com.movie.web.mybatis.SqlMapConfig;

public class UserDAO {

	// SqlSessionFactory를 생성합니다.
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlSession;

	public UserDAO() {
		sqlSession = factory.openSession(true);
	}

	// 사용자가 입력한 아이디와 비밀번호를 확인하여 로그인을 수행하는 메서드
	public boolean submit(String user_id, String userpassword) {
		boolean result = false;
		// 데이터를 저장할 HashMap을 생성
		HashMap<String, Object> datas = new HashMap<String, Object>();
		// 아이디와 비밀번호를 HashMap에 저장합니다.
		datas.put("user_id", user_id);
		datas.put("userpassword", userpassword);

		// 사용자의 아이디와 비밀번호를 확인하여 결과를 반환
		if ((Integer) sqlSession.selectOne("User.submit", datas) == 1) {
			return true;
		}

		return result;
	}

	// 사용자의 상세 정보를 조회하는 메서드
	public UserDTO getDetail(String user_id) {
		return sqlSession.selectOne("User.getDetail", user_id);
	}

	// 사용자 회원가입을 처리하는 메서드
	public boolean join(UserDTO udto) {
		boolean result = false;
		// 회원 정보를 저장하고 성공 여부를 반환합니다.
		if (sqlSession.insert("User.join", udto) == 1) {
			result = true;
		}
		return result;
	}

	// 사용자 아이디 중복을 체크하는 메서드
	public boolean checkId(String user_id) {
		boolean result = false;
		int cnt = 0;
		// 중복된 아이디의 수를 확인합니다.
		cnt = sqlSession.selectOne("User.checkId", user_id);
		if (cnt >= 1) {
			result = true;
		}
		return result;
	}

	// 사용자 정보를 조회하는 메서드
	public UserDTO getUserInfo(String user_id) {
		HashMap<String, Object> datas = new HashMap<>();
		datas.put("user_id", user_id);
		// 사용자 정보를 조회하여 반환합니다.
		UserDTO userInfo = sqlSession.selectOne("User.getList", datas);
		System.out.println("userInfo 객체 상태: " + (userInfo != null ? "존재함" : "null"));
		return userInfo;
	}

	// 사용자 아이디로 검색하여 정보를 가져오는 메서드
	public UserDTO searchById(String user_id) {
		UserDTO udto = null;
		return sqlSession.selectOne("User.searchById", user_id);
	}

	// 사용자 정보를 수정하는 메서드
	public boolean updateUserinfo(String user_id, String username, String userphone, String userbirth, String email) {
		boolean result = false;

		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("user_id", user_id);
		datas.put("username", username);
		datas.put("userphone", userphone);
		datas.put("userbirth", userbirth);
		datas.put("email", email);

		// 사용자 정보를 수정하고 결과를 반환합니다.
		if (sqlSession.update("User.updateUserinfo", datas) == 1) {
			result = true;
		}

		return result;
	}

	// 사용자 아이디를 찾는 메서드
	public String searchId(String username, String userbirth, String userphone) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("username", username);
		params.put("userbirth", userbirth);
		params.put("userphone", userphone);

		// 사용자 아이디를 찾아 반환합니다.
		return sqlSession.selectOne("User.findUserId", params);
	}

	// 사용자 비밀번호를 찾는 메서드 : 실제로 프론트 페이지에서 입력하는 값을 받아오기.
	public String searchPw(String user_id) {
		HashMap<String, Object> params = new HashMap<String, Object>();
		params.put("user_id", user_id);

		// 사용자 비밀번호를 찾아 반환합니다.
		return sqlSession.selectOne("User.findUserPassword", params);
	}

}
