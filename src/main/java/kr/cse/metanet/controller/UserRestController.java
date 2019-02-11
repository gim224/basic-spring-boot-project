package kr.cse.metanet.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import kr.cse.metanet.dao.UserRepository;
import kr.cse.metanet.model.User;

@RestController
public class UserRestController {
	@Autowired
	private UserRepository userRepository;

	@RequestMapping(value = "/add")
	public User add(User user) {
		return userRepository.save(user);

	}

	@RequestMapping("/list")
	public List<User> list(Model model) {
		return userRepository.findAll();
	}
}
