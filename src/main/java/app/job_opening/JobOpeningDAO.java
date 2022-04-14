package app.job_opening;

import java.util.ArrayList;
import java.util.List;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class JobOpeningDAO {

	@Autowired
    SqlSession sqlSession;

	//private static final String NAMESPACE = "app.companysInfo.CompanysInfo";
	//전체공고 목록
	public List<JobOpening> getTotalList() throws Exception {
		
		List<JobOpening> result_total = new ArrayList<JobOpening>();
		
        try
        {
        	result_total = sqlSession.selectList("JobOpening.getJobOpeningTotalList");
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
        
        return result_total;
		
	}	
	
	 // 해당 기업의 공고 목록 보기
//	public JobOpening getList(int index) throws Exception {
//		
//		JobOpening vo = jobOpeningDAO.getRec(index);
//	
//        return vo;
//		
//	}
	public List<JobOpening> getList(int index) throws Exception {
		
		List<JobOpening> result = new ArrayList<JobOpening>();
		
        try
        {
        	result = sqlSession.selectList("JobOpening.getJobOpeningList", index);
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
       
        return result;
		
	}
//	public void ongoing(int index) {
//		// TODO Auto-generated method stub
//		sqlSession.update("JobOpening.ongoing", index);
//	}
	//추천기업
	public void update_rec(int rec_index) {
		// TODO Auto-generated method stub
		sqlSession.update("JobOpening.update_rec", rec_index);
		//return sqlSession.update("JobOpening.update_rec", rec_index);
	}
	
	//업데이트
	public void update(List<JobOpening> result_list) {
		sqlSession.update("JobOpening.update", result_list);
		
	}
	
	
	//페이징
	public List<JobOpening> listPage(int page) throws Exception {
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*10;

		System.out.println("job_DAO: 페이징");
		return sqlSession.selectList("JobOpening.listPage", page);
	}

	public int pageCount(Criteria cri) {
		// TODO Auto-generated method stub
		System.out.println("DAO: pagecount_job호출");
		return sqlSession.selectOne("pageCount_job",cri);
	}

	public List<JobOpening> listPageCri(Criteria cri) {
		// TODO Auto-generated method stub
		System.out.println("job_DAO: listPageCri 호출");
		return sqlSession.selectList("JobOpening.listPageCri", cri);
	}

	 // 목록 : 페이징 + 검색
    public List<JobOpening> list(SearchCriteria criteria) throws Exception {
    	System.out.println("job_DAO: 목록페이징 검색 호출");
    	return sqlSession.selectList("JobOpening.listPaging", criteria);
	}

    // 목록 : 전체 갯수 or 검색된 갯수
    public int listCount(SearchCriteria criteria) throws Exception {
    	System.out.println("job_DAO: 갯 호출");
    	 return sqlSession.selectOne("JobOpening.listCount", criteria);
	}

	public JobOpening getContent(int rec_index) throws Exception {
		// TODO Auto-generated method stub
		JobOpening jobOpening = null;
        try
        {
        	jobOpening = sqlSession.selectOne("JobOpening.getJobOpeningContent",rec_index);
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
        
        return jobOpening;
	}


//	public JobOpening getContent(int index) {
//		// TODO Auto-generated method stub
//		JobOpening companysInfo = null;
//        try
//        {
//        	companysInfo = sqlSession.selectOne("CompanysInfo.getCompanysInfoContent",index);
//        }
//        catch (Exception se)
//        {
//        	throw new Exception(se);
//        }
//        
//        return companysInfo;
//	}



}
