package kr.cse.metanet.model;

import org.springframework.security.core.userdetails.User;

public class SecurityMember extends User{

	/**
	 * 
	 */
	private static final long serialVersionUID = -2665241335496798471L;
	
	private String ip;

	public SecurityMember(Member member) {
		super(member.getUsername(), member.getPassword(), member.getAuthorities());
		// TODO Auto-generated constructor stub
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}


}
