package my.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.util.Properties;

import java.sql.PreparedStatement;

//重复使用的连接数据等操作
public class JDBCUtil {
	//这里面没有成员变量，所以可以直接用函数名JDBCUtil直接调用函数
	//定义此函数，以后再连接数据库时,直接调用JDBCUtil.getConnection()函数来一步连接数据库
	public static Connection getConnection(){
		Properties pro=DBInit.initDB();//用Properties对象来获取数据库的基本配置信息
		String driver=pro.getProperty("driver");//用指定的键在此属性列表中搜索属性
		String username=pro.getProperty("username");
		String password=pro.getProperty("password");
		String url=pro.getProperty("url");
		Connection con=null;
		try{
			Class.forName(driver);//加载数据库驱动程序
			con=DriverManager.getConnection(url,username,password);//建立与 url中给定的数据库的连接
		}catch(Exception e){
			e.printStackTrace();
		}
		return con;
	}
	//释放资源函数
	public static void release(Connection con,PreparedStatement ps,ResultSet rs){
		//按相反顺序关闭
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
	//再写一个重构函数，有时候用不到ResultSet
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
