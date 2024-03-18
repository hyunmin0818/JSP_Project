package com.movie.web.dao;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.dto.LikesDTO;
import com.movie.web.dto.MovieDTO;
import com.movie.web.mybatis.SqlMapConfig;

public class LikesDAO {
	SqlSessionFactory factory = SqlMapConfig.getFactory();
	SqlSession sqlsession;
    
	public LikesDAO() {
		sqlsession = factory.openSession(true);
	}
	
    public void LikesDAO(SqlSession sqlSession) {
        this.sqlsession = sqlSession;
    }

    // 영화 좋아요 추가 및 좋아요 수 업데이트
    public boolean addLikeAndUpdateLikesCount(LikesDTO ldto) {
        int result = sqlsession.update("Movie.UpdateLikesCount", ldto);
        return result > 0;
    }

    // 영화 좋아요 취소
    public boolean removeLike(LikesDTO ldto) {
        int result = sqlsession.delete("Movie.removeLikeAndUpdateLikesCount", ldto);
        return result > 0;
    }

    // 특정 영화에 대한 좋아요 수 조회
    public int getLikesCount(int movie_likes) {
        return sqlsession.selectOne("Movie.getLikesCount", movie_likes);
    }
    
    // 영화 좋아요 수를 내림차순으로 페이징하여 가져오기
    public List<MovieDTO> getLikesCountDescPaging(int start, int offset) {
        HashMap<String, Integer> params = new HashMap<>();
        params.put("start", start);
        params.put("offset", offset);
        List<MovieDTO> movieList
        = sqlsession.selectList("Movie.getLikesCountDescPaging", params);
        
        return movieList;
    }
    
    
}
