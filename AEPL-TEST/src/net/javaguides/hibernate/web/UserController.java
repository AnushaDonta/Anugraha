package net.javaguides.hibernate.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.javaguides.hibernate.dao.UserDao;
import net.javaguides.hibernate.model.User;

/**
 * @email Ramesh Fadatare
 */

@WebServlet("/register")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDao userDao;

	public void init() {
		userDao = new UserDao();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		register(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.sendRedirect("register.jsp");
	}

	private void register(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		long phoneNo = request.getParameter("phoneNo");
		String DOB = request.getParameter("DOB");
		String location=request.getParameter("location");
		char[] identity=request.getParameter("identifier");

		User user = new User();
		user.setName(name);
		user.setEmail(email);
		user.setPhoneNo(phoneNo);
		user.setDOB(DOB);
		user.setLocation(location);
		user.setIdentity(identity);

		userDao.saveUser(user);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("register-success.jsp");
		dispatcher.forward(request, response);
	}
}
