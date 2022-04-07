package app.member;

import lombok.Data;

@Data
public class Member {

	String identification = "";
	String password = "";
	String name = "";
	String email = "";
	String phone = "";
	String company_rec = "";
}
