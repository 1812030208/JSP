
package bean;

public class Rectangle {
	private double width;
	private double height;
	
	//必须有一个不带参数的公有构造器
	public Rectangle(){
		
	}
	public double getWidth() {
		return width;
	}
	public void setWidth(double width) {
		this.width = width;
	}
	public double getHeight() {
		return height;
	}
	public void setHeight(double height) {
		this.height = height;
	}
	public double area(){
		return height*width;
	}
	public double perimeter(){
		return (height+width)*2;
	}

}
