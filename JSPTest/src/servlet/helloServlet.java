package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//ctrl+Shift+O 自动导入包

//用servlet的步骤:
//1.在src中生成一个java文件，然后写如servlet代码
//2.在web.xml文件中配置servlet,注意servlet-class中格式为:包名.类名，而url-pattern中是自己设置的路径名。
//例如这个类在浏览器中连接应输入http://localhost:8080/JSPTest/Hello
//web.xml在WEB-INF中

public class helloServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out=resp.getWriter();
		out.print("<html><body>");
		out.print("<h1>欢迎你，CZH!</h1>");
		out.print("</body></html>");
		//效果和上面三句一样
//		out.print("<html><body>"
//				+ "<h1>欢迎你，CZH!</h1>"
//				+ "</body></html>");
	}
	
}
