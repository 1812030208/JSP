package messy_code;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="name",urlPatterns="/name")
public class Name extends HttpServlet{
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//��Ҫsuper����
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		//req.setCharacterEncoding("UTF-8");//post�ύ���Ĳ�����
		PrintWriter out=resp.getWriter();
		out.print("<html><body><center><h1>");
		String name=req.getParameter("name");//��̬���ģ�Ҫ����ֹ���봦��
		out.print(name);
		out.print("</html></body></center></h1>");
	}
	

}
