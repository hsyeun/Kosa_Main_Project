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
	private int cl_index;
	private int q_index;
	private int skill_index;
	private int spec_index;
	private int sub_cate_index;
	
	
//	public MemberVO(String identification, String password, String email) {
//		super();
//		this.identification = identification;
//		this.password = password;
//		this.email = email;
//	}
	
	
}
