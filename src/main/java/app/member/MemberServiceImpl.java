package app.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberDAO memberDAO;

	@Override
	public boolean signinCheck(MemberVO vo, HttpSession session) throws Exception {
		boolean result = memberDAO.signinCheck(vo);
		if (result) {
			MemberVO vo2 = viewMember(vo);
			
			session.setAttribute("userId", vo2.getUserId());
			session.setAttribute("userPw", vo2.getUserPw());
		}
		return result;
	}

	@Override
	public MemberVO viewMember(MemberVO vo) throws Exception {
		return memberDAO.viewMember(vo);
	}

	@Override
	public void signout(HttpSession session) throws Exception {
		session.invalidate();
		
	}
	


}
