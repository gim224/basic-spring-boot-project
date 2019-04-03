package kr.cse.metanet.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 
 * 
 * @package : kr.cse.metanet.model
 * @fileName : Row.java
 * @author : gt.kim
 * @date : 2019. 2. 11.
 * 
 *       순번 / 화면ID / 화면명 / 부문명 / 업무명 / 단위업무명 / 프로그램ID / 프로그램명 / 소스파일명 / 확장자 / 유형
 *       / 난이도 / 개발자 / 변경구분 / 변경일자 / 배치ID / 인터페이스ID / 비고 /// 개발계획시작일 / 개발계획종료일
 */
@Data
@Entity
public class Row {

	@Id
	@GeneratedValue
	private Integer idx;

	private String uiId; // 화면ID

	private String uiName; // 화면명

	private String partName; // 부문명

	private String workName; // 업무명

	private String unitWorkName; // 단위업무명

	private String programId; // 프로그램ID

	private String programName; // 프로그램명

	private String sourceFileName; // 소스파일명

	private String extension; // 확장자

	private String type; // 유형

	private String levelOfDifficulty;// 난이도

	private String developerName; // 개발자

	private String divisionOfChange; // 변경구분

	private LocalDate dateOfChange; // 변경일자

	private String batchId; // 배치ID

	private String interfaceId; // 인터페이스ID

	private String note; // 비고

	private LocalDate devPlanStartDate; // 개발계획시작일

	private LocalDate devPlanEndDate; // 개발계획종료일
	
	private LocalDate realDevStartDate;	// 실제개발시작일
	
	private LocalDate realDevEndDate;	// 실제개발종료일
	
	

}
