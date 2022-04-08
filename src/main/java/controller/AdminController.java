
/**
 * 관리자 페이지 관련 기능을 처리하는 컨트롤러 클래스
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

//import app.member.MemberService;
//import app.member.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AdminController {

	@Autowired
	SqlSession sqlSession;

	/**
	 * 어드민페이지 메인 - 멤버 리스트
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "admin.do")
	public ModelAndView Admin() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("admin/admin");
		return mav;
	}
	
	/**
	 * 어드민페이지 - 통계
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "admin-statistics.do")
	public ModelAndView Statistics() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("admin/admin-statistics");
		return mav;
	}
	
	/**
	 * 어드민페이지 - 로그
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "admin-log.do")
	public ModelAndView Log() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("admin/admin-log");
		return mav;
	}
	
	/**
	 * 어드민페이지 - 쿼리
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "admin-query.do")
	public ModelAndView Query() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("admin/admin-query");
		return mav;
	}

	
}
