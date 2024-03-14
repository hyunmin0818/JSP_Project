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

    /**
     * 로그인을 시도합니다.
     * @param userid 사용자 아이디
     * @param userpassword 사용자 비밀번호
     * @return 로그인 성공 여부
     */
    public boolean submit(String userid, String userpassword) {
        boolean result = false;
        HashMap<String, String> datas = new HashMap<>();
        datas.put("user_id", userid);
        datas.put("userpassword", userpassword);
        
        if ((Integer)sqlSession.selectOne("User.submit", datas) == 1) {
            return true;
        }
        
        return result;
    }

    /**
     * 사용자 정보를 조회합니다.
     * @param userid 사용자 아이디
     * @return 사용자 정보
     */
    public UserDTO getDetail(String userid) {
        return sqlSession.selectOne("User.getDetail", userid);
    }

    /**
     * 회원가입을 처리합니다.
     * @param udto 사용자 DTO 객체
     * @return 회원가입 성공 여부
     */
    public boolean join(UserDTO udto) {
        boolean result = false;
        if (sqlSession.insert("User.join", udto) == 1) {
            result = true;
        }
        return result;
    }

    /**
     * 아이디 중복 여부를 확인합니다.
     * @param userid 사용자 아이디
     * @return 아이디 중복 여부
     */
    public boolean checkId(String userid) {
        boolean result = false;
        int cnt = 0;
        cnt = sqlSession.selectOne("User.checkId", userid);
        if (cnt >= 1) {
            result = true;
        }
        return result;
    }

    /**
     * 사용자 정보를 조회합니다.
     * @param userid 사용자 아이디
     * @return 사용자 정보
     */
    public UserDTO getUserInfo(String userid) {
        HashMap<String, String> datas = new HashMap<>();
        datas.put("userid", userid);
        UserDTO userInfo = sqlSession.selectOne("User.getList", datas);
        System.out.println("userInfo 객체 상태: " + (userInfo != null ? "존재함" : "null"));
        return userInfo;
    }

    /**
     * 아이디로 사용자 정보를 검색합니다.
     * @param userid 사용자 아이디
     * @return 사용자 정보
     */
    public UserDTO searchById(String userid) {
        return sqlSession.selectOne("User.searchById", userid);
    }

    /**
     * 영화 정보를 추가합니다.
     * @param map 영화 정보 맵
     */
    public void insertMovie(Map<String, Object> map) {
        sqlSession.insert("mapper.movieinsert", map);
    }
}
