package chapter4;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/check")
public class pro4_check extends HttpServlet {

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
		resp.setContentType("image/jpeg");
		//ͼƬ������
		BufferedImage bi=new BufferedImage(100,50,BufferedImage.TYPE_INT_RGB);
		Graphics image=bi.getGraphics();
		//����ͼƬ����ɫ
		Random r=new Random();
		image.setColor(new Color(r.nextInt(256),r.nextInt(256),r.nextInt(256)));
		image.fillRect(0, 0, 100, 50);//��ʵ�ľ���
		//��֤��
		String num=String.valueOf(r.nextInt(9999));
		image.setColor(new Color(0,0,0));  //��ɫ
		image.setFont(new Font("Comic Sans MS",Font.BOLD,30));//Font.BOLD�Ӵ�
		Graphics2D image2=(Graphics2D)image;
		image2.rotate(0.08);
		image.drawString(num, 30, 40);
		//��10������ĵ㣬��10���������
		for(int i=1;i<=10;i++){
			image.drawOval(r.nextInt(100), r.nextInt(50), 0, 0);//����
			image.drawLine(r.nextInt(100), r.nextInt(50), r.nextInt(100), r.nextInt(50));//���ߣ�����յ㣩
		}
		//�洢��֤��
		HttpSession session=req.getSession();
		session.setAttribute("num", num);  //����֤�����session��
		//session.getAttribute("num");
		//�����֤��ͼƬ
		OutputStream out=resp.getOutputStream(); //�ֽ����������
		image.dispose();
		ImageIO.write(bi, "jpeg", out);
		out.close();
	}
}

