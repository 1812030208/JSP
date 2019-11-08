package bean;

public class Student {
	private long classNo;
    private	String name;
    private int age;
    private boolean sex;
    
    public Student(){
    	this.classNo=Long.valueOf("201723030103");
    	this.name="³Âè÷º¯";
    	this.age=21;
    	this.sex=true;
    }
	public long getClassNo() {
		return classNo;
	}
	public void setClassNo(long classNo) {
		this.classNo = classNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public boolean getSex() {
		return sex;
	}
	public void setSex(boolean sex) {
		this.sex = sex;
	}
	
    
}
