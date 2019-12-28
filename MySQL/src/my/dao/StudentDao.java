package my.dao;

//import java.sql.Connection;
//import java.sql.PreparedStatement;
//import java.sql.ResultSet;
import java.sql.*;
import java.util.ArrayList;

import my.bean.Student;
import my.util.JDBCUtil;

//与SQL语句相关的的操作，访问数据的操作
public class StudentDao {
	//这里面有成员变量，所以调用函数得先创建对象，用对象来调用
	Student student=null;
	Connection con=null;
	PreparedStatement ps=null;
	ResultSet rs=null;
	ArrayList<Student> list=new ArrayList<Student>();//用list来存放每个学生
	//显示学生信息
	public ArrayList<Student> getAllStudent(){
		try{ 
			con=JDBCUtil.getConnection();//连接数据库
			String sql="select id,name,age,sex from student";
			ps=con.prepareStatement(sql);//预编译
			rs=ps.executeQuery();
			while(rs.next()){
				student=new Student();
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAge(rs.getInt("age"));
				student.setSex(rs.getString("sex"));
				list.add(student);//从数据库中添加一个学生
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			JDBCUtil.release(con, ps, rs);//释放资源
		}
		return list;
	}
	//查询学生信息(以id查询)
	public Student searchStudent(int id){//传入id，根据id查找,每次查找一个人！
		try{
			con=JDBCUtil.getConnection();//连接数据库
			String sql="select id,name,age,sex from student where id=?";
			ps=con.prepareStatement(sql);//预编译
			ps.setInt(1, id);
			rs=ps.executeQuery();
			if(rs.next()){//id确定，学生就确定了，一个人不必循环
				student=new Student();			    
				student.setId(rs.getInt("id"));
				student.setName(rs.getString("name"));
				student.setAge(rs.getInt("age"));
				student.setSex(rs.getString("sex"));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			//释放资源
			JDBCUtil.release(con, ps, rs);
		}
		return student;
	}
	//添加学生信息,没判断是否已有此人
	public void addStudent(Student student){ //传入要插入的学生对象
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
	//删除学生信息，没判断是否已有此人
	public int deleteStudent(int id){//传入要删除的学生id
		int flag=0;
		try{
			con=JDBCUtil.getConnection();
			//下面的sql语句最后不用加分号
			//方式一，可行
			String sql="delete from student where id=?";
			ps=con.prepareStatement(sql);
			ps.setInt(1, id);
			flag=ps.executeUpdate();//千万别忘了执行！！！
			//execute返回结果集，executeupdate返回受影响的行数
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			JDBCUtil.release(con, ps);
		}
		return flag;
    }
	//修改学生信息
	public int updateStudent(Student stu){
		int flag=0;
		try{
			con=JDBCUtil.getConnection();
			//根据名字设置年龄和性别
			String sql="update student set name=?,age=?,sex=? where id=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, stu.getName());
			ps.setInt(2,stu.getAge());
			ps.setString(3, stu.getSex());
			ps.setInt(4, stu.getId());
			flag=ps.executeUpdate();//返回受影响行数，以此来判断是否有要查找操作的学生
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			JDBCUtil.release(con, ps);
		}
		return flag;
	}
}
