
/**
 * 회원관련 페이지를 처리하는 컨트롤러 클래스
 * @author soo
 * @version 1.0
 * @since  2022.03.22
 * 
 */

package controller;

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

//import app.member.MemberService;
//import app.member.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MemberController {

	@Autowired
	SqlSession sqlSession;

	/**
	 * 회원가입 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "signup.do")
	public String signup(Model model) throws Exception {
		String now = "";

		try {
			log.debug("데이터베이스 연결 성공\n");
			now = sqlSession.selectOne("Test.getTest");

		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}

		model.addAttribute("now", now);

		return "member/signup";
	}

	/**
	 * 로그인 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "signin.do")
	public String signin(Model model) throws Exception {
		String now = "";

		try {
			log.debug("데이터베이스 연결 성공\n");
			now = sqlSession.selectOne("Test.getTest");

		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}

		model.addAttribute("now", now);

		return "member/signin";
	}

	/*	*//**
			 * 로그인처리
			 * 
			 * @return View 지정
			 * @throws Exception
			 */
	/*
	 * @RequestMapping(value = "signinCheck.do") public String
	 * signinCheck(@ModelAttribute MemberVO vo, HttpSession session) throws
	 * Exception { boolean result = MemberService.signinCheck(vo, session);
	 * ModelAndView mav = new ModelAndView();
	 * 
	 * if(result == true) { mav.setViewName("main"); mav.addObject("msg",
	 * "success");
	 * 
	 * } else { mav.addObject("mag", "fail"); mav.setViewName("member/signin"); }
	 * 
	 * return mav; }
	 * 
	 *//**
		 * 로그아웃처리
		 * 
		 * @return View 지정
		 * @throws Exception
		 *//*
			 * @RequestMapping(value = "signout.do") public String signout(HttpSession
			 * session) throws Exception { MemberService.signout(session); ModelAndView mav
			 * = new ModelAndView();
			 * 
			 * mav.addObject("mag", "logout"); mav.setViewName("member/signin");
			 * 
			 * return mav; }
			 */

	/**
	 * 아이디찾기 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "forgotID.do")
	public String forgotID(Model model) throws Exception {
		String now = "";

		try {
			log.debug("데이터베이스 연결 성공\n");
			now = sqlSession.selectOne("Test.getTest");

		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}

		model.addAttribute("now", now);

		return "member/forgot-ID";
	}

	/**
	 * 비번찾기 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "forgotPW.do")
	public String forgotPW(Model model) throws Exception {
		String now = "";

		try {
			log.debug("데이터베이스 연결 성공\n");
			now = sqlSession.selectOne("Test.getTest");

		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}

		model.addAttribute("now", now);

		return "member/forgot-PW";
	}

}
