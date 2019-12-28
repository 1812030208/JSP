package chapter4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="factorial",urlPatterns="/factorial/a")
public class problem1 extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out=resp.getWriter();
		int num,result=1;
		out.print("<html><body><h1><center>");
		num=Integer.valueOf(req.getParameter("num"));
		for(int i=1;i<=num;i++){
			result*=i;
		}
		out.print(num+"µÄ½×³ËÎª:"+result);
		out.print("</html></body></h1></center>");
	}
	

}
