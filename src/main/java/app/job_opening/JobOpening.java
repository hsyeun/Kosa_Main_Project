package app.job_opening;

import javax.persistence.*;
import app.companysInfo.CompanysInfo;
import lombok.Data;

@Entity
@Data
public class JobOpening{
	//sql.Db변수
	@Id
	@GeneratedValue
	private int index; //채용공고 번호
	//private int cat_index;
	private int com_index;//회사 번호
	private String career="";
	private String background="";
	private String employ = "";
	private String etc="";
	private String due="";
	private String require="";
	private String title="";
	private String region="";
	private int ongoing=-1;//날짜 비교(오늘마감3,채용중2,상시채용1,채용마감0)
//	@Transient
//	private int process;//날짜 비교(오늘마감3,채용중2,상시채용1,채용마감0)
//	
	@ManyToOne
	@JoinColumn(name="com_index",insertable=false, updatable=false)
	private CompanysInfo company;
	
	public CompanysInfo getCompanysInfo() {		
		return company;
	}
	public void setCompanysInfo(CompanysInfo company) {		
		this.company = company;
	}
	
	public JobOpening() {}
	
	public JobOpening(int index, int com_index, String career, String background, String employ, String etc, String due,
			String require, String title, String region, int ongoing, CompanysInfo company) {
		super();
		this.index = index;
		this.com_index = com_index;
		this.career = career;
		this.background = background;
		this.employ = employ;
		this.etc = etc;
		this.due = due;
		this.require = require;
		this.title = title;
		this.region = region;
		this.ongoing = ongoing;
		this.company = company;
	}
	

//	public void setProcess(int process) {
//		// TODO Auto-generated method stub
//		this.process = process;
//	}

	
//	//날짜 비교(오늘마감3,채용중2,상시채용1,채용마감0)
//	public int compareTo(String due) {
//		// TODO Auto-generated method stub
//		int progress; //채용중,상시채용,채용완료
//		//오늘날짜 생성
//		String todayfm = new SimpleDateFormat("yyyy.MM.dd").format(new Date(System.currentTimeMillis()));
//		//yyyy.MM.dd 포맷 설정
//		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy.MM.dd");
//		
//		//String due = o.getDue();
//		//비교할 date와 today를 데이터 포맷으로 변경
//	
//		Date date = null;
//		Date today = null;
//		try {
//			date = new Date(dateFormat.parse(due).getTime());
//			today = new Date(dateFormat.parse(todayfm).getTime());
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//	
//		int compare = date.compareTo(today);
//		//조건
//		if(compare > 0) {
//		  System.out.println("채용중");
//		  progress =2; //채용중
//		}else if(compare >= 0) {
//			  //System.out.println("today와 date가 같습니다.(date = today)");
//			System.out.println("오늘마감");
//			progress=3;//오늘 마감
//		}else if(compare > 0) {
//		  System.out.println("채용마감");
//		  progress=0;//채용마감
//		}else {
//		  //System.out.println("today와 date가 같습니다.(date = today)");
//			System.out.println("상시채용");
//			progress=1;//상시채용
//		}
//		return progress;
//	}

			
}
