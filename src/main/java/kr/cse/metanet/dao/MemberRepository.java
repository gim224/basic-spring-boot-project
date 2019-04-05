package kr.cse.metanet.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.cse.metanet.model.Member;

public interface MemberRepository extends JpaRepository<Member, Integer> {

	public Member findByUsername(String username);
}
