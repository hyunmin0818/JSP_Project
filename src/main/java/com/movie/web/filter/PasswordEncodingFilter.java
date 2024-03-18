//package com.movie.web.filter;
//
//import java.io.IOException;
//
//import at.favre.lib.crypto.bcrypt.BCrypt;
//import jakarta.servlet.Filter;
//import jakarta.servlet.FilterChain;
//import jakarta.servlet.FilterConfig;
//import jakarta.servlet.ServletException;
//import jakarta.servlet.ServletRequest;
//import jakarta.servlet.ServletResponse;
//import jakarta.servlet.annotation.WebFilter;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpServletRequestWrapper;
//
//
//@WebFilter("*.ms")
//public class PasswordEncodingFilter implements Filter {
//
//    @Override
//    public void init(FilterConfig filterConfig) throws ServletException {
//        // 필터 초기화 시 필요한 코드를 여기에 작성합니다.
//        // 특별히 초기화할 내용이 없다면 비워둘 수 있습니다.
//    }
//
//    @Override
//    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//            throws IOException, ServletException {
//        HttpServletRequest httpRequest = (HttpServletRequest) request;
//        HttpServletRequestWrapper wrappedRequest = new HttpServletRequestWrapper(httpRequest) {
//            @Override
//            public String getParameter(String name) {
//                if ("userpassword".equals(name)) {
//                    String password = super.getParameter(name);
//                    return BCrypt.hashpw(password, BCrypt.gensalt());
//                }
//                return super.getParameter(name);
//            }
//        };
//
//        chain.doFilter(wrappedRequest, response);
//    }
//
//    @Override
//    public void destroy() {
//        // 필터가 소멸될 때 필요한 코드
//        
//        // 대부분의 경우 비워둠
//    }
//}
//
//	
