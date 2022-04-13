/**
 * 채용공고 관련 페이지를 처리하는 컨트롤러 클래스
 * @author ssin
 * @version 1.0
 * @since  2022.04.09
 * 
 */
package controller;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.job_opening.Criteria;
import app.job_opening.Page;
import app.job_opening.SearchCriteria;
import app.job_opening.JobOpening;
import app.job_opening.JobOpeningService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class JobOpeningControlller {
	@Autowired
	SqlSession sqlSession;
    @Autowired
    private JobOpeningService jobOpeningServiceImpl;
    
//    채용 공고 리스트
 // http://localhost:8080/jobOpening.do
 	@RequestMapping(value = "jobOpening.do", method = RequestMethod.GET)
 	public String jobOpening(@ModelAttribute("cri") SearchCriteria cri,Model model) throws Exception {
 		log.info(cri.toString());
 		//전체 기업 리스트 가져오기
 		List<JobOpening> result_list = null;
 		List<JobOpening> result_total = null;
 		try {
 			log.debug("채용공고전체 리스트_데이터베이스 연결 성공\n");
 			//now = sqlSession.selectOne("CompanysInfo.getCompanysInfoList");
 			result_list = jobOpeningServiceImpl.getJobOpeningTotalList(); //getJobOpeingTotalList와 companysInfo.pageCount실행
 			log.debug("채용공고전체 리스트_업데이트 성공\n");
 			jobOpeningServiceImpl.update(result_list);
 		} catch (Exception e) {
 			log.debug(e.getMessage());
 			log.debug("채용공고전체 리스트_데이터베이스 연결 실패\n");
 		}

 		Page pageMaker = new Page();
 		pageMaker.setCri(cri);
 		pageMaker.setTotalCount(jobOpeningServiceImpl.pageCount(cri));
 		
 		log.info("채용공고 페이지카운드");
 		model.addAttribute("result_list", jobOpeningServiceImpl.getJobOpeningTotalList()); //공고 리스트
 		model.addAttribute("result_list", jobOpeningServiceImpl.listCri(cri));  // 게시판의 글 리스트
 		//채용 공고 리스트
 		//model.addAttribute("result_list", JobOpeningServiceImpl.getJobOpeningList(index)); 
 		
 		model.addAttribute("pageMaker", pageMaker);  // 게시판 하단의 페이징 관련, 이전페이지, 페이지 링크 , 다음 페이지
 		//추가
		model.addAttribute("totalCount", jobOpeningServiceImpl.listCount(cri)); 
		
 		log.info(cri.toString());
 	

 		return "jobOpening/jobOpening_main";

 	}
 	// 진행사항 업데이트
 	@RequestMapping(value = "update" , method=RequestMethod.POST)
 	public String postUpdate(List<JobOpening> vo) throws Exception{
 		jobOpeningServiceImpl.update(vo);
 		return "redirect:jobOpening.do";
 	}
    
}
