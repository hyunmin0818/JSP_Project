package com.movie.web.dao;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.dto.CommentDTO;
import com.movie.web.mybatis.SqlMapConfig;

public class CommentDAO {
    
	private static int commentIdCounter = 26; // 클래스 멤버 변수로 옮김
    
	SqlSessionFactory factory = SqlMapConfig.getFactory();
    SqlSession sqlSession;

    public CommentDAO() {
        sqlSession = factory.openSession(true);
    }

    // commentIdCounter에 대한 동기화된 접근 메서드
    private static synchronized int getNextCommentId() {
        return commentIdCounter++; // 현재 값을 반환하고 1 증가
    }
	   // movie 파라미터를 기준으로 모든 댓글 정보를 가져오는 메서드
	      public List<CommentDTO> getCommentList(String title) {
	          List<CommentDTO> commentList = new ArrayList<CommentDTO>();
	          try {
	        	  commentList = sqlSession.selectList("Movie.getCommentList", title);
	          } catch (Exception e) {
	              e.printStackTrace();
	          }
	          return commentList;
	         
	   }
	      // 클릭시 댓글리스트 갖고오기
	      public List<CommentDTO> getCmByMovieSeq(String movieSeq) {
	    	    List<CommentDTO> commentList = new ArrayList<CommentDTO>();
	    	    try {
	    	        commentList = sqlSession.selectList("Movie.getCmByMovieSeq", movieSeq);
	    	    } catch (Exception e) {
	    	        e.printStackTrace();
	    	    }
	    	    return commentList;
	    	}
	      public boolean insertComment(String user_id, String comment, String movieSeq) {
	    	    boolean result = false;
	    	    
	    	    // 댓글 추가를 위한 정보를 HashMap에 저장
	    	    HashMap<String, Object> params = new HashMap<>();
	    	    params.put("comment_id", getNextCommentId()); // 동기화된 메서드를 통해 id 획득
	    	    params.put("user_id", user_id);
	    	    params.put("operator_id", null); // 고정값, 나중에 테이블에 insert된 정보에 따라 수정
	    	    params.put("comment", comment);
	    	    params.put("movieSeq", movieSeq); // 인자로 받은 movieSeq 사용

	    	    // sqlSession.insert 메서드를 사용하여 댓글 추가 실행
	    	    if(sqlSession.insert("Movie.insertComment", params) == 1) {
	    	        result = true;
	    	    }
	    	    
	    	    return result;
	    	}
	      
	     
	      // comment_id를 기준으로 댓글을 삭제하는 메서드
	      public boolean deleteComment(int comment_id , String user_id) {
	          boolean result = false;
	          
	          // 댓글 삭제를 위한 comment_id 값을 HashMap에 저장
	          HashMap<String, Object> params = new HashMap<>();
	          params.put("comment_id", comment_id);
	          params.put("user_id",user_id);
	          
	          // sqlSession.delete 메서드를 사용하여 댓글 삭제 실행
	          if(sqlSession.delete("Movie.deleteComment", params) == 1) {
	              result = true;
	          }
	          
	          return result;
	      }
	      
	      // 시간남으면 추가할 기능 : 관리자 로그인일 경우 ... 
	      public boolean deleteCoIfUserIsOperator(int comment_id, String user_id) {
	    	    // 결과 초기화
	    	    boolean result = false;

	    	    // 파라미터로 전달할 HashMap 생성
	    	    HashMap<String, Object> params = new HashMap<>();
	    	    params.put("comment_id", comment_id);
	    	    params.put("user_id", user_id); // 여기서 user_id는 로그인한 사용자의 ID입니다.

	    	    // sqlSession.delete 메서드를 사용하여 조건을 만족하는 댓글 삭제 실행
	    	    // "Movie.deleteCommentIfUserIsOperator"는 MyBatis 매퍼에서 정의할 쿼리의 ID입니다.
	    	    if(sqlSession.delete("Movie.deleteCoIfUserIsOperator", params) == 1) {
	    	        result = true;
	    	    }

	    	    return result;
	    	}
		
			// 영화 시퀀스를 기준으로 댓글 수를 가져오는 메서드
			public int getCommentCountByMovieSeq(String movieSeq) {
				int commentCount = 0;
				try {
					commentCount = sqlSession.selectOne("Movie.getCmByMovieSeq", movieSeq);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return commentCount;
			}



}	
