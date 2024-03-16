package com.movie.web.servlet;

import com.movie.web.action.Action;
import com.movie.web.action.ActionForward;
import com.movie.web.dao.MovieDAO;
import com.movie.web.dto.MovieDTO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.util.List;

public class LoginOkIndexAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
		ActionForward forward = new ActionForward();
		String userId = request.getParameter("user_id");

		MovieDAO mdao = new MovieDAO();
		int totalCnt = mdao.getMovieCnt();

		String temp = request.getParameter("page");
		int pageIndex;
		try {
			pageIndex = temp == null ? 1 : Integer.parseInt(temp);
		} catch (NumberFormatException e) {
			pageIndex = 1; // 잘못된 파라미터 값이 전달될 경우 기본값으로 설정
		}

		int pageSize = 10;
		int endRow = pageIndex * pageSize;
		int startRow = endRow - pageSize + 1;

		int startPage = ((pageIndex - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + pageSize - 1;
		int totalPage = (totalCnt - 1) / pageSize + 1;

		endPage = Math.min(endPage, totalPage);

		List<MovieDTO> movieList = mdao.getMovieList(startRow, endRow);

		request.setAttribute("movieList", movieList); // 영화 목록을 request에 저장
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("pageIndex", pageIndex);


		forward.setPath("/movie/index.jsp"); // 이동할 JSP 페이지 경로
		forward.setRedirect(false);
		return forward;
	}
}
