package kr.cse.metanet.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.cse.metanet.model.Member;
import kr.cse.metanet.service.MemberService;

@Controller
public class HomeController {

	@Autowired
	private MemberService memberSerivce;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {

		Member member = memberSerivce.getCurrentMember();
		String role = memberSerivce.getCurrentMemberRole();
		model.addAttribute("member", member);
		model.addAttribute("role",role);

		return "home";
	}

	@RequestMapping(value = "/todo", method = RequestMethod.GET)
	public String todoList() {
		return "todoList";
	}



}
