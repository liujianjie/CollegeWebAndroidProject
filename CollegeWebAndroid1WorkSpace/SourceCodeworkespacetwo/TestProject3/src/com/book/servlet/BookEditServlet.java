package com.book.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.Book;
import com.dao.BookDao;

/**
 * Servlet implementation class BookEditServlet
 * �޸�ͼ��servlet
 */
@WebServlet("/BookEditServlet")
public class BookEditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookDao bookdao = new BookDao();
		Book book = new Book();
		request.setCharacterEncoding("utf-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		Double price = Double.parseDouble(request.getParameter("price"));
		System.out.println(price);
		book.setId(id);
		book.setName(name);
		book.setPrice(price);
		bookdao.update(book);

		request.getRequestDispatcher("/BookSearchAllServlet?flag=1").forward(request, response);
	}

}
