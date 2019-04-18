package kr.cse.metanet.service;

import java.util.List;

import kr.cse.metanet.model.Member;

public interface MemberService {

	public Member findByUsername(String username);

	public List<String> readAuthority(String username);
	
	public Member getCurrentMember();
	
	public String getCurrentMemberRole();
	
}
