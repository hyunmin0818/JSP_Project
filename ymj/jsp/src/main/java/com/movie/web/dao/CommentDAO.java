package com.movie.web.dao;

import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.movie.web.dto.CommentDTO;
import com.movie.web.mybatis.SqlMapConfig;

public class CommentDAO {

	 SqlSessionFactory factory = SqlMapConfig.getFactory();
	   SqlSession sqlSession;
	   
	   public CommentDAO(){
	      sqlSession = factory.openSession(true);
	   }   
	      // movie_seq를 기준으로 모든 댓글 정보를 가져오는 메서드
	      public List<CommentDTO> getCommentList(String movie_seq) {
	          List<CommentDTO> commentList = null;
	          try {
	              commentList = sqlSession.selectList("Movie.getCommentList", movie_seq);
	          } catch (Exception e) {
	              e.printStackTrace();
	          }
	          return commentList;
	         
	   }
	      // 댓글 수정
	      public boolean updateComment(int comment_id, String comment, LocalDateTime commentTime) {
	          boolean result = false;
	          
	          HashMap<String, Object> params = new HashMap<>();
	          params.put("comment_id", comment_id);
	          params.put("comment", comment);
	          params.put("commentTime", commentTime);
	          
	          if(sqlSession.update("Movie.updateComment", params) == 1) {
	              result = true;
	          }
	          
	          return result;
	      }
	      // comment_id를 기준으로 댓글을 삭제하는 메서드
	      public boolean deleteComment(int comment_id) {
	          boolean result = false;
	          
	          // 댓글 삭제를 위한 comment_id 값을 HashMap에 저장
	          HashMap<String, Object> params = new HashMap<>();
	          params.put("comment_id", comment_id);
	          
	          // sqlSession.delete 메서드를 사용하여 댓글 삭제 실행
	          if(sqlSession.delete("Movie.deleteComment", params) == 1) {
	              result = true;
	          }
	          
	          return result;
	      }
}
