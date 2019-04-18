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
import kr.cse.metanet.model.MemberRole;

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

	@Override
	public String getCurrentMemberRole() {
		Member member = this.getCurrentMember();
		MemberRole mr = member.getMemberRole();
		String role = null;
		
		if(mr == MemberRole.ROLE_ADMIN) {
			role = "ADMIN";
		} else if(mr == MemberRole.ROLE_CS) {
			role = "감리";
		}else if(mr == MemberRole.ROLE_CU) {
			role = "고객";
		}else if(mr == MemberRole.ROLE_DEV) {
			role = "개발자";
		}else if(mr == MemberRole.ROLE_PL) {
			role = "PL";
		}else if(mr == MemberRole.ROLE_QA) {
			role = "품질";
		}else if(mr == MemberRole.ROLE_TP) {
			role = "제3자";
		}else {
			role = null;
		}
		
		return role;
	}

}
