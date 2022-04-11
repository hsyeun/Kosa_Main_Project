
/**
 * 회원관련 페이지를 처리하는 컨트롤러 클래스
 * @author soo
 * @version 1.0
 * @since  2022.03.22
 * 
 */

package controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import app.member.MemberDAO;
import app.member.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {

	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MemberDAO mDAO;
	

	/**
	 * 회원가입 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "signup.do")
	public ModelAndView signup(ModelAndView mv, RedirectView rv, HttpSession session){
		
		if(isLogin(session)) {
			rv.setUrl("main.do");
			mv.setView(rv);
			return mv;
		}
		
		String view = "member/signup";
		
		mv.setViewName(view);
		return mv;
	}
	
	// 회원가입 요청처리
	@RequestMapping(value = "signupPROC.do")
	public ModelAndView joinProc(MemberVO mVO, ModelAndView mv, HttpSession session, RedirectView rv) {
		if(isLogin(session)) {
			rv.setUrl("main.do");
			mv.setView(rv);
			return mv;
		}
		
		int cnt = mDAO.addMember(mVO);
		
		if(cnt == 1) {
			session.setAttribute("SID", mVO.getIdentification());
			rv.setUrl("main.do");
		} else {
			rv.setUrl("signup.do");
		}
		
		mv.setView(rv);
		return mv;
	}
	
	// 아이디, 메일, 전화번호 중복검사
//	@RequestMapping("/ukCheck.moa")
//	@ResponseBody
//	public HashMap<String, String> ukCheck(MemberVO mVO) {
//		int cnt = mDAO.ukCheck(mVO);
//		
//		HashMap<String, String> map = new HashMap<String, String>();
//		map.put("result", "NO");
//		map.put("cnt", cnt+"");
//		if(cnt != 1) {
//			map.put("result", "OK");
//		}		
//		return map;
//	}

	/**
	 * 회원가입-이력서 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "resume.do")
	public String signupResume(Model model) throws Exception {
		String now = "";

		try {
			log.debug("데이터베이스 연결 성공\n");
			now = sqlSession.selectOne("Test.getTest");

		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}

		model.addAttribute("now", now);

		return "member/resume";
	}

	
	/**
	 * 로그인 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "signin.do")
	public ModelAndView getLogin(HttpSession session, ModelAndView mv, RedirectView rv) {	
		
		// 로그인 검사
		if(isLogin(session)) {	
			rv.setUrl("main.do");
			mv.setView(rv);	
		} else {
			String view = "member/signin";
			mv.setViewName(view);
		}
		
		return mv;
	}
	
	/**
	 * 로그인 처리
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "signinPROC.do")      
	public ModelAndView loginProc( MemberVO mVO, ModelAndView mv, HttpSession session, RedirectView rv) {
		String view = "main.do";
		if(!isLogin(session)) {
//			session.invalidate();
			
//			log.debug(mVO.toString());
			
			int cnt = mDAO.getLogin(mVO) ;
			
			if(cnt == 1) {
				session.setAttribute("SID", mVO.getIdentification());
			} else {
				mv.addObject("MSG", "false");
				mv.setViewName("member/signin");
				return mv;
			}
		}
		
		rv.setUrl(view);
		
		mv.setView(rv); 
		return mv;
	}
	
	// 로그인 검사
	public boolean isLogin(HttpSession session) {
		String sid = (String) session.getAttribute("SID");
		
		return (sid == null) ? false : true;
	}
	
	
	/**
	 * 로그아웃 처리
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "signout.do")
	public ModelAndView logout(HttpSession session, ModelAndView mv, RedirectView rv) {
		session.removeAttribute("SID");
		rv.setUrl("main.do");
		mv.setView(rv);
		return mv;
	}
	
	
	/**
	 * 아이디찾기 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping("/forgotID.do")
	public ModelAndView forgotID(HttpSession session, ModelAndView mv, RedirectView rv) {
		
		if(isLogin(session)) {	
			rv.setUrl("main.do");
			mv.setView(rv);
		} else {
			String view = "member/forgot-ID";
			mv.setViewName(view);
		}
	
		return mv;
	}
	
	//아이디 찾기 처리요청
	@RequestMapping("/forgotIDProc.moa")
	@ResponseBody
	public HashMap<String, String> loginFindIdProc(MemberVO mVO /* name, mail */) {
		
		MemberVO tVO = mDAO.forgotId(mVO);
		
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("result", "NO");
		if(tVO == null) {
			return map;
		}
//		String tmp = MailUtil.gmailSend(tVO.getEmail());
//		map.put("result", "OK");
//		map.put("result1", tmp);
//		map.put("result2", tVO.getIdentification());	
		return map;
	}
	

	/**
	 * 비번찾기 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "forgotPW.do")
	public ModelAndView forgotPW(HttpSession session, ModelAndView mv, RedirectView rv) {
		if(isLogin(session)) {	
			rv.setUrl("main.do");
			mv.setView(rv);
		} else {
			String view = "member/forgot-PW";
			mv.setViewName(view);
		}
	
		return mv;
	}
	
	// 비밀번호 찾기 요청처리
//	@RequestMapping(value = "forgotPWPROC.do")
//	@ResponseBody
//	public HashMap<String, String> loginFindPwProc(MemberVO mVO) {
//		String email = mDAO.loginFindPw(mVO);
//		HashMap<String, String> map = new HashMap<String, String>();
//		map.put("result", "NO");
//		if(email != null) {
//		
//			String tmp = MailUtil.gmailSend(email);
//			mVO.setPw(tmp);
//			mDao.editPw(mVO);
//			map.put("result", "OK");
//			map.put("result1", tmp);
//		}
//		
//		return map;
//	}

}
