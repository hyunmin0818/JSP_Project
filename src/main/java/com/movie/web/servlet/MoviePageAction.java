// package com.movie.web.servlet;


// import com.movie.web.action.Action;
// import com.movie.web.action.ActionForward;
// import com.movie.web.dao.MovieDAO;

// import jakarta.servlet.http.HttpServletRequest;
// import jakarta.servlet.http.HttpServletResponse;

// public class MoviePageAction implements Action{

// 	@Override
// 	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) {
// 		MovieDAO mdao = new MovieDAO();
// 		ActionForward forward = new ActionForward();
// 		int totalCnt = mdao.getMovieCnt();
// 		String temp = request.getParameter("page");
// 		int page = 0;
// 		page = temp == null ? 1 : Integer.parseInt(temp);
		
// 		int pageSize = 10;
// 		int endRow = page * 10;  // 1페이지면 : 10, 4페이지 : 40
// 		int startRow = endRow - 9;	// 1페이지면 : 1, 4페이지 : 31
		
// 		// [1][2]..[10]:[1], [11],[12]...[20] : [11]
// 		int startPage = (page-1)/pageSize * pageSize+1;
// 		int endPage = startPage + pageSize-1;
// 		int totalPage = (totalCnt-1)/pageSize + 1;
		
// 		endPage = endPage> totalPage ? totalPage : endPage;
		
// 		request.setAttribute("boardList", mdao.getMovieList(startRow, endRow));
// 		// 게시판 전체 글의 갯수를 cnt
// 		request.setAttribute("totalCnt", totalCnt);
		
// 		request.setAttribute("totalPage", totalPage);
// 		request.setAttribute("nowPage", page);
// 		request.setAttribute("startPage", startPage);
// 		request.setAttribute("endPage", endPage);
		

		
// 		forward.setRedirect(false);
// 		forward.setPath(request.getContextPath() + "");
// 		return forward;
// 	}
	
// }
