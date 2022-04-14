
/**
 * 기업관련 페이지를 처리하는 컨트롤러 클래스
 * @author ssin
 * @version 1.0
 * @since  2022.04.04
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

import app.companysInfo.CompanysInfo;
import app.companysInfo.CompanysInfoService;
import app.companysInfo.Criteria;
import app.companysInfo.Page;
import app.companysInfo.SearchCriteria;
import app.job_opening.JobOpening;
import app.job_opening.JobOpeningService;
import app.job_opening.JobOpeningServiceImpl;
import app.member.MemberDAO;
import app.member.MemberVO;
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
	@Autowired
	MemberDAO mDAO;
	/**
	 * 회사 리스트 페이지
	 * 
	 * @return View 지정
	 * @throws Exception
	 */
	//회사목록보기(PageMaker객체 사용) + 검색(page.java수정)
	// http://localhost:8080/company.do
	@RequestMapping(value = "company.do", method = RequestMethod.GET)
	public String company(@ModelAttribute("cri") SearchCriteria cri,Model model,HttpSession session) throws Exception {
		log.info(cri.toString());

		//전체 기업 리스트 가져오기
		List<CompanysInfo> result_list = null;
		List<JobOpening> job_list = null;
		//해당기업 채용 리스트 가져오기
		List<JobOpening> recCompany_list = null;
		
		//로그인확인
		if(session.getAttribute("SID") != null) {
			//model.setViewName("coverLetter/cover-write");   // jsp파일 이름
			//model.addAttribute("user_id", session.getAttribute("SID"));
			String id = (String) session.getAttribute("SID"); 
			MemberVO mVO = mDAO.getMyInfo(id);
			model.addAttribute("DATA", mVO);
			
			CompanysInfo rec = new CompanysInfo();
			int rec_index = mVO.getCompany_rec();
			rec = companysInfoServiceImpl.getCompanysInfoContent(rec_index);
			
			CompanysInfo rec2 = new CompanysInfo();
			int rec_index2 = mVO.getCompany_rec2();
			rec2 = companysInfoServiceImpl.getCompanysInfoContent(rec_index2);

			model.addAttribute("rec_company",rec);  // 게시판의 글 리스트
			model.addAttribute("rec_company2",rec2);
			log.info("로그인 확인");
//			model.addAttribute("msg", id +"님의 추천기업:)");
//			model.addAttribute("url", "company.do");
				 
		} 
		//채용 공고 진행 업데이트
		try {
			log.debug("데이터베이스 연결 성공\n");
			//now = sqlSession.selectOne("CompanysInfo.getCompanysInfoList");
			//채용공고_진행 업데이트
			JobOpeningServiceImpl.update(job_list);
			//추천 기업
			//rec=sqlSession.selectOne("CompanysInfo.getRecCompany",);
			//기업 전체 리스트
			result_list = companysInfoServiceImpl.getCompanysInfoList();
		} catch (Exception e) {
			log.debug(e.getMessage());
			log.debug("데이터베이스 연결 실패\n");
		}


		//model.addAttribute("result_list", result_list)
		Page pageMaker = new Page();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(companysInfoServiceImpl.pageCount(cri));
		
		//model.addAttribute("rec", rec); // 유저의 추천 기업
		model.addAttribute("result_list", companysInfoServiceImpl.listCri(cri));  // 게시판의 글 리스트
		model.addAttribute("pageMaker", pageMaker);  // 게시판 하단의 페이징 관련, 이전페이지, 페이지 링크 , 다음 페이지
		//추가
		model.addAttribute("totalCount", companysInfoServiceImpl.listCount(cri)); 
		
		return "company/companyInfo_main";

	}

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
		return "company/companyInfo_detail";//company/companyInfo_detail.jsp
	
	}

	

}
