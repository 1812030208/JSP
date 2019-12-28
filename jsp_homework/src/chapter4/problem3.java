package chapter4;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name="random",urlPatterns="/random")//此文件访问路径即为http://localhost:8080/jsp_homework/random
public class problem3 extends HttpServlet{

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter out=resp.getWriter();
		out.print("<html><body><center><h1>");
		out.print("5个100以内的随机整数:");
		Random rd=new Random();
		int[] a=new int[5];
        for(int i=0;i<5;i++){
			a[i]=-1;
		}
        int num=0;
		while(num!=5){
			int b=rd.nextInt(100);
			boolean flag=true;
			for(int j=0;j<5;j++){
				if(b==a[j]){
					flag=false;
					break;
				}
			}
			if(flag==true){
				a[num++]=b;
			}
		}
		for(int i=0;i<5;i++){
			out.print(a[i]+" ");
		}
		out.print("</h1></center></body></html>");
	}
	

}
