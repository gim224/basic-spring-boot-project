package kr.cse.metanet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
}
