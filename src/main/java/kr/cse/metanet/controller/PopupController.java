package kr.cse.metanet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.cse.metanet.model.Member;
import kr.cse.metanet.model.Row;
import kr.cse.metanet.service.MemberService;
import kr.cse.metanet.service.RowService;

@Controller
public class PopupController {

	@Autowired
	private RowService rowService;

	@Autowired
	private MemberService memberService;

	@RequestMapping("/resultRegistration")
	public String result(@RequestParam("idx") int idx, Model model) {

		Member member = memberService.getCurrentMember();
		String role = memberService.getCurrentMemberRole();
		model.addAttribute("member", member);
		model.addAttribute("role", role);
		
		Row row = rowService.getOne(idx);
		if (row != null) {
			model.addAttribute("row", row);

			return "calendarResultRegistration";
		} else
			return "errorpage";
	}
}
