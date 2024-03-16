package com.movie.web.servlet;

import java.time.LocalDate;
import java.util.List;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.CommentDAO;
import com.movie.web.dao.MovieDAO;
import com.movie.web.dto.CommentDTO;
import com.movie.web.dto.MovieDTO;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class ClickPosterAction implements Action {

    @Override
    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
        // 파라미터로 전달된 movieSeq 값 가져오기
        String movieSeq = request.getParameter("movieSeq");
        
        // MovieDAO 인스턴스 생성
        MovieDAO movieDAO = new MovieDAO();
        CommentDAO commentDAO = new CommentDAO();
        // 특정 영화 정보 가져오기
        List<MovieDTO> movieInfo = movieDAO.clickPoster(movieSeq);
        // 댓글 리스트 가져오기
        List<CommentDTO> commentList = commentDAO.getCmByMovieSeq(movieSeq);
        // 영화 정보를 request에 저장
        request.setAttribute("movieInfo", movieInfo);
        // 댓글 리스트를 request에 저장
        request.setAttribute("commentList", commentList);
        // JSP 페이지로 포워딩
        ActionForward forward = new ActionForward();
        forward.setPath("/movie/html/click-details.jsp?movieSeq="+movieSeq); // 영화 정보를 표시할 JSP 페이지 경로 설정
        forward.setRedirect(false); // 포워딩이므로 false로 설정
        
        return forward;
    }
}