
/**
 * 회원관련 페이지를 처리하는 컨트롤러 클래스
 * @author soo
 * @version 1.0
 * @since  2022.03.22
 * 
 */

package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import app.member.MemberDAO;
import app.member.MemberVO;
import app.member.ResumeVO;
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
		//log.debug(cate);
		if(isLogin(session)) {	
			rv.setUrl("main.do");
			mv.setView(rv);
			return mv;
		}
		
		List industry = mDAO.industry();
		List bcate = mDAO.bigCate();
		List com_cate = mDAO.company();
		//List scate = mDAO.smallCate();
		
		mv.addObject("IND", industry);
		mv.addObject("BIG", bcate);
		mv.addObject("COM", com_cate);
		//mv.addObject("SMALL", scate);
		
		String view = "member/signup";
		mv.setViewName(view);
		return mv;
	}
	
	
	@PostMapping(value = "signup.do")
	@ResponseBody
	public Map<String,List> test(@RequestBody Map<String,String> params){
		Map<String,List> result = new HashMap<String, List>();
		
		//System.out.println(params.get("cate"));
		
		int cate = Integer.parseInt(params.get("cate"));
		List scate = mDAO.smallCate(cate);
		
		result.put("SMALL", scate);
		
		return result;
	}
	
	// 회원가입 요청처리
		@RequestMapping(value = "signupPROC.do")
		public ModelAndView joinProc(@ModelAttribute MemberVO mVO, ModelAndView mv, HttpSession session, RedirectView rv,HttpServletRequest request) {
			System.out.println(session.getAttribute("SID"));
			String[] chklist = request.getParameterValues("chkbox");
			String clist = "";
			String clist2 = "";
			for(String val:chklist){
				clist += val+",";
				clist2 += "1" + ",";
			}
			clist = clist.substring(0,clist.length()-1);
			clist2 = clist2.substring(0,clist2.length()-1);
			String sql = "INSERT INTO user_skill (identification," + clist + ") VALUES ('" + mVO.getIdentification() +"'," + clist2 + ")";
			System.out.println(sql);
			Connection con;
			try {
				Class.forName("org.mariadb.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mariadb://localhost:3306/itjob","root","1234");
				PreparedStatement ps = con.prepareStatement(sql);
				ps.executeUpdate();
				con.close();
			} catch(Exception e) {
				e.printStackTrace();
			}
			
			if(isLogin(session)) {
				rv.setUrl("resume.do");
				mv.setView(rv);
				return mv;
			}
			log.debug(mVO.toString());
			int cnt = mDAO.addMember(mVO);
			System.out.println(cnt);
			if(cnt == 1) {
				session.setAttribute("SID", mVO.getIdentification());
				System.out.println(session.getAttribute("SID"));
				rv.setUrl("resume.do");
			} else {
				rv.setUrl("signup.do");
			}
			
			mv.setView(rv);
			return mv;
		}
	

	/**
	 * 회원가입-이력서 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "resume.do")
	public ModelAndView signupResume(ModelAndView mv) throws Exception {
		
		mv.setViewName("/member/resume");
	
		return mv;
	}
	@RequestMapping(value = "resumePROC.do")
	   public ModelAndView insertResume(@ModelAttribute ResumeVO rVO,ModelAndView mv,RedirectView rv) throws Exception {
	      
	      int cnt = mDAO.addResume(rVO);
	      Integer temp = mDAO.getRecCompany(rVO);
	      rVO.setCompany_rec(temp);
	      mDAO.addRecCompany(rVO);
	      System.out.println(cnt);
	      rv.setUrl("signin.do");
	      mv.setView(rv);
	      return mv;
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
	public ModelAndView loginProc( MemberVO mVO, ModelAndView mv, HttpSession session, RedirectView rv,HttpServletRequest request) {
		String view = "main.do";
		
		//session.setAttribute("SID", mVO.getIdentification());
		if(!isLogin(session)) {
			
//			session.invalidate();
			
//			log.debug(mVO.toString());
			
			int cnt = mDAO.getLogin(mVO) ;
			if(cnt == 1) {
				session = request.getSession();
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
	@RequestMapping(value = "forgotID.do")
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
	@RequestMapping(value = "forgotIDPROC.do")
	@ResponseBody
	public HashMap<String, String> loginFindIdProc(MemberVO mVO /* name, mail */) {
		
		
		MemberVO tVO = mDAO.forgotId(mVO);
		
		HashMap<String, String> map = new HashMap<String, String>();
		if (tVO == null) {
			map.put("result", "NO");
		}
		
		map.put("id", tVO.getIdentification());
		
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
