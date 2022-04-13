package app.companysInfo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import app.job_opening.JobOpening;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CompanysInfoServiceImpl implements CompanysInfoService {

	@Autowired
	private CompanysInfoDAO companysInfoDAO;
	//목록: 기본
	@Override
	public List<CompanysInfo> getCompanysInfoList() throws Exception {
		List<CompanysInfo> result = companysInfoDAO.getList(); 
		return result;
	}

	@Override
	public CompanysInfo getCompanysInfoContent(int index) throws Exception {
		CompanysInfo vo = companysInfoDAO.getContent(index);
		return vo;
	}
	//추천 기업
	@Override
	public CompanysInfo getRecCompany(int index) throws Exception {
		// TODO Auto-generated method stub
		CompanysInfo vo = companysInfoDAO.getRec(index);
		return vo;
	}

	//목록: 페이지처리한 글 목록
	@Override
	public List<CompanysInfo> listCri(Criteria cri) throws Exception {
		return companysInfoDAO.listPageCri(cri);
	}
	
	//목록 전체 갯수 .DB 테이블에 있는 모든 글 개수 계산 후 리턴
	@Override
	public int pageCount(Criteria cri) throws Exception {
		return companysInfoDAO.pageCount(cri);
	}
	//채용 공고 리스트
	@Override
	public List<CompanysInfo> getJobOpeningList() throws Exception {
		// TODO Auto-generated method stub
		return this.companysInfoDAO.getJobOpeningList();
	}
	
	@Override
	public List<CompanysInfo> getCompanysInfoListMain() throws Exception {
		return companysInfoDAO.getCompanysInfoListMain();
	}


	@Override
	public List<CompanysInfo> list(SearchCriteria criteria) throws Exception {
		// TODO Auto-generated method stub
		 return companysInfoDAO.list(criteria);
		
	}

	@Override
	public int listCount(SearchCriteria criteria) throws Exception {
		// TODO Auto-generated method stub
		return companysInfoDAO.listCount(criteria);
	}



}
