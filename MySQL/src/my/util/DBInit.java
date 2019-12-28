package my.util;

import java.io.InputStream;
import java.util.Properties;

//读取dbinfo.properties
public class DBInit {
	//此函数加载数据库的基本配置信息
	public static Properties initDB(){
		Properties pro=new Properties();
		try{
			Class c=DBInit.class;
			ClassLoader cl=c.getClassLoader();//上面两句是创建类加载器
			InputStream in=cl.getResourceAsStream("dbinfo.properties");
			pro.load(in);//从输入流中读取属性列表（键和元素对）。
		}catch(Exception e){
			e.printStackTrace();
		}
		return pro;
	}
	//写个主函数测试一下
	public static void main(String args[]){
		Properties pro=DBInit.initDB();
		String url=pro.getProperty("url");//用指定的键在此属性列表中搜索属性
		String driver=pro.getProperty("driver");
		System.out.println(url);
		System.out.println(driver);
	}

}
