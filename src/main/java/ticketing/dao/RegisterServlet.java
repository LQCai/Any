package ticketing.dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String tel=request.getParameter("tel");
		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
		if (id.equals("")) {
			out
					.print("<script type='text/javascript'>alert('账户不可为空，请重新输入！');</script>");
			response.setHeader("Refresh", "1;URL=../index.jsp");
		} else if (tel.equals("")){
			out
					.print("<script type='text/javascript'>alert('电话不可为空，请重新输入！');</script>");
			response.setHeader("Refresh", "1;URL=../index.jsp");
		} else if (password.equals("")) {
			out
					.print("<script type='text/javascript'>alert('密码不可为空，请重新输入！');</script>");
			response.setHeader("Refresh", "1;URL=../index.jsp");
		} else {
			String sql = "insert into user_info(id_p,password,tel) values(?,?,?)";
			User_Dao.register(sql, id, password,tel);
			out
					.print("<script type='text/javascript'>alert('注册成功！点击确定跳转至登录界面！');</script>");
			response.setHeader("Refresh", "1;URL=../index.jsp");
		}
	}

}
