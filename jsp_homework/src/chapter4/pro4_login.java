package chapter4;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name="login",urlPatterns="/login")
public class pro4_login extends HttpServlet {
	public String check1;
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out =resp.getWriter();
		req.setCharacterEncoding("UTF-8");//防止post动态获取中文乱码
		out.print("<html><body><h1><center>");
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		String check=req.getParameter("check");
		HttpSession session=req.getSession();
		String verification=(String)session.getAttribute("num");
		if(username.equals("陈梓函")&&password.equals("123")&&check.equals(verification)){
			out.print("登陆成功！！！");
		}
		else{
			out.print("登陆失败！！！");
			out.print(" <a href=\"pro4.jsp\">返回登录界面</a>");
		}
		out.print("</center></h1></body></html>");
	}
}


