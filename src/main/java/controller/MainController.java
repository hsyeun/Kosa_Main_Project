
/**
 * 메인 페이지를 처리하는 컨트롤러 클래스
 * @author helloastro
 * @version 1.0
 * @since  
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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import app.companysInfo.CompanysInfo;
import app.companysInfo.CompanysInfoService;
import app.companysInfo.Criteria;
import app.companysInfo.Page;
import app.job_opening.JobOpening;
import app.job_opening.JobOpeningService;
import app.member.Member;
import app.spec.SpecService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class MainController {

	@Autowired
	SqlSession sqlSession;
	
    @Autowired
    private CompanysInfoService companysInfoServiceImpl;
    @Autowired
    private JobOpeningService JobOpeningServiceImpl;
    @Autowired
    private SpecService SpecServiceImpl;
    
    /**
	 * 메인 페이지
	 * @return View 지정
     * @throws Exception 
	 */
	@RequestMapping(value = "/main.do")
	public ModelAndView main(HttpSession session) throws Exception {
		ModelAndView mav = new ModelAndView("main");

		List<CompanysInfo> result_list = null;
		try {
			log.debug("데이터베이스 연결 성공\n");
			result_list = companysInfoServiceImpl.getCompanysInfoListMain();
		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}

		mav.addObject("result_list", result_list);  // 게시판의 글 리스트
		
		return mav;
	}
	
	/*
	 * @RequestMapping(value = "company.do", method = RequestMethod.GET) public
	 * String company(@ModelAttribute("cri") Criteria cri,Model model) throws
	 * Exception { log.info(cri.toString()); //전체 기업 리스트 가져오기 List<CompanysInfo>
	 * result_list = null; //List<JobOpening> job_list = null;
	 * 
	 * 
	 * try { log.debug("데이터베이스 연결 성공\n"); //JobOpeningServiceImpl.update(job_list);
	 * result_list = companysInfoServiceImpl.getCompanysInfoList(); } catch
	 * (Exception e) { log.debug(e.getMessage()); log.debug("데이터베이스 연결 실패\n"); }
	 * 
	 * 
	 * model.addAttribute("result_list", result_list); // 게시판의 글 리스트
	 * 
	 * return "";
	 * 
	 * }
	 */
}
