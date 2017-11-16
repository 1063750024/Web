package com.xdf.controller.news;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/newsServlet")
public class NewsServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// 获取method
		String method = req.getParameter("method");

		switch (method) {
		case "addNews":
			addNews();
			break;
		case "delNews":
			delNews();
			break;

		default:
			break;
		}

	}

	private void delNews() {
		System.out.println("shanchu");
	}

	// 新增
	private void addNews() {
		System.out.println("add");

	}

}
