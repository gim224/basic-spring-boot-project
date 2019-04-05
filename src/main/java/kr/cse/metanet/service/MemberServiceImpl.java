package kr.cse.metanet.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Service;

import kr.cse.metanet.dao.MemberRepository;
import kr.cse.metanet.model.Member;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	private MemberRepository memberRepository;

	@Override
	public Member findByUsername(String username) {
		return memberRepository.findByUsername(username);
	}

	@Override
	public List<String> readAuthority(String username) {
		Set<GrantedAuthority> co = findByUsername(username).getAuthorities();
		
		List<String> result = new ArrayList<>();
		
		Iterator<?> itr = co.iterator();
		while(itr.hasNext()) {
			result.add(itr.next().toString());
		}
		
		return result;
	}
	
	
	@Override
	public Member getCurrentMember() {
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		User user = (User) authentication.getPrincipal();
		return findByUsername(user.getUsername());
	}

}
