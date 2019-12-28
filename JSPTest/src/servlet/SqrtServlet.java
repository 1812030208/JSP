package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//����servlet��ɵĿ�ƽ��ҳ�����


@WebServlet(name="sqrt",urlPatterns="/sqrt")//ע�⣬������·������ע��Ͳ�������web.xml�ļ���
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
		//�õ��û������ֵ
		String num=req.getParameter("num");
		try{
			double n=Double.valueOf(num);
			double r=Math.sqrt(n);
			out.print(num+"��ƽ������"+r);
		}catch(Exception e){
			out.print("�����������������ţ�����������");
		}
		out.print("</center></body></html>");
	}
	
}
