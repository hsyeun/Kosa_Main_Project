package app.member;

import java.util.*;

//import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//import app.member.Member;
import app.member.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class MemberDAO {
    	
	@Autowired
	SqlSessionTemplate sqlSession;
	
//	private static final String namespace = "resources.sqlmap.Member";
	
//	public List<Member> getList() throws Exception {
//		
//		List<Member> result = new ArrayList<Member>();
//		
//        try
//        {
//        	result = sqlSession.selectList("Member.getGoodsInfoList");
//        }
//        catch (Exception se)
//        {
//        	throw new Exception(se);
//        }
//        
//        return result;
//		
//	}
	
	// 아이디 중복검사
//	public int ukCheck(MemberVO mVO) {
//		return sqlSession.selectOne("mSQL.ukCheck", mVO);
//	}
	
	// 로그인 아이디 비번 검사
	public int getLogin(MemberVO mVO) {
		
		log.debug(mVO.toString());
		
		return sqlSession.selectOne("mSQL.getLogin", mVO);
		
	}
	
//	public MemberVO signinCheck(MemberVO vo) {
//		String id = sqlSession.selectOne("member.signinCheck", vo);
//		return (id == null) ? false : true;
//	}
	
//	public MemberVO viewMember(MemberVO vo) {
//		return sqlSession.selectOne("member.viewMember", vo);
//	}
	
//	public void signout(HttpSession session) {
//		
//	}
//	
//	//회원 정보 조회-사용자 ID 해당하는 정보 가져오기
//	public MemberVO readMember(String userid) throws Exception {
//		//테스트(컨트롤러) 호출 -> 정보를 저장 -> DB로이동
//		MemberVO vo = sqlSession.selectOne(namespace+".readMember", userid);
//		return vo;
//	}
//
//	//회원 정보 조회 - ID,PW정보에 해당하는 사용자 정보
//	public MemberVO readMemberWithIDPW(String identification, String password) throws Exception {
//
//		Map<String, Object> paramMap = new HashMap<String, Object>();
//		paramMap.put("identification", identification);
//		paramMap.put("password", password);
//
//		return sqlSession.selectOne(namespace+".readMemberWithIDPW", paramMap);		
//	}
    
}
