package com.movie.web.servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

import org.json.simple.JSONObject;

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

		HttpSession session = request.getSession(false);	// 세션이 생성되어있을 경우 이전 세션을 유지합니다.
		UserDAO udao = new UserDAO();
		UserDTO udto = new UserDTO();

		// 세션에서 "userinfo"로 저장된 UserDTO 객체 가져오기
		UserDTO userInfo = null;
		if (session != null) {
			userInfo = (UserDTO) session.getAttribute("userinfo");
		}

		// 파라미터로 전달된 movieSeq 값 가져오기
		String movieSeq = request.getParameter("movieSeq");

		int movieSeq1 = Integer.parseInt(movieSeq);

		// 영화 조회수 업데이트
		MovieDAO movieDAO = new MovieDAO();
		movieDAO.updateMovieViews(movieSeq1);

		// 업데이트된 영화 조회수 가져오기
		Integer views = movieDAO.getMovieViews(movieSeq1);
		// 반환된 조회수가 null인 경우 기본값으로 0을 사용
		int updatedViews = (views != null) ? views.intValue() : 0;

		// JSON 객체 생성
		JSONObject jsonResponse = new JSONObject();
		jsonResponse.put("updatedViews", updatedViews);
		System.out.println(updatedViews);

		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		try {
			response.getWriter().write(jsonResponse.toString());
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}

		// 영화 정보 가져오기
		List<MovieDTO> movieInfo = movieDAO.clickPoster(movieSeq);

		if (!movieInfo.isEmpty()) {						
			String genre = movieInfo.get(0).getGenre();		// 검색한 movieSeq 값의 장르를 담아옵니다.
			String[] genreArray = genre.split(",");		// 속성이 분리되지 않았으므로 "," 구분자를 가지고 잘라 배열을 만들어 줍니다.

			List<MovieDTO> similarMovies = new ArrayList<>();
			for (String singleGenre : genreArray) {				// 반복문을 돌면서 비슷한 장르의 영화 데이터를 객체에 담아옵니다.
				similarMovies.addAll(movieDAO.searchMoviesByGenre(singleGenre.trim()));
			}					// 같은 데이터를 가진 영화가 중복되어 들어오는것을 제거해주고 unique한 값으로 반환합니다.

			HashSet<MovieDTO> uniqueMovies = new HashSet<>(similarMovies);
			similarMovies = new ArrayList<>(uniqueMovies);

			// 댓글 정보 가져오기
			CommentDAO commentDAO = new CommentDAO();
			
			List<CommentDTO> commentList = commentDAO.getCmByMovieSeq(movieSeq);
			
			// 정보를 request에 저장
			request.setAttribute("movieInfo", movieInfo);
			request.setAttribute("similarMovies", similarMovies);	// 페이지에 함께 렌더링 될 정보를 담아줍니다.
			request.setAttribute("commentList", commentList);

			// JSP 페이지로 포워딩
			ActionForward forward = new ActionForward();
			forward.setPath("/movie/html/click-details.jsp?movieSeq=" + movieSeq); 
			forward.setRedirect(false);

			return forward;
		} else {
			// 영화 정보가 없는 경우의 처리 로직 추가 (옵션)
			return null; // 혹은 오류 페이지로 리다이렉션
		}
	}
}
