package com.movie.web.filter;

import java.io.IOException;


import org.mindrot.jbcrypt.BCrypt;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequestWrapper;


@WebFilter("*.ms")
public class PasswordEncodingFilter implements Filter {				// join시 패스워드를 암호화해서 저장해줌.
																	// 테스트를 반복해야 할 경우 주석문으로 막아주는게 좋습니다.

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        // 필터 초기화 시 필요한 코드를 여기에 작성합니다.
        // 특별히 초기화할 내용이 없다면 비워둘 수 있습니다.
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
            throws IOException, ServletException {
        HttpServletRequest httpRequest = (HttpServletRequest) request;
        HttpServletRequestWrapper wrappedRequest = new HttpServletRequestWrapper(httpRequest) {
            @Override
            public String getParameter(String name) {
                if ("userpassword".equals(name)) {
                    String password = super.getParameter(name);
                    return BCrypt.hashpw(password, org.mindrot.jbcrypt.BCrypt.gensalt()); 
                }
                return super.getParameter(name);
            }
        };

        chain.doFilter(wrappedRequest, response);
    }

    @Override
    public void destroy() {
        // 필터가 소멸될 때 필요한 코드
        
        // 대부분의 경우 비워둠
    }
}

	
