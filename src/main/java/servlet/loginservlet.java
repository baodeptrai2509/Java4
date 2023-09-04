package servlet;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//import model.User;

/**
 * Servlet implementation class loginservlet
 */
@WebServlet( "/loginservlet")
public class loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	static List<User> listUser = new ArrayList<User>();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
	throws ServletException, IOException {
		String username = CookieUtils.get("username", req);
		String password = CookieUtils.get("password", req);
	//	req.getRequestDispatcher("/views/user/index.jsp").forward(req, resp);
	req.getRequestDispatcher("/asmweb/login.jsp").forward(req, resp);
//	req.getRequestDispatcher("/views/user/index.jsp").forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
	throws ServletException, IOException {
		//String username = req.getParameter("username");
		//String password = req.getParameter("password");
		//String remember = req.getParameter("remember");
		
		
		resp.setCharacterEncoding("utf-8");
		resp.setCharacterEncoding("utf-8");
		String username = req.getParameter("username").toString();
		String password = req.getParameter("password").toString();
		Boolean remember = null;
		if (req.getParameter("remember") == null) {
			remember = false;
		} else {
			remember = true;
		}
		if (username == null || password == null) {
			req.setAttribute("message", "Tên đăng nhập và mật khẩu đều không được để trống!");
		} else {
			req.setAttribute("message", "Thêm thành công!");
			listUser.add(new User(username, password, remember));
			req.setAttribute("items", listUser);
		}
		req.getRequestDispatcher("/asmweb/user/index.jsp").forward(req, resp);
	
		
		
		if(!username.equalsIgnoreCase("poly")) {
			req.setAttribute("message", "Sai tên đăng nhập!");
			}
			else if(password.length() < 6) {
			req.setAttribute("message", "Sai mật khẩu!");
			}
			else {
			req.setAttribute("message", "Đăng nhập thành công!");
			// ghi nhớ hoặc xóa tài khoản đã ghi nhớ bằng cookie
			int hours = (remember == null) ? 0 : 30*24; // 0 = xóa
			CookieUtils.add("username", username, hours, resp);
			CookieUtils.add("password", password, hours, resp);
			 
			
			}
		req.setAttribute("username", username);
		req.setAttribute("password", password);
		//req.getRequestDispatcher("/asmweb/login.jsp").forward(req, resp);
	}
}
