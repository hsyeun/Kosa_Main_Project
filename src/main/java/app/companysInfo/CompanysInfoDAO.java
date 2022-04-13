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
//mapper(xml)를 실행해주는 클래스. 데이터에 접근하는 클래스    	
	@Autowired
    SqlSession sqlSession;
	//mapper
	//    private static final String NAMESPACE = "com.doubles.ex03.mapper.BoardMapper";
	//private static final String NAMESPACE = "app.companysInfo.CompanysInfo";

	 // 회사 목록 보기
	public List<CompanysInfo> getList() throws Exception {
		
		List<CompanysInfo> result = new ArrayList<CompanysInfo>();
		
        try {
        	result = sqlSession.selectList("CompanysInfo.getCompanysInfoList");
        } catch (Exception se) {
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
	

//
//	public void insert(CompanysInfo vo) throws Exception {
//   
//		try
//		{	
//        	sqlSession.insert("CompanysInfo.insertCompanysInfo", vo);
//	    }
//	    catch (Exception se)
//	    {
//        	throw new Exception(se);
//	    }
//		
//	}
//
//	public void delete(String code) throws Exception {
//		try
//		{
//        	sqlSession.delete("GoodsInfo.deleteGoodsInfo", code);
//	    }
//	    catch (Exception se)
//	    {
//        	throw new Exception(se);
//	    }		
//	}
//
//	public void update(CompanysInfo vo) throws Exception {
//		try
//		{
//        	sqlSession.update("GoodsInfo.updateGoodsInfo", vo);
//	    }
//	    catch (Exception se)
//	    {
//        	throw new Exception(se);
//	    }	
//	}
    
}
