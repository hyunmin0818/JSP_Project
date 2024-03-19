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

    // 영화 좋아요 추가 및 좋아요 수 업데이트
    public boolean addLikeAndUpdateLikesCount(LikesDTO ldto) {
        int result = sqlsession.update("Movie.UpdateLikesCount", ldto);
        System.out.println(ldto.getMovieSeq());
        System.out.println(ldto.getUser_Id());
        System.out.println(result);
        return result > 0;
    }

    // 영화 좋아요 취소
    public boolean removeLike(LikesDTO ldto) {
        int result = sqlsession.delete("Movie.removeLikeAndUpdateLikesCount", ldto);
        return result > 0;
    }

    // 특정 영화에 대한 좋아요 수 조회
    public int getLikesCount(int movieLike) {
        // 예를 들어, MyBatis를 사용하여 DB에서 좋아요 수를 가져오는 코드
        Integer likesCount = sqlsession.selectOne("Movie.getLikesCount", movieLike);
        
        // null 체크를 추가하여 NullPointerException 방지
        if (likesCount != null) {
            return likesCount.intValue();
        } else {
            // 좋아요 수가 null인 경우 기본값이나 예외 처리를 할 수 있음
            return 0; // 예시로 0을 반환하도록 설정
        }
    }
//    
//    // 영화 좋아요 수를 내림차순으로 페이징하여 가져오기
//    public List<MovieDTO> getLikesCountDescPaging(int start, int offset) {
//        HashMap<String, Integer> params = new HashMap<>();
//        params.put("start", start);
//        params.put("offset", offset);
//        List<MovieDTO> movieList
//        = sqlsession.selectList("Movie.getLikesCountDescPaging", params);
//        
//        return movieList;
//    }
    
    
}
