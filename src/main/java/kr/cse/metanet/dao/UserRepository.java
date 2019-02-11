package kr.cse.metanet.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.cse.metanet.model.User;

public interface UserRepository extends JpaRepository<User, Integer> {

}
