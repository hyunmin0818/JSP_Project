package com.movie.web.servlet;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.CommentDAO;
import com.movie.web.dao.MovieDAO;
import com.movie.web.dao.UserDAO;
import com.movie.web.dto.CommentDTO;
import com.movie.web.dto.MovieDTO;
import com.movie.web.dto.UserDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class ClickPosterAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        HttpSession session = request.getSession(false); 
        UserDAO udao = new UserDAO();
        UserDTO udto = new UserDTO();
        
        // 세션에서 "userinfo"로 저장된 UserDTO 객체 가져오기
        UserDTO userInfo = null;
        if (session != null) {
            userInfo = (UserDTO) session.getAttribute("userinfo");
        }
        
        // 파라미터로 전달된 movieSeq 값 가져오기
        String movieSeq = request.getParameter("movieSeq");
        
        // MovieDAO 인스턴스 생성
        MovieDAO movieDAO = new MovieDAO();
        
        // 특정 영화 정보 가져오기
        List<MovieDTO> movieInfo = movieDAO.clickPoster(movieSeq);
        
        // 영화 장르 가져오기
        String genre = movieInfo.get(0).getGenre(); // 가정: movieInfo 리스트의 첫 번째 항목에서 장르 정보를 가져옴
        
        String[] genreArray = genre.split(",");
        // 비슷한 장르의 영화 찾기
        List<MovieDTO> similarMovies = new ArrayList<>();
        
     // 각 장르에 대해 비슷한 영화 찾기
        for (String singleGenre : genreArray) {
            similarMovies.addAll(movieDAO.searchMoviesByGenre(singleGenre.trim())); // trim으로 앞뒤 공백 제거
        }

        // 중복된 영화 정보 제거 (옵션)
        HashSet<MovieDTO> uniqueMovies = new HashSet<>(similarMovies);
        similarMovies = new ArrayList<>(uniqueMovies);
        // 댓글 DAO 인스턴스 생성
        CommentDAO commentDAO = new CommentDAO();
        
        // 댓글 리스트 가져오기
        List<CommentDTO> commentList = commentDAO.getCmByMovieSeq(movieSeq);
        
        // 영화 정보, 비슷한 장르 영화 정보, 댓글 리스트를 request에 저장
        request.setAttribute("movieInfo", movieInfo);
        request.setAttribute("similarMovies", similarMovies);
        request.setAttribute("commentList", commentList);
        
        // JSP 페이지로 포워딩
        ActionForward forward = new ActionForward();
        forward.setPath("/movie/html/click-details2.jsp?movieSeq=" + movieSeq); // 영화 정보와 비슷한 장르 영화 정보, 댓글 정보를 표시할 JSP 페이지 경로 설정
        forward.setRedirect(false); // 포워딩이므로 false로 설정
        
        return forward;
    }
}