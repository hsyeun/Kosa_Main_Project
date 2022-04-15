
/**
 * 마이페이지 관련 기능을 처리하는 컨트롤러 클래스
 * @author soo
 * @version 1.0
 * @since  2022.04.08
 * 
 */

package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import app.member.MemberDAO;
import app.member.MemberVO;
//import app.member.MemberService;
//import app.member.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MypageController {

	@Autowired
	SqlSession sqlSession;
	
	@Autowired
	MemberDAO mDAO;

	/**
	 * 마이페이지 뷰
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
//	@RequestMapping(value = "mypage.do")
//	public ModelAndView Mypage() throws Exception {
//		
//		ModelAndView mav = new ModelAndView();
//		
//		
//		mav.setViewName("mypage/mypage");
//		return mav;
//	}
	
	
	// 내 정보 수정
	@RequestMapping(value = "mypage.do")
	public ModelAndView myInfoEdit( ModelAndView mv, RedirectView rv, HttpSession session) {
		
		if(!isLogin(session)) {	
			rv.setUrl("main.do");
			mv.setView(rv);
			return mv;
		}
		String id = (String) session.getAttribute("SID");
		MemberVO mVO = mDAO.getMyInfo(id);
		
		List industry = mDAO.industry();
		List bcate = mDAO.bigCate();
		List com_cate = mDAO.company();
		
		mv.addObject("IND", industry);
		mv.addObject("BIG", bcate);
		mv.addObject("COM", com_cate);
		mv.addObject("DATA", mVO);
		mv.setViewName("mypage/mypage");
		return mv;
	}
	
	// 내정보 수정처리
	@RequestMapping(value = "mypagePROC.do")
	public ModelAndView myInfoEdit(@ModelAttribute MemberVO mVO /* name, pw, tel, email, gen, birth */
								,ModelAndView mv, RedirectView rv, HttpSession session) {
		
		if(!isLogin(session)) {	
			rv.setUrl("main.do");
			mv.setView(rv);
			return mv;
		}
		String id = (String) session.getAttribute("SID");
		mVO.setIdentification(id);
		
		int cnt = mDAO.myInfoEdit(mVO);
		if(cnt != 1) {
			rv.setUrl("mypage.do");
		} 	
		rv.setUrl("mypage.do");
		mv.addObject("msg", "회원정보가 수정되었습니다");
		mv.setView(rv);
		return mv;
	}
	
	/**
	 * 마이페이지-이력서
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "mypage-resume.do")
	public ModelAndView Resume() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("mypage/mypage-resume");
		return mav;
	}
	
	/**
	 * 마이페이지-자소서
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "mypage-coverletter.do")
	public ModelAndView Coverletter(@ModelAttribute MemberVO mVO /* name, pw, tel, email, gen, birth */
			,ModelAndView mv, RedirectView rv, HttpSession session) throws Exception {
		
		ModelAndView mav = new ModelAndView();
		String id = (String) session.getAttribute("SID");
		mVO.setIdentification(id);
		
		mav.addObject("covers", mDAO.getCovers(mVO));
		
		
		mav.setViewName("mypage/mypage-coverletter");
		return mav;
	}
	
	
	/**
	 * 마이페이지-회원탈퇴
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "mypage-delete.do")
	public ModelAndView Delete(ModelAndView mv, RedirectView rv, HttpSession session) {
		
		if(!isLogin(session)) {	
			rv.setUrl("main.do");
			mv.setView(rv);
			return mv;
		}
		String id = (String) session.getAttribute("SID");
		MemberVO mVO = mDAO.getMyInfo(id);
		
		mv.addObject("DATA", mVO);
		mv.setViewName("mypage/mypage-delete");
		return mv;
	}

	//회원탈퇴 처리요청
	@RequestMapping(value = "mypage-deletePROC.do")
	public ModelAndView myInfoDelProc(MemberVO mVO /* id, name, pw */
								,ModelAndView mv, RedirectView rv, HttpSession session ) {
		
		if(!isLogin(session)) {	
			rv.setUrl("main.do");
			mv.setView(rv);
			return mv;
		}
		String id = (String) session.getAttribute("SID");
		int cnt = mDAO.myInfoDel(id);
		if(cnt != 1) {
			rv.setUrl("mypage-delete.do");
		}
		session.removeAttribute("SID");
		rv.setUrl("main.do");
		mv.setView(rv);
		return mv;
	}
	
	// 로그인 검사
	public boolean isLogin(HttpSession session) {
		String sid = (String) session.getAttribute("SID");
		
		return (sid == null) ? false : true;
	}
	
	
	
}
