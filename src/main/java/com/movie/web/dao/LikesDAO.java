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
    private SqlSession sqlSession;

    public LikesDAO(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    // 영화 좋아요 추가 및 좋아요 수 업데이트
    public boolean addLikeAndUpdateLikesCount(LikesDTO ldto) {
        int result = sqlSession.update("Movie.UpdateLikesCount", ldto);
        return result > 0;
    }

    // 영화 좋아요 취소
    public boolean removeLike(LikesDTO ldto) {
        int result = sqlSession.delete("Movie.removeLikeAndUpdateLikesCount", ldto);
        return result > 0;
    }

    // 특정 영화에 대한 좋아요 수 조회
    public int getLikesCount(String movieSeq) {
        return sqlSession.selectOne("Movie.getLikesCount", movieSeq);
    }
    
    // 영화 좋아요 수를 내림차순으로 페이징하여 가져오기
    public List<Integer> getLikesCountDescPaging(int start, int offset) {
        Map<String, Integer> params = new HashMap<>();
        params.put("start", start);
        params.put("offset", offset);
        return sqlSession.selectList("Movie.getLikesCountDescPaging", params);
    }
    
    
}
