package com.book.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.BookDao;

/**
 * Servlet implementation class BookDeleServlet
 * ɾ��ͼ��servlet
 */
@WebServlet("/BookDeleServlet")
public class BookDeleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookDao bookdao = new BookDao();
		
		Integer id = Integer.parseInt(request.getParameter("id"));
		bookdao.delete(id);
		
		request.getRequestDispatcher("/BookSearchAllServlet?flag=1").forward(request, response);
	}

}
