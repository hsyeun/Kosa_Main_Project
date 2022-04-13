package app.companysInfo;

import java.util.List;

public interface CompanysInfoService {
//dao호출하여 db데이터 조회
	//목록: 기본
	public List<CompanysInfo> getCompanysInfoList() throws Exception;
	
	public CompanysInfo getCompanysInfoContent(int index) throws Exception;
	
	//목록 :페이징 처리
	public List<CompanysInfo> listCri(Criteria cri) throws Exception;

	//DB 테이블에 있는 모든 목록 전체 개수 계산 후 리턴
	public int pageCount(Criteria cri) throws Exception;
	
	//채용 공고 리스트
	public List<CompanysInfo> getJobOpeningList() throws Exception;
	public List<CompanysInfo> getCompanysInfoListMain() throws Exception;
	

//	public void insertGoodsInfo(GoodsInfo vo) throws Exception;
//
//	public void deleteGoodsInfo(String code) throws Exception;
//	
//	public void updateGoodsInfo(GoodsInfo vo) throws Exception;

}
