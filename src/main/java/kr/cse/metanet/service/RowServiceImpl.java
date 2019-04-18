package kr.cse.metanet.service;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.stereotype.Service;

import kr.cse.metanet.dao.RowRepository;
import kr.cse.metanet.model.Row;

@Service
public class RowServiceImpl implements RowService {

	@Autowired
	private RowRepository rowRepository;

	@Override
	public List<Row> findAll() {
		return rowRepository.findAll();
	}

	@Override
	public Row save(Row row) {
		return rowRepository.saveAndFlush(row);
	}

	@Override
	public List<Row> saveAll(List<Row> rows) {
		List<Row> rowList = rowRepository.saveAll(rows);
		rowRepository.flush();

		return rowList;
	}

	@Override
	public Row getOne(Integer id) {
		return rowRepository.getOne(id);
	}

	@Override
	public Row update(Row row) {
		Row r = this.getOne(row.getIdx());
		return this.save(r);
	}

	
	private Iterable<Row> findAll(Example<Row> example) {
		return rowRepository.findAll(example);
	}

	
	private List<Row> findAllByTimeBetween(String timeStart, String timeEnd) {
		
				
		if (checkBlank(timeStart) != null & checkBlank(timeEnd) != null) {
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
			LocalDate ts = LocalDate.parse(timeStart, formatter);
			LocalDate te = LocalDate.parse(timeEnd, formatter);

			return rowRepository.findAllByDevPlanEndDateBetween(ts, te);
		} else {
			return findAll();
		}
	}
	
	private String checkBlank(String str) {
		if (StringUtils.isBlank(str))
			return null;
		else
			return str;
	}
	
	
	@Override
	public List<Row> find(Example<Row> example, String timeStart, String timeEnd){
		List<Row> r1 = (List<Row>)this.findAll(example);
		List<Row> r2 = this.findAllByTimeBetween(timeStart, timeEnd);
		
		r1.retainAll(r2);
		
		return r1;
	}



}
