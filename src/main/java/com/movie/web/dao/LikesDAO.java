package com.movie.web.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.mybatis.SqlMapConfig;

public class LikesDAO {
    private SqlSession sqlSession;

    public LikesDAO(SqlSession sqlSession) {
        this.sqlSession = sqlSession;
    }

    // 영화 좋아요 수 증가
    public void incrementMovieLikes(String movieSeq) {
        try {
            sqlSession.update("Movie.incrementMovieLikes", movieSeq);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    // 영화 좋아요 수 감소
    public void decrementMovieLikes(String movieSeq) {
        try {
            sqlSession.update("Movie.decrementMovieLikes", movieSeq);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
