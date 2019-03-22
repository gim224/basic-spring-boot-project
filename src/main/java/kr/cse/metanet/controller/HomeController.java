package kr.cse.metanet.controller;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.cse.metanet.model.Row;
import kr.cse.metanet.service.RowServiceImpl;

@Controller
public class HomeController {

	@Autowired
	private RowServiceImpl rowServiceImpl;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		List<Row> rows = new ArrayList<Row>();
		
		Row row = new Row();
		LocalDate dpsd = LocalDate.of(2018, 9, 1);
		LocalDate dped = LocalDate.of(2019, 7, 31);
		row.setDeveloperName("gt.kim");
		row.setDevPlanStartDate(dpsd);
		row.setDevPlanEndDate(dped);
		
		rows.add(row);		
		
		Row row2 = new Row();
		LocalDate dpsd2 = LocalDate.of(2019, 2, 11);
		LocalDate dped2 = LocalDate.of(2019, 6, 30);
		row2.setDeveloperName("mg.bae");
		row2.setDevPlanStartDate(dpsd2);
		row2.setDevPlanEndDate(dped2);
		
		rows.add(row2);
		
		
		rowServiceImpl.saveAll(rows);
		
		int count = rows.size();
		
		
		
		model.addAttribute("rows",rows);
		model.addAttribute("count", count);
		
		return "home";
	}
	
	
	
	@RequestMapping(value = "/todo", method = RequestMethod.GET)
	public String todoList() {
		return "todoList";
	}
}
