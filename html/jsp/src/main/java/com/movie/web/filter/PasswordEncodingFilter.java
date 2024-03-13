package com.movie.web.filter;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;


@WebFilter("*.ms")
public class PasswordEncodingFilter implements Filter{

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		chain.doFilter(request, response);
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// 초기화 코드 추가 (필요에 따라 구현)
	}

	public void destroy() {
		// 필터가 소멸될 때의 코드 추가 (필요에 따라 구현)
	}
	}
	// 기능 적용아직 안됬음...
