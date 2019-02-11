package kr.cse.metanet.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.Data;

/**
 * 
 * 
 * @package : kr.cse.metanet.model 
 * @fileName : Row.java 
 * @author : gt.kim
 * @date : 2019. 2. 11.
 * 
 * 순번 / 화면ID / 화면명 / 부문명 / 업무명 / 단위업무명 / 프로그램ID / 프로그램명 / 소스파일명 / 확장자 / 유형 / 난이도 / 개발자 / 변경구분 / 변경일자 / 배치ID / 인터페이스ID / 비고
 * 개발계획시작일 / 개발계획종료일
 */
@Data
@Entity
public class Row {
	
	@Id
	@GeneratedValue
	private Integer idx;
	
	private String uiId;
	
	private String uiName;
	
	private String 부문명;
	
	private String 업무명;
	
	private String 단위업무명;
	
	private String programId;
	
	private String programName;
	
	private String sourceFileName;

	//확장자
	private String extension;
	
	//유형
	private String type;
	
	//난이도
	private String levelOfDifficulty;
	
	//개발자
	private String developerName;
	
	private String 변경구분;
	
	private LocalDate 변경일자;
	
	private String batchId;
	
	private String interfaceId;
	
	//비고
	private String note;
	
	//개발계획시작일
	private LocalDate devPlanStartDate;
	
	//개발계획종료일
	private LocalDate devPlanEndDate;

	
	//실제개발시작일
//	private LocalDate realDevStartDate;
	
	//실제개발종료일
//	private LocalDate realDevEndDate;

	
	
}
