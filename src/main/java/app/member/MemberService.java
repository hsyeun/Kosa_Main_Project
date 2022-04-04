package app.member;

import java.util.List;

import javax.servlet.http.HttpSession;

public interface MemberService {
	
	public boolean signinCheck(MemberVO vo, HttpSession session) throws Exception;
	
	public MemberVO viewMember(MemberVO vo) throws Exception;
	
	public void signout(HttpSession session) throws Exception;

}
