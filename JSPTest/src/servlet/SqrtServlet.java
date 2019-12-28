package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//利用servlet完成的开平方页面设计


@WebServlet(name="sqrt",urlPatterns="/sqrt")//注解，即定义路径，有注解就不用配置web.xml文件了
public class SqrtServlet extends HttpServlet {
   
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req,resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out=resp.getWriter();
		out.print("<html><body><center>");
		//得到用户输入的值
		String num=req.getParameter("num");
		try{
			double n=Double.valueOf(num);
			double r=Math.sqrt(n);
			out.print(num+"的平方根是"+r);
		}catch(Exception e){
			out.print("您输入的数有特殊符号，请重新输入");
		}
		out.print("</center></body></html>");
	}
	
}
