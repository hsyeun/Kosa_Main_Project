package app.member;

import lombok.Data;

@Data
public class Member {

	String identification = "";
	String password = "";
	String name = "";
	String email = "";
	String phone = "";
	//추가
	int company_rec=-1;
	int jobopening_rec=-1;
}
