package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//ctrl+Shift+O �Զ������

//��servlet�Ĳ���:
//1.��src������һ��java�ļ���Ȼ��д��servlet����
//2.��web.xml�ļ�������servlet,ע��servlet-class�и�ʽΪ:����.��������url-pattern�����Լ����õ�·������
//����������������������Ӧ����http://localhost:8080/JSPTest/Hello
//web.xml��WEB-INF��

public class helloServlet extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out=resp.getWriter();
		out.print("<html><body>");
		out.print("<h1>��ӭ�㣬CZH!</h1>");
		out.print("</body></html>");
		//Ч������������һ��
//		out.print("<html><body>"
//				+ "<h1>��ӭ�㣬CZH!</h1>"
//				+ "</body></html>");
	}
	
}
