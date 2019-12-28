package my.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import my.bean.Manager;
import my.util.JDBCUtil;

public class ManagerDao {
	Manager manager=null;
	Connection con=null;
    PreparedStatement ps=null;
    ResultSet rs=null;
    ArrayList<Manager> list=new ArrayList<Manager>();
    //�����½����Ա��Ϣ�Ƿ���ȷ
    public boolean login(Manager mg){
    	boolean flag=false;
    	try{
    		con=JDBCUtil.getConnection();//�������ݿ�
    		String sql="select username,password from dbmanager";
    		ps=con.prepareStatement(sql);//Ԥ����
    		rs=ps.executeQuery();//ִ�в�ѯ���
    		while(rs.next()){
    			manager=new Manager();
    			if(rs.getString("username").equals(mg.getUsername())&&rs.getString("password").equals(mg.getPassword())){
    				flag=true;
    				break;
    			}
    		}
    		
    	}catch(Exception e){
    		e.printStackTrace();
    	}finally{
    		JDBCUtil.release(con, ps, rs);
    	}
    	return flag;
    }
}
