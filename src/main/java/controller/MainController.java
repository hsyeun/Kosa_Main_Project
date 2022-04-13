
/**
 * 메인 페이지를 처리하는 컨트롤러 클래스
 * @author helloastro
 * @version 1.0
 * @since  
 * 
 */

package controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

import app.member.Member;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {

	@Autowired
    SqlSession sqlSession;

	@RequestMapping(value = "main.do")    
	public String main(Model model) {

		return "main";
	}
	
    
}

/**
 * 메인 페이지
 * @return View 지정
 * @throws Exception 
 */
/**@RequestMapping(value = "/controller/main.do",method= {RequestMethod.POST,RequestMethod.GET})
public ModelAndView main(HttpServletRequest request,HttpServletResponse response) throws Exception {
	HttpSession session = request.getSession();
	ModelAndView mav = new ModelAndView();
	String viewName = (String)request.getAttribute("viewName");
	log.debug("메인 페이지 뷰네임 : " + viewName);
	mav.setViewName(viewName);
	
	String SID = (String) session.getAttribute("SID");
	log.debug("메인 페이지 세션id : " + SID);
	if (SID != null) {
		session.setAttribute("SID", SID);
	}else {
//	String now = "";
//	
//	try
//	{
//		log.debug("데이터베이스 연결 성공\n");
//		now = sqlSession.selectOne("Test.getTest");
//	    
//	} catch (Exception e) {
//		log.debug(e.getMessage());
//		log.debug("데이터베이스 연결 실패\n");	
//	}
//	
//	model.addAttribute("now", now);
	
}
	return mav;
}*/