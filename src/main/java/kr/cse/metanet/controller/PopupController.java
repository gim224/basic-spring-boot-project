package kr.cse.metanet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller	
public class PopupController {

	@RequestMapping("/happy")
	public String result() {
		
		
		return "calendarResultRegistration";
	}
}
