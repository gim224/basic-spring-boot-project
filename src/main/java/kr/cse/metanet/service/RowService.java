package kr.cse.metanet.service;

import java.util.List;

import org.springframework.data.domain.Example;

import kr.cse.metanet.model.Row;

public interface RowService {

	List<Row> findAll();

	Row getOne(Integer id);

	Row save(Row row);

	List<Row> saveAll(List<Row> rows);

	Row update(Row row);

	//Iterable<Row> findAll(Example<Row> example);

	//List<Row> findAllByTimeBetween(String timeStart, String timeEnd);
	//여러 조건을 결합하라.
	List<Row> find(Example<Row> example, String timeStart, String timeEnd);

}
