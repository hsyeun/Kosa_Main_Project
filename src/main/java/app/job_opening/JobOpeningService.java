package app.job_opening;

import java.util.List;



public interface JobOpeningService {
	//목록: 전체 채용 공고
	public List<JobOpening> getJobOpeningTotalList() throws Exception;
	
	public List<JobOpening> getJobOpeningList(int index) throws Exception;
	//public int getProgress(int index) throws Exception;
	
	//진행 업데이트
	//public void ongoing(int index) throws Exception;

	
	public int pageCount(Criteria cri)  throws Exception;

	public List<JobOpening> listCri(Criteria cri) throws Exception;

	//public void update(JobOpening vo) throws Exception;

	public void update(List<JobOpening> result_list);

	//public void ongoingTotal();

}
