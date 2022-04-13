
/**
 * 기업관련 페이지를 처리하는 컨트롤러 클래스
 * @author ssin
 * @version 1.0
 * @since  2022.04.04
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

import app.companysInfo.CompanysInfo;
import app.companysInfo.CompanysInfoService;
import app.companysInfo.Criteria;
import app.companysInfo.Page;
import app.job_opening.JobOpening;
import app.job_opening.JobOpeningService;
import app.job_opening.JobOpeningServiceImpl;
import app.spec.Spec;
import app.spec.SpecService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CompanyController {

	@Autowired
	SqlSession sqlSession;
	
    @Autowired
    private CompanysInfoService companysInfoServiceImpl;
    @Autowired
    private JobOpeningService JobOpeningServiceImpl;
    @Autowired
    private SpecService SpecServiceImpl;
//	/**
//	 * 회사 리스트 페이지
//	 * 
//	 * @return View 지정
//	 * @throws Exception
//	 */
//	@RequestMapping(value = "company.do")
//	public String company(Model model) throws Exception {
//		//String now = "";
//		List<CompanysInfo> result_list = null;
//		try {
//			log.debug("데이터베이스 연결 성공\n");
//			//now = sqlSession.selectOne("CompanysInfo.getCompanysInfoList");
//			result_list = companysInfoServiceImpl.getCompanysInfoList(); 
//		} catch (Exception e) {
//			log.debug(e.getMessage());
//			log.debug("데이터베이스 연결 실패\n");
//		}
//
//		//model.addAttribute("now", now);
//		model.addAttribute("result_list", result_list);
//		
//		return "company/companyInfo_main";
//		//return "company/com-main";
//	}
	
	
	/**
	 * 회사 리스트 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	//회사목록보기(PageMaker객체 사용)
	// http://localhost:8080/company.do
	@RequestMapping(value = "company.do", method = RequestMethod.GET)
	public String company(@ModelAttribute("cri") Criteria cri,Model model) throws Exception {
		log.info(cri.toString());
		//전체 기업 리스트 가져오기
		List<CompanysInfo> result_list = null;
		List<JobOpening> job_list = null;
 		
		//채용 공고 진행 업데이트
		//JobOpeningServiceImpl.update();
		//model.addAttribute("result_list", JobOpeningServiceImpl.getJobOpeningTotalList());
		try {
			log.debug("데이터베이스 연결 성공\n");
			//now = sqlSession.selectOne("CompanysInfo.getCompanysInfoList");
			JobOpeningServiceImpl.update(job_list);
			result_list = companysInfoServiceImpl.getCompanysInfoList();//
		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}


		//model.addAttribute("result_list", result_list)
		Page pageMaker = new Page();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(companysInfoServiceImpl.pageCount(cri));
		
		//model.addAttribute("result_list", JobOpeningServiceImpl.update(result_list));//공고 리스트_진행 업데이트 
		model.addAttribute("result_list", companysInfoServiceImpl.listCri(cri));  // 게시판의 글 리스트
		
		
		model.addAttribute("pageMaker", pageMaker);  // 게시판 하단의 페이징 관련, 이전페이지, 페이지 링크 , 다음 페이지
		
		
		return "company/companyInfo_main";

	}
////
//	@RequestMapping(value = "update")
//	public String update(SqlSession sqlSession) throws Exception {
//		log.info("update");
//		//전체 기업 리스트 가져오기
//		List<CompanysInfo> result_list = null;
//	
//		try {
//			log.debug("데이터베이스 연결 성공\n");
//			//now = sqlSession.selectOne("CompanysInfo.getCompanysInfoList");
//			result_list = companysInfoServiceImpl.getCompanysInfoList(); 
//		} catch (Exception e) {
//			log.debug(e.getMessage());
//			log.debug("데이터베이스 연결 실패\n");
//		}
//
//
//		//model.addAttribute("result_list", result_list)
//		Page pageMaker = new Page();
//		pageMaker.setCri(cri);
//		pageMaker.setTotalCount(companysInfoServiceImpl.pageCount(cri));
//		
//		model.addAttribute("result_list", JobOpeningServiceImpl.getJobOpeningTotalList());//공고 리스트_진행 업데이트 
//		model.addAttribute("result_list", companysInfoServiceImpl.listCri(cri));  // 게시판의 글 리스트
//		
//		
//		model.addAttribute("pageMaker", pageMaker);  // 게시판 하단의 페이징 관련, 이전페이지, 페이지 링크 , 다음 페이지
//		
//		
//		return "company/companyInfo_main";
//
//	}
	/**
	 * 회사 내용 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	@RequestMapping(value = "comDetail.do",method=RequestMethod.GET)
	public String comDetail(int index, Model model) throws Exception {
		CompanysInfo items = new CompanysInfo();

		items = companysInfoServiceImpl.getCompanysInfoContent(index);
		//진행_업데이트_삭제 예정
		//JobOpeningServiceImpl.ongoing(index);
		//해당기업 채용 리스트 가져오기
		List<JobOpening> detail_list = null;
		//해당기업 스펙 리스트 가져오기
		List<Spec> spec = null;
		try { 
			//now = sqlSession.selectOne("CompanysInfo.getCompanysInfoList");
			detail_list = JobOpeningServiceImpl.getJobOpeningList(index);
			log.debug("채용공고 데이터베이스 연결 성공\n");
			//spec = SpecServiceImpl.getSpecList(index);
			log.debug("스펙 데이터베이스 연결 성공\n");
		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("채용공고&스펙 데이터베이스 연결 실패\n");
		}
		//스펙 데이터 추가
		model.addAttribute("spec", SpecServiceImpl.getSpecList(index));
		//채용 공고 리스트
		model.addAttribute("detail_list", JobOpeningServiceImpl.getJobOpeningList(index)); 
		
		//기업정보(기업*산업조인)
		model.addAttribute("items", items);//model에 데이터값담음
		return "company/companyInfo_detail";//company/companyInfo_detail.jsp이
		//return "company/com-detail";
	}
	

}
