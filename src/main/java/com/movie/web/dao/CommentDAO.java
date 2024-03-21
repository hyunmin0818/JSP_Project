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
    
	private static int commentIdCounter = 58; // 톰캣 서버를 재기동 할 때마다 다시 선언해 주어야하는 상수값.
											  // DB값을 받아올 수 있도록 연동해 주거나 컬럼에 SEQ를 생성해 주는것이
											  // 유지보수에 용이
    
	SqlSessionFactory factory = SqlMapConfig.getFactory();
    SqlSession sqlSession;

    public CommentDAO() {
        sqlSession = factory.openSession(true);
    }

    // commentIdCounter에 대한 동기화된 접근 메서드
    private static synchronized int getNextCommentId() {
        return commentIdCounter++; // 현재 값을 반환하고 1 증가			// 상단에 선언된 상수값에 대해 업데이트
    }
	   
    
    	  // movie 파라미터를 기준으로 모든 댓글 정보를 가져오는 메서드 였으나 DB 컬럼의 데이터 타입에 따라 액션 클래스에서 
    	  // '%' + (param) + '%' 에 대한 값을 돌려주지 못하는 경우가 생길 수 있으므로 여기에선 title로 제한 
	      public List<CommentDTO> getCommentList(String title) {
	          List<CommentDTO> commentList = new ArrayList<CommentDTO>();
	          try {
	        	  commentList = sqlSession.selectList("Movie.getCommentList", title);
	          } catch (Exception e) {
	              e.printStackTrace();
	          }
	          return commentList;
	         
	   }
	      // 포스터 클릭시 댓글리스트 갖고오기 프론트에서 태그값과 경로값 설정에 따라 다양하게 활용가능
	      public List<CommentDTO> getCmByMovieSeq(String movieSeq) {
	    	    List<CommentDTO> commentList = new ArrayList<CommentDTO>();
	    	    try {
	    	        commentList = sqlSession.selectList("Movie.getCmByMovieSeq", movieSeq);
	    	    } catch (Exception e) {
	    	        e.printStackTrace();
	    	    }
	    	    return commentList;
	    	}
	     
	      
	      // 로그인한 유저 id, contents, 등록되는 댓글과 외래키로 연결된 테이블의 movieSeq
	      public boolean insertComment(String user_id, String comment, String movieSeq) {
	    	    boolean result = false;
	    	    
	    	    // 댓글 추가를 위한 정보를 HashMap에 저장
	    	    HashMap<String, Object> params = new HashMap<>();
	    	    params.put("comment_id", getNextCommentId()); // 동기화된 메서드를 통해 id 획득
	    	    params.put("user_id", user_id);
	    	    params.put("comment", comment);
	    	    params.put("movieSeq", movieSeq); // 인자로 받은 movieSeq 사용

			  	System.out.println("movieSeq : " + movieSeq);
				System.out.println("user_id: " + user_id);
			  	System.out.println("comment: " + comment);
			  	// 확인용 콘솔 출력
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
	          params.put("user_id",user_id);				// 로그인 후 본인댓글만 삭제 가능
	          
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
		
			// PK값 기준으로 댓글 수를 가져오는 메서드
			public int getCommentCountByMovieSeq(String movieSeq) {
				int commentCount = 0;
				try {
					commentCount = sqlSession.selectOne("Movie.getCmByMovieSeq", movieSeq);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return commentCount;
			}
			
			// 같은 기능..?
			public int selectCount(String movieSeq) {
				int commentCount = 0;
				try {
					commentCount = sqlSession.selectOne("Movie.getCmByMovieSeq", movieSeq);
				} catch (Exception e) {
					e.printStackTrace();
				}
				return commentCount;
			}
			


}	
