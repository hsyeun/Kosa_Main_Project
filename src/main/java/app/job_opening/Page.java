package app.job_opening;
//실제 페이징 하단 담당_이전,다음,페이버번호
public class Page {
	 private int totalCount; // 회사 전체 갯수
	 private int startPage; // 전체 시작 페이지
	 private int endPage; // 전체 끝 페이지
	 private boolean prev;// 이전 페이지 버튼 활성화
	 private boolean next; //다음 페이지 버튼 활헝화

	 private int displayPageNum = 10; // 화면에 한번에 보여질 페이지 번호의 갯수

	 private Criteria criteria; 
	 
	 public void setCri(Criteria criteria) {
		 this.criteria = criteria;
	 }

	 public void setTotalCount(int totalCount) {
		 this.totalCount = totalCount;
		 System.out.println("DB에서 총 글의 개수를 계산");
		//총 글의 개수를 가지고 왔을때 필요한 정보를 계산
		 calcData();
	 }

	 public int getTotalCount() {
		 return totalCount;
	 }

	 public int getStartPage() {
		 return startPage;
	 }

	 public int getEndPage() {
		 return endPage;
	 }

	 public boolean isPrev() {
		 return prev;
	 }

	 public boolean isNext() {
		 return next;
	 }

	 public int getDisplayPageNum() {
		 return displayPageNum;
	 }

	 public Criteria getCri() {
		 return criteria;
	 }
	 
	 private void calcData() {
		 endPage = (int) (Math.ceil(criteria.getPage() / (double)displayPageNum) * displayPageNum);
		 startPage = (endPage - displayPageNum) + 1;
	  
		 int tempEndPage = (int) (Math.ceil(totalCount / (double)criteria.getPerPageNum()));
		 if (endPage > tempEndPage)
		 {
			 endPage = tempEndPage;
		 }
		 prev = startPage == 1 ? false : true;
		 next = endPage * criteria.getPerPageNum() >= totalCount ? false : true;
		 System.out.println("페이징처리정보 계산");
	 }
	 

}
