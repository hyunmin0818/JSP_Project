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
//public class PasswordEncodingFilter implements Filter{
//
//	 @Override
//	    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
//	            throws IOException, ServletException {
//	        HttpServletRequest httpRequest = (HttpServletRequest) request;
//	        HttpServletRequestWrapper wrappedRequest = new HttpServletRequestWrapper(httpRequest) {
//	            @Override
//	            public String getParameter(String name) {
//	                if ("userpassword".equals(name)) {
//	                    String password = super.getParameter(name);
//	                    return BCrypt.hashpw(password, BCrypt.gensalt());
//	                }
//	                return super.getParameter(name);
//	            }
//	        };
//	        chain.doFilter(wrappedRequest, response);
//	    }
//
//	public void destroy() {
//		// 필터가 소멸될 때의 코드 추가 (필요에 따라 구현)
//	}
//	@Override
//	public void init(FilterConfig filterConfig) throws ServletException {
//	    // 초기화 코드 (필요한 경우)
//	}
//	}

	// 기능 적용아직 안됬음...
