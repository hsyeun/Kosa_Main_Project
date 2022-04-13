package app.job_opening;

import java.util.List;

import app.job_opening.JobOpening;
import app.job_opening.SearchCriteria;



public interface JobOpeningService {
	//목록: 전체 채용 공고
	public List<JobOpening> getJobOpeningTotalList() throws Exception;
	
	public List<JobOpening> getJobOpeningList(int index) throws Exception;

	public int pageCount(Criteria cri)  throws Exception;

	public List<JobOpening> listCri(Criteria cri) throws Exception;


	public void update(List<JobOpening> result_list);

	//public void ongoingTotal();
	
	// 목록 : 페이징 + 검색
    public List<JobOpening> list(SearchCriteria criteria) throws Exception;

    // 목록 : 전체 갯수 or 검색된 갯수
    public int listCount(SearchCriteria cri) throws Exception;


}
