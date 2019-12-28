package chapter4;

//import java.io.IOException;
//import java.io.PrintWriter;
import java.io.*;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name="pro2",urlPatterns="/pro2")
public class problem2 extends HttpServlet{

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
		int x,y,result=0;
		out.print("<html><body><center><h1>");
		x=Integer.valueOf(req.getParameter("x"));
		y=Integer.valueOf(req.getParameter("y"));
		result=(int)Math.pow(x, y);
		out.print(x+"的"+y+"次方是:"+result);
		out.print("</h1></center></body></html>");
	}
	

}
