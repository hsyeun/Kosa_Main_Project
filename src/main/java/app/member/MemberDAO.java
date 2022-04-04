package app.member;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class MemberDAO {
    	
	@Autowired
    SqlSession sqlSession;
	
	public boolean signinCheck(MemberVO vo) {
		String id = sqlSession.selectOne("member.signinCheck", vo);
		return (id == null) ? false : true;
	}
	
	public MemberVO viewMember(MemberVO vo) {
		return sqlSession.selectOne("member.viewMember", vo);
	}
	
	public void signout(HttpSession session) {
		
	}
    
}
