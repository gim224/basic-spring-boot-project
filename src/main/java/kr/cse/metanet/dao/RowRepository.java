package kr.cse.metanet.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.cse.metanet.model.Row;

public interface RowRepository extends JpaRepository<Row, Integer> {

}
