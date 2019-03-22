package kr.cse.metanet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.cse.metanet.dao.RowRepository;
import kr.cse.metanet.model.Row;

@Service
public class RowServiceImpl implements RowService{

	@Autowired
	private RowRepository rowRepository;
	
	@Override
	public List<Row> findAll() {		
		return rowRepository.findAll();
	}
	
	public Row save(Row row) {		
		return rowRepository.saveAndFlush(row);
	}
	
	public List<Row> saveAll(List<Row> rows) {
		List<Row> rowList = rowRepository.saveAll(rows);
		rowRepository.flush();
		
		return rowList;
	}
	
	

}
