package app.admin;

import lombok.Data;

@Data
public class AdminVO {
	
	private int index;
	private int sc_index;
	private int i_index;
	private int q_index;
	private String identification;
	private String password;
	private String name;
	private String email;
	private String phone;
	private int is_show;
	private String company_rec;
	private String category;
	private String query;
	private String answer;
	
	
	
	public AdminVO(String identification, String password) {
		super();
		this.identification = identification;
		this.password = password;
	}
	
	public AdminVO(int q_index, String query, String answer, String category) {
		super();
		this.q_index = q_index;
		this.query = query;
		this.answer = answer;
		this.answer = category;
	}

	
}
