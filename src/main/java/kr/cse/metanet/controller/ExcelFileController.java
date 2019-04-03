package kr.cse.metanet.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.cse.metanet.model.Row;
import kr.cse.metanet.service.RowService;
import kr.cse.metanet.util.ExcelRead;
import kr.cse.metanet.util.ExcelReadOption;

@Controller
public class ExcelFileController {

	@Autowired
	private RowService rowService;

	@RequestMapping(value = "/importFile", method = RequestMethod.POST)
	public String importExcel(@RequestParam("file") MultipartFile multipartFile) {

		// 테이블에 데이터가 없다면.
		// 파일 읽는다.
		// excel 파일인지 검증.
		// 형식(탬플릿)이 맞는지 검증.
		// DB에 저장한다.

		if (multipartFile == null || multipartFile.isEmpty()) {
			throw new RuntimeException("엑셀파일을 선택 해 주세요.");
		}

		File destFile = convert(multipartFile);
		List<Row> rows = excelUpload(destFile);

		rowService.saveAll(rows);

		return "redirect:/";
	}

	private File convert(MultipartFile file) {
		File convFile = new File(file.getOriginalFilename());
		try {
			convFile.createNewFile();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		FileOutputStream fos = null;
		try {
			fos = new FileOutputStream(convFile);
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			fos.write(file.getBytes());
			fos.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return convFile;
	}

	private List<Row> excelUpload(File destFile) {
		ExcelReadOption excelReadOption = new ExcelReadOption();
		excelReadOption.setFilePath(destFile.getAbsolutePath());
		excelReadOption.setOutputColumns("A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P",
				"Q", "R", "S", "T", "U", "V");
		excelReadOption.setStartRow(3);

		List<Map<String, String>> excelContent = ExcelRead.read(excelReadOption);

		List<Row> rows = new ArrayList<Row>();

		for (Map<String, String> article : excelContent) {
			Row row = new Row();
			
			
			row.setUiId(article.get("B"));
			row.setUiName(article.get("C"));
			row.setPartName(article.get("D"));
			row.setWorkName(article.get("E"));
			row.setUnitWorkName(article.get("F"));
			row.setProgramId(article.get("G"));
			row.setProgramName(article.get("H"));
			row.setSourceFileName(article.get("I"));
			row.setExtension(article.get("J"));
			row.setType(article.get("K"));
			row.setLevelOfDifficulty(article.get("L"));
			row.setDeveloperName(article.get("M"));
			row.setDivisionOfChange(article.get("N"));
			row.setDateOfChange(convertToLocalDate(article.get("O")));
			row.setBatchId(article.get("P"));
			row.setInterfaceId(article.get("Q"));
			row.setNote(article.get("R"));
			row.setDevPlanStartDate(convertToLocalDate(article.get("S")));
			row.setDevPlanEndDate(convertToLocalDate(article.get("T")));
			row.setRealDevStartDate(convertToLocalDate(article.get("U")));
			row.setRealDevEndDate(convertToLocalDate(article.get("V")));

			rows.add(row);
		}

		return rows;
	}

	public void exportExcel() {

	}

	private LocalDate convertToLocalDate(String date) {
		
		// 날짜 형식이지만 비어있는 셀이 존재함.
		if (date.length() > 0)
			return LocalDate.parse(date);
		else
			return null;
	}
}
