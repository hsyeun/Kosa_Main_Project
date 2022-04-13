package app.job_opening;
//공고 목록 페이징 전용
public class Criteria {
	 private int page;// 보여줄 페이지 번호.현재 페이지
	 private int perPageNum; // 페이지 당 보여줄 목록 갯수
	 private int rowStart; // 한 페이지 목록 시작 게시물
	 private int rowEnd; //한 페이지 목록 마지막 게시물
	 
	 //최초 목록에 진입할때 위한 기본값 지정
	 public Criteria() {
		 this.page = 1;
		 this.perPageNum = 10;
	 }

	 public void setPage(int page) {
		 if (page <= 0) {
			 this.page = 1;
			 return;
		 }
		 this.page = page;
	 }

	 public void setPerPageNum(int perPageNum) {
		 if (perPageNum <= 0 || perPageNum > 100) {
			 this.perPageNum = 10;
			 return;
		 }
		 this.perPageNum = perPageNum;
	 }

	 public int getPage() {
		 return page;
	 }
	 //시작 위치 정할때 사용.예를 들면this.page 가 1이면 0이 되야 처음 부터 10개씩 출력
	 public int getPageStart() {
		 return (this.page - 1) * perPageNum;
	 }

	 public int getPerPageNum() {
		 return this.perPageNum;
	 }

	 @Override
	 public String toString() {
	  return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ""
	    + ", rowStart=" +  getRowStart() + ", rowEnd=" + getRowEnd()
	    + "]";
	 }

	 public int getRowStart() {
		 rowStart = ((page - 1) * perPageNum) + 1;
		 return rowStart;
	 }

	 public int getRowEnd() {
		 rowEnd = rowStart + perPageNum - 1;
		 return rowEnd;
	 }

}
