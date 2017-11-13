package ticketing.dao;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UpdateServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws IOException {
		String id_p = request.getParameter("id_p");
		String id_card = request.getParameter("id_card");
		String e_mail = request.getParameter("e_mail");
		String tel = request.getParameter("tel");
		int id = Integer.valueOf((String) request.getSession().getAttribute(
				"id"));
		User_Dao.Update_info(id_p, id_card, e_mail, tel,id);
		response.setContentType("text/html;charset=gbk");
		PrintWriter out = response.getWriter();
		out.print("<script type='text/javascript'>alert('?????????');</script>");
		response.setHeader("Refresh", "0;URL=../person.jsp");
	}
}
