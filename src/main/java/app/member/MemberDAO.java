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
	
	
	// 로그인 아이디 비번 검사
	public int getLogin(MemberVO mVO) {
		
		log.debug(mVO.toString());
		
		return sqlSession.selectOne("mSQL.getLogin", mVO);
		
	}

	// 회원가입
	public int addMember(MemberVO mVO) {
		
		return sqlSession.insert("mSQL.addMember", mVO);
	}
	
	// 회원가입 - 기업 분류
	public List company() {
		return sqlSession.selectList("mSQL.company");
	}
	
	// 회원가입 - 산업 분류
	public List industry() {
		return sqlSession.selectList("mSQL.industry");
	}
	
	// 회원가입 - 카테고리 대분류
	public List bigCate() {
		return sqlSession.selectList("mSQL.bigCate");
	}
	
	// 회원가입 - 카테고리 소분류
	public List<CategoryVO> smallCate(int index) {
		return sqlSession.selectList("mSQL.smallCate",index);
	}
	
	// 나의 정보보기
	public MemberVO getMyInfo(String id) {
		return sqlSession.selectOne("mSQL.getMyInfo", id);
	}
	
	// 나의 정보수정처리
	public int myInfoEdit(MemberVO mVO) {
		return sqlSession.update("mSQL.myInfoEdit", mVO);
	}

	// 나의정보 삭제
	public int myInfoDel(String id) {
		return sqlSession.update("mSQL.myInfoDel", id);
	}
		
	// 아이디 찾기
	public MemberVO forgotId(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.forgotId", mVO);
	}
	
	// 비밀번호 찾기
	public String loginFindPw(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.loginFindPw", mVO);
	}
	
	// 비밀번호 찾기 후 비번 임시비번 저장
	public int editPw(MemberVO mVO) {
		return sqlSession.update("mSQL.editPw", mVO);
	}
	
	// 아이디 체크
	public int ukCheck(MemberVO mVO) {
		return sqlSession.selectOne("mSQL.ukCheck", mVO);
	}
	
	// 스펙 저장
	public int addResume(ResumeVO rVO) {
		
		return sqlSession.insert("mSQL.addResume", rVO);
	}
	
	
    
}
