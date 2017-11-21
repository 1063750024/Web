package com.xdf.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 * 
 * 针对于post请求设置的  解决乱码的过滤器
 */
public class CharsetFilter implements Filter {

	/**
	 * 服务器启动的时候  初始化
	 */
	@Override
	public void init(FilterConfig config) throws ServletException {
		System.out.println("CharsetFilter=============》init");
	}

	/**
	 * doFilter 
	 * 01.用户每访问一次项目，进入一次
	 * 02.务必要放行 chain.doFilter(request, response);
	 * 03.HttpServletRequest   extends  ServletRequest
	 *     它们两个都是接口
	 */
	@Override
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("CharsetFilter=============》doFilter");
		// 治本 解决post请求乱码问题
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/**
		 * 放行
		 * 01.如果有其他的过滤器 就去执行其他的过滤器
		 * 02.如果没有过滤器，则去执行响应的servlet
		 */
		chain.doFilter(request, response);
	}

	/**
	 * 服务器关闭的时候执行
	 */
	@Override
	public void destroy() {
		System.out.println("CharsetFilter=============》destroy");
	}
}
