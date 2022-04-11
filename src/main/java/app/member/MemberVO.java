package app.member;

import lombok.Data;

@Data
public class MemberVO {
	private int index;
	private int sc_index;
	private int i_index;
	private String identification;
	private String password;
	private String name;
	private String email;
	private String phone;
	private int is_show;
	private String company_rec;
	
	
	public MemberVO(String identification, String password, String email) {
		super();
		this.identification = identification;
		this.password = password;
		this.email = email;
	}
	
	
}
