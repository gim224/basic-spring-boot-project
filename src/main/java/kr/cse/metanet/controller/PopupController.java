package kr.cse.metanet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.cse.metanet.model.Row;
import kr.cse.metanet.service.RowService;

@Controller
public class PopupController {

	@Autowired
	private RowService rowService;

	@RequestMapping("/resultRegistration")
	public String result(@RequestParam("idx")int idx,Model model) {
		
		Row row = rowService.getOne(idx);
		if(row != null) {
		model.addAttribute("row", row);
		
		return "calendarResultRegistration";
		}
		else
			return "errorpage";
	}
}
