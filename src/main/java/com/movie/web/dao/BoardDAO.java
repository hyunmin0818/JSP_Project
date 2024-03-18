//package com.movie.web.dao;
//
//import com.movie.web.dto.MovieDTO;
//
//import com.movie.web.mybatis.SqlMapConfig;
//import org.apache.ibatis.session.SqlSession;
//import org.apache.ibatis.session.SqlSessionFactory;
//
//import java.util.HashMap;
//import java.util.List;
//
//public class BoardDAO {
//    SqlSessionFactory factory = SqlMapConfig.getFactory();
//    SqlSession sqlSession;
//
//    public BoardDAO() {
//        sqlSession = factory.openSession(true); // SqlSession 객체 생성 및 오픈, autoCommit 옵션 설정
//    }
//
//    // 게시글 목록을 가져오는 메서드
//    public List<MovieDTO> getBoardList(int startRow, int endRow) {
//        HashMap<String, Integer> datas = new HashMap<>(); // 파라미터를 담을 HashMap 객체 생성
//        datas.put("startRow", startRow); // 시작 행 번호 설정
//        datas.put("endRow", endRow); // 종료 행 번호 설정
//        List<MovieDTO> boardList = sqlSession.selectList("Board.getBoardList", datas); // 게시글 목록 조회
//        return boardList; // 조회된 게시글 목록 반환
//    }
//
//    // 게시글 총 개수를 가져오는 메서드
//    public int getBoardCnt() {
//        return sqlSession.selectOne("Movie.getMovieCnt"); // 게시글 총 개수 조회하여 반환
//    }
//
//    // 게시글을 추가하는 메서드
//    public boolean insertBoard(MovieDTO bdto) {
//        boolean result = false; // 추가 결과를 저장할 변수 초기화
//        if (sqlSession.insert("Movie.insertMovie", mdto) == 1) { // 게시글 추가 성공 시
//            result = true; // 결과를 true로 설정
//        }
//        return result; // 결과 반환
//    }
//
//    // 특정 게시글의 상세 정보를 가져오는 메서드
//    public MovieDTO getDetail(int boardnum) {
//        MovieDTO result = null; // 조회 결과를 담을 객체 초기화
//        result = sqlSession.selectOne("Movie.getDetail", movienum); // 특정 게시글의 상세 정보 조회
//        System.out.println(result.getBoardtitle()); // 조회한 게시글 제목 출력 (예시)
//        return result; // 조회된 게시글 정보 반환
//    }
//
//    // 게시글 조회수를 증가시키는 메서드
////    public void boardreadCountPlus(int boardnum) {
////        sqlSession.update("Board.boardreadCountPlus", boardnum); // 특정 게시글의 조회수 증가
////    }
//    }
