package kr.cse.metanet.dao;

import java.time.LocalDate;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import kr.cse.metanet.model.Row;

public interface RowRepository extends JpaRepository<Row, Integer> {
	List<Row> findAllByDevPlanEndDateBetween(LocalDate publicationTimeStart, LocalDate publicationTimeEnd);
}
