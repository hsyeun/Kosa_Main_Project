package app.companysInfo;

import app.industry.Industry;
import app.spec.Spec;
import app.job_opening.JobOpening;
import lombok.Data;
import java.util.List;

import javax.persistence.*;

@Entity
@Data
public class CompanysInfo{
	@Id
	@GeneratedValue
	@Column(name="com_index")
	int index; //회사 번호
	int i_index;
	String name = "";
	int headcount;
	String division = "";
	String found_date ="";
	String capital ="";
	String sales="";
	String bussiness="";
	String url="";
	String address="";
	String ceo="";
	String ind_detail="";
	String logo_url="";
	
	private Industry industry;
	
	public Industry getIndustry() {		
		return industry;
	}
	public void setIndustry(Industry industry) {		
		this.industry = industry;
	}
	private Spec spec;
	
	public Spec getSpec() {		
		return spec;
	}
	public void setSpec(Spec spec) {		
		this.spec = spec;
	}

	//기업의 채용 공고 목록	
	@OneToMany(mappedBy="company")
	@JoinColumn(name="com_index")
	private JobOpening jobOpening;
	
	public CompanysInfo() {}

	public CompanysInfo(int index, int i_index, String name, int headcount, String division, String found_date,
			String capital, String sales, String bussiness, String url, String address, String ceo, String ind_detail) {
		super();
		this.index = index;
		this.i_index = i_index;
		this.name = name;
		this.headcount = headcount;
		this.division = division;
		this.found_date = found_date;
		this.capital = capital;
		this.sales = sales;
		this.bussiness = bussiness;
		this.url = url;
		this.address = address;
		this.ceo = ceo;
		this.ind_detail = ind_detail;
	}

	
}
