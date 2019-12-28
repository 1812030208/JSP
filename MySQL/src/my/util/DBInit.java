package my.util;

import java.io.InputStream;
import java.util.Properties;

//��ȡdbinfo.properties
public class DBInit {
	//�˺����������ݿ�Ļ���������Ϣ
	public static Properties initDB(){
		Properties pro=new Properties();
		try{
			Class c=DBInit.class;
			ClassLoader cl=c.getClassLoader();//���������Ǵ����������
			InputStream in=cl.getResourceAsStream("dbinfo.properties");
			pro.load(in);//���������ж�ȡ�����б�����Ԫ�ضԣ���
		}catch(Exception e){
			e.printStackTrace();
		}
		return pro;
	}
	//д������������һ��
	public static void main(String args[]){
		Properties pro=DBInit.initDB();
		String url=pro.getProperty("url");//��ָ���ļ��ڴ������б�����������
		String driver=pro.getProperty("driver");
		System.out.println(url);
		System.out.println(driver);
	}

}
