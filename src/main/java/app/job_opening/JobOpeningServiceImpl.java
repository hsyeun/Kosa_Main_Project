package app.job_opening;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class JobOpeningServiceImpl implements JobOpeningService {
//데이터베이스 받아서 모델로 만듬	
	@Autowired
	private JobOpeningDAO jobOpeningDAO;
	
	
	//해당 기업의 공고 리스트
	@Override
	public List<JobOpening> getJobOpeningList(int index) throws Exception {
		// TODO Auto-generated method stub
		//ongoing(index);
		List<JobOpening> result =jobOpeningDAO.getList(index);	
		return result;
	}

	//전체 공고목록: 기본
	@Override
	public List<JobOpening> getJobOpeningTotalList() throws Exception {
		// TODO Auto-generated method stub
		List<JobOpening> result_total = jobOpeningDAO.getTotalList(); 
		return result_total;
	}
//진행 업데이트
//	@Override
//	public void ongoing(int index){
//		// TODO Auto-generated method stub
//		jobOpeningDAO.ongoing(index);
//	}

	@Override
	public int pageCount(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return jobOpeningDAO.pageCount(cri);
	}

	@Override
	public List<JobOpening> listCri(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return jobOpeningDAO.listPageCri(cri);
	}

	@Override
	public void update(List<JobOpening> result_list) {
		// TODO Auto-generated method stub
		jobOpeningDAO.update(result_list);
		
	}

//	@Override
//	public void update(JobOpening vo) throws Exception {
//		// TODO Auto-generated method stub
//		jobOpeningDAO.update(vo);
//	}

//	@Override
//	public int getProgress(int index) throws Exception {
//		// TODO Auto-generated method stub
//		return 0;
//	}
}
