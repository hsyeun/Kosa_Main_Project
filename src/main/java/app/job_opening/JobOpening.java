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
	
			
}
