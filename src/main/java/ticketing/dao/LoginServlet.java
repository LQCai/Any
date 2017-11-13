package ticketing.dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ticketing.model.User;

public class LoginServlet extends HttpServlet {

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {

		String piccode = (String) request.getSession().getAttribute("piccode");
		String checkcode = request.getParameter("checkcode");
		String id_p = request.getParameter("id_p");
		String pass = request.getParameter("pass");
		checkcode = checkcode.toUpperCase();
		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();

		User u = User_Dao.login(id_p, pass);
		if (u != null) {
			if(checkcode.equals("")){
				out.print("<script type='text/javascript'>alert('请输入验证码！');</script>");
				response.setHeader("Refresh", "0;URL=../index.jsp");
			}
			else if (checkcode.equals(piccode)) {
				request.getSession().setAttribute("id_p", id_p);//账户session
				response.setHeader("Refresh", "1;URL=../view_detail.jsp");
			} else {
				out.print("<script type='text/javascript'>alert('验证码错误！');</script>");
				response.setHeader("Refresh", "0;URL=../index.jsp");
			}
		} else {
			out.print("<script type='text/javascript'>alert('密码错误！请重新登录！');</script>");
			response.setHeader("Refresh", "1;URL=../index.jsp");
		}
		out.flush();
		out.close();
	}

}
