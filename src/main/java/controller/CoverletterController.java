
/**
 * 자소서 관련 페이지를 처리하는 컨트롤러 클래스
 * @author soo
 * @version 1.0
 * @since  2022.04.05
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
public class CoverletterController {

	@Autowired
	SqlSession sqlSession;

	/**
	 * 자소서 작성 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "coverWrite.do")
	public ModelAndView Write() throws Exception {
		
		ModelAndView mav = new ModelAndView();
		
		
		mav.setViewName("coverLetter/cover-write");   // jsp파일 이름
		return mav;
	}

		
		
	
	
	/**
	 * 자소서 분석 페이지
	 * 
	 * @return View 지정
//	 * @throws Exception
//	 */

	@RequestMapping(value = "coverAnalyze.do")
	public String analyze(Model model) throws Exception {
		String now = "";
		
		try {
//			log.debug("데이터베이스 연결 성공\n");
			now = sqlSession.selectOne("Test.getTest");
		
		} catch (Exception e) {
//			log.debug(e.getMessage());
//			log.debug("데이터베이스 연결 실패\n");
		}
		
		model.addAttribute("now", now);
		
		return "coverLetter/cover-analyze";
	}
	
	
	
	
	
}
