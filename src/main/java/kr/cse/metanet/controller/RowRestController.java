package kr.cse.metanet.controller;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import kr.cse.metanet.model.Row;
import kr.cse.metanet.service.RowService;

@RestController
public class RowRestController {
	
	@Autowired
	private RowService rowService;
	
	@RequestMapping(value="/api/rows", method=RequestMethod.GET)
	public List<Row> getRows() {
		
		List<Row> rows = rowService.findAll();
		
		return rows;
	}
	
	@RequestMapping(value = "/api/search/rows", method = RequestMethod.GET)
	public List<Row> programListSearch(Row row,@RequestParam("searchPlanStartDate")String spsd, @RequestParam("searchPlanEndDate")String sped) {

		Row filterBy = new Row();

		if (checkBlank(row.getPartName()).equals("전체")) {
			filterBy.setPartName(null);
		} else {
			filterBy.setPartName(row.getPartName());
		}

		filterBy.setDeveloperName(checkBlank(row.getDeveloperName()));
		filterBy.setProgramId(checkBlank(row.getProgramId()));
		filterBy.setProgramName(checkBlank(row.getProgramName()));
		
		ExampleMatcher matcher = ExampleMatcher.matching()
                .withStringMatcher(ExampleMatcher.StringMatcher.CONTAINING);
		 
		Example<Row> example = Example.of(filterBy,matcher);
		//List<Row> rows = (List<Row>) rowService.findAll(r);
		
		List<Row> rows = rowService.find(example, spsd, sped);
		System.out.println(rows);
		
		

		return rows;
	}

	private String checkBlank(String str) {
		if (StringUtils.isBlank(str))
			return null;
		else
			return str;
	}
	
}
