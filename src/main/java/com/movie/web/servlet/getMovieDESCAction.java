//package com.movie.web.servlet;
//
//
//import java.io.IOException;
//import java.text.SimpleDateFormat;
//import java.util.List;
//
//import org.json.simple.JSONArray;
//import org.json.simple.JSONObject;
//
//
//import jakarta.servlet.ServletException;
//import jakarta.servlet.annotation.WebServlet;
//import jakarta.servlet.http.HttpServlet;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletResponse;
//
//@WebServlet("/movie/getMovieDESC.mo")
//public class getMovieDESCAction extends HttpServlet {
//   @Override
//   protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//      BookDAO bdao = new BookDAO();
//      BookDTO bdto = new BookDTO();
//      int startRow = 1;
//      int endRow = 5;
//
//      // BookDAO의 traffic 메서드를 호출하여 BookDTO 객체 리스트를 가져옵니다.
//      List<BookDTO> responseBody = bdao.traffic(startRow, endRow);
//      // 각 BookDTO 객체를 JSON 객체로 변환하고 JSON 배열에 추가합니다.
//      JSONArray jsonArray = new JSONArray();
//
//      for (BookDTO book : responseBody) {
//         JSONObject bookJson = new JSONObject();
//         bookJson.put("isbn", book.getIsbn());
//         bookJson.put("title", book.getTitle());
//         bookJson.put("image", book.getImage());
//         bookJson.put("author", book.getAuthor());
//         bookJson.put("discount", book.getDiscount());
//         bookJson.put("publisher", book.getPublisher());
//         bookJson.put("description", book.getDescription());
//         SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
//         String date = formatter.format(book.getPubdate());
//         bookJson.put("pubdate", date);
//         jsonArray.add(bookJson);
//      }
//
//      // 최종적으로 생성된 JSON 배열을 문자열로 변환합니다.
//      String jsonText = jsonArray.toJSONString();
//      System.out.println(jsonText);
//
//      // JSON 문자열을 응답으로 보냅니다. 아래 코드는 서블릿에서 응답을 보내는 예시입니다.
//        resp.setContentType("text/html; charset=utf-8");
//      resp.getWriter().write(jsonText);
//   }
//}