package app.spec;

import javax.persistence.*;
import app.spec.Spec;
import lombok.Data;

@Entity
@Data
public class Spec {
	@Id
	@GeneratedValue
	private int index=-1; //스펙 인덱스
	private int com_index;// 기업 번호
	private int grade_rate;
	private int toeic_rate;
	private int toeic_speak_rate;
	private int opic_rate;
	private int etc_rate;
	private int overseas_exp_rate;
	private int intern_rate;
	private int prize_rate;	
	private int volunteer_rate;
	private int certificate_rate;
	private double grade;
	private double toeic;
	private String toeic_speak;
	private String opic_grade;
	private double etc;
	private double overseas_exp;
	private double intern;
	private double prize;	
	private double volunteer;
	private double certificate;
	
	
}
