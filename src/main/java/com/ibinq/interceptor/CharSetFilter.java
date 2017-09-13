package com.ibinq.interceptor;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * @author wanghua
 *
 */
public class CharSetFilter implements Filter {
	
	private String encode;
	
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("正在统一编码格式");
		response.setContentType("text/html;charset:"+encode);
		response.setCharacterEncoding(encode);
		request.setCharacterEncoding(encode);
		chain.doFilter(request, response);
	}

	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub
		encode = filterConfig.getInitParameter("encoding");
		System.out.println("获取字符编码格式："+encode);
	}

}
