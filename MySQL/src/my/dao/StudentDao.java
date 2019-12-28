package my.dao;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.*;
import java.util.ArrayList;

import my.bean.Student;
import my.util.JDBCUtil;

//��SQL�����صĵĲ������������ݵĲ���
public class StudentDao {
	//�������г�Ա���������Ե��ú������ȴ��������ö���������
	Student student=null;
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	ArrayList<Student> list=new ArrayList<Student>();//��list�����ÿ��ѧ��
	//��ʾѧ����Ϣ
	public ArrayList<Student> getAllStudent(){
		try{ 
			con=JDBCUtil.getConnection();//�������ݿ�
			String sql="select id,name,age,sex from student";
			ps=con.prepareStatement(sql);//Ԥ����
			rs=ps.executeQuery();
			while(rs.next()){
				student=new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAge(rs.getInt("age"));
				student.setSex(rs.getString("sex"));
				list.add(student);//�����ݿ������һ��ѧ��
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			JDBCUtil.release(con, ps, rs);//�ͷ���Դ
		}
		return list;
	}
	//��ѯѧ����Ϣ(��id��ѯ)
	public Student searchStudent(int id){//����id������id����,ÿ�β���һ���ˣ�
		try{
			con=JDBCUtil.getConnection();//�������ݿ�
			String sql="select id,name,age,sex from student where id=?";
			ps=con.prepareStatement(sql);//Ԥ����
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if(rs.next()){//idȷ����ѧ����ȷ���ˣ�һ���˲���ѭ��
				student=new Student();			    
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAge(rs.getInt("age"));
				student.setSex(rs.getString("sex"));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			//�ͷ���Դ
			JDBCUtil.release(con, ps, rs);
		}
		return student;
	}
	//���ѧ����Ϣ,û�ж��Ƿ����д���
	public void addStudent(Student student){ //����Ҫ�����ѧ������
		try{
			con=JDBCUtil.getConnection();
			String sql="insert into student(name,age,sex) value(?,?,?)";
			ps=con.prepareStatement(sql);
			ps.setString(1,student.getName());
			ps.setInt(2, student.getAge());
			ps.setString(3, student.getSex());
			ps.execute();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			JDBCUtil.release(con, ps);
		}
	}
	//ɾ��ѧ����Ϣ��û�ж��Ƿ����д���
	public int deleteStudent(int id){//����Ҫɾ����ѧ��id
		int flag=0;
		try{
			con=JDBCUtil.getConnection();
			//�����sql�������üӷֺ�
			//��ʽһ������
			String sql="delete from student where id=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			flag=ps.executeUpdate();//ǧ�������ִ�У�����
			//execute���ؽ������executeupdate������Ӱ�������
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			JDBCUtil.release(con, ps);
		}
		return flag;
    }
	//�޸�ѧ����Ϣ
	public int updateStudent(Student stu){
		int flag=0;
		try{
			con=JDBCUtil.getConnection();
			//������������������Ա�
			String sql="update student set name=?,age=?,sex=? where id=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, stu.getName());
			ps.setInt(2,stu.getAge());
			ps.setString(3, stu.getSex());
			ps.setInt(4, stu.getId());
			flag=ps.executeUpdate();//������Ӱ���������Դ����ж��Ƿ���Ҫ���Ҳ�����ѧ��
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			JDBCUtil.release(con, ps);
		}
		return flag;
	}
}
