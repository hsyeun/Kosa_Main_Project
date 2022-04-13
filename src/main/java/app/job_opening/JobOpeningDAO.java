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
//xml 실행. 실제 데이터에 접근&조작하는 클래스
	@Autowired
    SqlSession sqlSession;
	//mapper
	//    private static final String NAMESPACE = "com.doubles.ex03.mapper.BoardMapper";
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
	
//	//날짜 비교(오늘마감3,채용중2,상시채용1,채용마감0)
//	public int compareTo(String due) {
//		// TODO Auto-generated method stub
//		int progress; //채용중,상시채용,채용완료
//		//오늘날짜 생성
//		String todayfm = new SimpleDateFormat("yyyy.MM.dd").format(new Date(System.currentTimeMillis()));
//		//yyyy.MM.dd 포맷 설정
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd");
//		Date date = null;
//		Date today = null;
//		//String due = o.getDue();
//		//비교할 date와 today를 데이터 포맷으로 변경
//		try {
//			date = new Date(dateFormat.parse(due).getTime());
//			today = new Date(dateFormat.parse(todayfm).getTime());
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		} 
//		int compare = date.compareTo(today);
//		//조건
//		if(compare > 0) {
//		  System.out.println("채용중");
//		  progress =2; //채용중
//		}else if(compare == 0) {
//			  //System.out.println("today와 date가 같습니다.(date = today)");
//			System.out.println("오늘마감");
//			progress=3;//오늘 마감
//		}else if(compare < 0) {
//		  System.out.println("채용마감");
//		  progress=0;//채용마감
//		}else {
//		  //System.out.println("today와 date가 같습니다.(date = today)");
//			System.out.println("상시채용");
//			progress=1;//상시채용
//		}
//		return progress;
//	}
//    // 댓글 상세내용 불러오기
//	public CompanysInfo getContent(int index) throws Exception {
//
//		CompanysInfo companysInfo = null;
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
//		
//	}
//	
//	//페이징
//	public List<CompanysInfo> listPage(int page) throws Exception {
//		//페이지가 0인 경우 1로 바꿔서 처리
//		if(page <= 0) {
//			page = 1;
//		}
//		page = (page - 1)*10;
//
//		System.out.println("DAO: 페이징");
//		return sqlSession.selectList("CompanysInfo.listPage", page);
//	}
//
//	//목록: 페이징.페이징 처리하는 동작(Criteria 객체 사용)
//	public List<CompanysInfo> listPageCri(Criteria cri) throws Exception {
//		System.out.println("DAO: listPageCri 호출");
//		return sqlSession.selectList("CompanysInfo.listPageCri", cri);
//	}
//
//	//목록 전체갯수.DB 테이블에 있는 모든 글 개수 계산 후 리턴
//	public int pageCount(Criteria cri) throws Exception{
//		System.out.println("DAO: pagecount호출");
//		return sqlSession.selectOne("pageCount",cri);
//		//return sqlSession.selectOne(NAMESPACE+".pageCount");
//	}

}
