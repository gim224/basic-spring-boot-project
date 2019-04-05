package kr.cse.metanet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.cse.metanet.dao.MemberRepository;
import kr.cse.metanet.model.Member;

@RestController
public class MemberRestController {
	@Autowired
	private MemberRepository memberRepository;

	@RequestMapping(value = "/add")
	public Member add(Member user) {
		return memberRepository.save(user);

	}

	@RequestMapping("/list")
	public List<Member> list(Model model) {	
		return memberRepository.findAll();
	}
}
