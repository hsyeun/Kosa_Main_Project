package test.servlet;

public class BeanTest {
	private String name = "홍길동";

	public BeanTest() {}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String greetingMassage() {
		return String.format("안녕하세요. %s님 ^^", this.name);
	}
	
}
