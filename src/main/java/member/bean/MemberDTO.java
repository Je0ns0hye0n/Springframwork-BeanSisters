package member.bean;

public class MemberDTO {
	 private String mem_id;
	 private String mem_pw1;
	 private String name;
	 private String phone;
	 private String addr;
	
	 private int age_group;
	 
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_pw1() {
		return mem_pw1;
	}
	public void setMem_pw1(String mem_pw1) {
		this.mem_pw1 = mem_pw1;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getAge_group() {
		return age_group;
	}
	public void setAge_group(int age_group) {
		this.age_group = age_group;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	 
}
