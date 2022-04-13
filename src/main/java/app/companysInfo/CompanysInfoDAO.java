package app.companysInfo;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Repository
public class CompanysInfoDAO {
 	
	@Autowired
    SqlSession sqlSession;

	//    private static final String NAMESPACE = "com.doubles.ex03.mapper.BoardMapper";
	//private static final String NAMESPACE = "app.companysInfo.CompanysInfo";
	
	 // 회사 목록 보기
	public List<CompanysInfo> getList() throws Exception {
		
		List<CompanysInfo> result = new ArrayList<CompanysInfo>();
		
        try
        {
        	result = sqlSession.selectList("CompanysInfo.getCompanysInfoList");
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
        
        return result;
		
	}
	public List<CompanysInfo> getCompanysInfoListMain() throws Exception {
		List<CompanysInfo> result = new ArrayList<CompanysInfo>();
		
		try {
			result = sqlSession.selectList("CompanysInfo.getCompanysInfoListMain");
		} catch (Exception se) {
			throw new Exception(se);
		}
		return result;
	}
	//채용공고 리스트 목록
	public List<CompanysInfo> getJobOpeningList() throws Exception {
        return this.sqlSession.selectList("CompanysInfo.getJobOpeningList");
	}
	
	//추천 기업 
	public CompanysInfo getRecCompany(int index) throws Exception {
		CompanysInfo companysInfo = null;
		try
        {
        	companysInfo = sqlSession.selectOne("CompanysInfo.getRecCompany",index);
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
        
        return companysInfo;
	}
    // 회사 상세내용 불러오기
	public CompanysInfo getContent(int index) throws Exception {

		CompanysInfo companysInfo = null;
        try
        {
        	companysInfo = sqlSession.selectOne("CompanysInfo.getCompanysInfoContent",index);
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
        
        return companysInfo;
		
	}
	// 추천 기업 내용
	public CompanysInfo getRec(int index) throws Exception {

		CompanysInfo companysInfo = null;
        try
        {
        	companysInfo = sqlSession.selectOne("CompanysInfo.getCompanysInfoContent",index);
        }
        catch (Exception se)
        {
        	throw new Exception(se);
        }
        
        return companysInfo;
	}
		
	
	//페이징
	public List<CompanysInfo> listPage(int page) throws Exception {
		//페이지가 0인 경우 1로 바꿔서 처리
		if(page <= 0) {
			page = 1;
		}
		page = (page - 1)*10;

		System.out.println("DAO: 페이징");
		return sqlSession.selectList("CompanysInfo.listPage", page);
	}

	//목록: 페이징.페이징 처리하는 동작(Criteria 객체 사용)
	public List<CompanysInfo> listPageCri(Criteria cri) throws Exception {
		System.out.println("DAO: listPageCri 호출");
		return sqlSession.selectList("CompanysInfo.listPageCri", cri);
	}

	//목록 전체갯수.DB 테이블에 있는 모든 글 개수 계산 후 리턴
	public int pageCount(Criteria cri) throws Exception{
		System.out.println("DAO: pagecount호출");
		return sqlSession.selectOne("pageCount",cri);
		//return sqlSession.selectOne(NAMESPACE+".pageCount");
	}
	 // 목록 : 페이징 + 검색
    public List<CompanysInfo> list(SearchCriteria criteria) throws Exception {
    	return sqlSession.selectList("CompanysInfo.listPaging", criteria);
	}

    // 목록 : 전체 갯수 or 검색된 갯수
    public int listCount(SearchCriteria criteria) throws Exception {
    	 return sqlSession.selectOne("CompanysInfo.listCount", criteria);
	}
	
    
}
