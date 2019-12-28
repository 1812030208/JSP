package my.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.Properties;

import java.sql.PreparedStatement;

//�ظ�ʹ�õ��������ݵȲ���
public class JDBCUtil {
	//������û�г�Ա���������Կ���ֱ���ú�����JDBCUtilֱ�ӵ��ú���
	//����˺������Ժ����������ݿ�ʱ,ֱ�ӵ���JDBCUtil.getConnection()������һ���������ݿ�
	public static Connection getConnection(){
		Properties pro=DBInit.initDB();//��Properties��������ȡ���ݿ�Ļ���������Ϣ
		String driver=pro.getProperty("driver");//��ָ���ļ��ڴ������б�����������
		String username=pro.getProperty("username");
		String password=pro.getProperty("password");
		String url=pro.getProperty("url");
		Connection con=null;
		try{
			Class.forName(driver);//�������ݿ���������
			con=DriverManager.getConnection(url,username,password);//������ url�и��������ݿ������
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
	//�ͷ���Դ����
	public static void release(Connection con,PreparedStatement ps,ResultSet rs){
		//���෴˳��ر�
		try{
			if(rs!=null){
				rs.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		try{
			if(ps!=null){
				ps.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		try{
			if(con!=null){
				con.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	//��дһ���ع���������ʱ���ò���ResultSet
	public static void release(Connection con,PreparedStatement ps){
		try{
			if(ps!=null){
				ps.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
		try{
			if(con!=null){
				con.close();
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
