package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;

@WebServlet(name="param",urlPatterns="/param",
          initParams={
        		  @WebInitParam(name="username",value="admin"),
        		  @WebInitParam(name="password",value="123")
          }
          )
public class ParamServlet extends GenericServlet{
	String username;
	String password;
    
	@Override
	//��ʼ�����ݣ��˺���source���Զ����ɣ����ݿ���web.xml�����û�����java�ļ������ע��
	//���web.xml�����ã���������´���
//	<servlet>
//	   <servlet-name>param</servlet-name>
//	   <servlet-class>servlet.ParamServlet</servlet-class>
//	   <init-param>
//	    <param-name>username</param-name>
//	    <param-value>admin</param-value>
//	   </init-param>
//	   <init-param>
//	    <param-name>password</param-name>
//	    <param-value>123</param-value>
//	   </init-param>
//	  </servlet>
//	  
//	  <servlet-mapping>
//	   <servlet-name>param</servlet-name>
//	   <url-pattern>/param</url-pattern>
//	  </servlet-mapping>
	public void init() throws ServletException {//��ʼ��������������servlet�ļ�ʱ�ͱ�����
		// TODO Auto-generated method stub
		super.init();
		username=getInitParameter("username");
		password=getInitParameter("password");
	}

	@Override
	public void service(ServletRequest req, ServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	    resp.setContentType("text/html");
	    resp.setCharacterEncoding("UTF-8");
	    PrintWriter out=resp.getWriter();
	    out.print("<html><body><h1><center>");
	    out.print("username:"+username+"<br>");
	    out.print("password:"+password);
	    out.print("</html></body></h1></center>");
	}

}
