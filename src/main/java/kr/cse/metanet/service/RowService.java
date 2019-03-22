package kr.cse.metanet.service;

import java.util.List;

import kr.cse.metanet.model.Row;

public interface RowService {
	
	List<Row> findAll();
	
	Row save(Row row);
	
	List<Row> saveAll(List<Row> rows);

}
