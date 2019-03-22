package kr.cse.metanet.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.cse.metanet.model.Row;
import kr.cse.metanet.util.ExcelRead;
import kr.cse.metanet.util.ExcelReadOption;

@Controller
public class ExcelFileController {

	// @Autowired
	// private RowServiceImpl rowServiceImpl;

	@RequestMapping(value = "/importFile", method = RequestMethod.POST)
	public String importExcel(@RequestParam("file") MultipartFile multipartFile) {

		String sourceFileName = multipartFile.getOriginalFilename();

		// 파일 읽는다.
		// excel 파일인지 검증.
		// 형식(탬플릿)이 맞는지 검증.
		// DB에 저장한다.

		if (multipartFile == null || multipartFile.isEmpty()) {
			throw new RuntimeException("엑셀파일을 선택 해 주세요.");
		}

		System.out.println("파일명:" + multipartFile.getOriginalFilename());

		File destFile = convert(multipartFile);
		excelUpload(destFile);

		List<Row> rows = null;

		// rowServiceImpl.saveAll(rows);

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

	private void excelUpload(File destFile) {
		ExcelReadOption excelReadOption = new ExcelReadOption();
		excelReadOption.setFilePath(destFile.getAbsolutePath());
		excelReadOption.setOutputColumns("A", "B", "C", "D", "E", "F", "G", "H", "I", "P", "S");
		excelReadOption.setStartRow(3);

		List<Map<String, String>> excelContent = ExcelRead.read(excelReadOption);

		for (Map<String, String> article : excelContent) {
			System.out.println(article.get("A"));
			System.out.println(article.get("B"));
			System.out.println(article.get("C"));
			System.out.println(article.get("D"));
			System.out.println(article.get("E"));
			System.out.println(article.get("F"));
			System.out.println(article.get("G"));
			System.out.println(article.get("H"));
			System.out.println(article.get("I"));
			System.out.println(article.get("P"));
			System.out.println(article.get("S"));

		}
	}

	public void exportExcel() {

	}
}
