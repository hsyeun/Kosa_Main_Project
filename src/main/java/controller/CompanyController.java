
/**
 * 기업관련 페이지를 처리하는 컨트롤러 클래스
 * @author soo
 * @version 1.0
 * @since  2022.04.03
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
public class CompanyController {

	@Autowired
	SqlSession sqlSession;

	/**
	 * 회사 첫 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "company.do")
	public String company(Model model) throws Exception {
		String now = "";

		try {
			log.debug("데이터베이스 연결 성공\n");
			now = sqlSession.selectOne("Test.getTest");

		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}

		model.addAttribute("now", now);

		return "company/com-main";
	}
	
	
	/**
	 * 회사 내용 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "comDetail.do")
	public String comDetail(Model model) throws Exception {
		String now = "";
		
		try {
			log.debug("데이터베이스 연결 성공\n");
			now = sqlSession.selectOne("Test.getTest");
			
		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}
		
		model.addAttribute("now", now);
		
		return "company/com-detail";
	}
	

}
