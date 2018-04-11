package com.para.glider.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;

import com.para.glider.model.Paraglider;

public class ParagliderDaoImp implements ParagliderDao {
	
	private JdbcTemplate jdbcTemplate;
	
	public ParagliderDaoImp(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
		
	}
	
	@Override
	public void delete(int paragliderId) {
		String sql = "DELETE FROM paraglider WHERE id=?";
		jdbcTemplate.update(sql, paragliderId);
		
	}
	@Override
	public Paraglider get(int paragliderId) {
		String sql = "SELECT * FROM  paraglider WHERE id=" + paragliderId;
		
		return jdbcTemplate.query(sql, new ResultSetExtractor<Paraglider>() {
			
			@Override
			public Paraglider extractData(ResultSet rs) throws SQLException, DataAccessException {
				if (rs.next()) {
					
					Paraglider para = new Paraglider();
					para.setId(rs.getInt("id"));
					para.setName(rs.getString("name"));
					para.setKolor(rs.getString("kolor"));
					para.setDate(rs.getString("date"));
					para.setManufacturer(rs.getString("manufacturer"));
					para.setPrice(rs.getString("price"));
					
					return para;
				}
				
				return null;
			}
			
		});
	}
	
	@Override
	public List<Paraglider> list() {
		String sql = "SELECT * FROM paraglider";
		List<Paraglider> listParaglider = jdbcTemplate.query(sql, new RowMapper<Paraglider>() {
			
			@Override
			public Paraglider mapRow(ResultSet rs, int rowNum) throws SQLException {
				Paraglider para = new Paraglider();
				
				para.setId(rs.getInt("id"));
				para.setName(rs.getString("name"));
				para.setKolor(rs.getString("kolor"));
				para.setDate(rs.getString("date"));
				para.setManufacturer(rs.getString("manufacturer"));
				para.setPrice(rs.getString("price"));
				return para;
			}
			
		});
		return listParaglider;
	}
	
	@Override
	public void saveOrUpdate(Paraglider paraglider) {
		if (paraglider.getId() > 0) {
			String sql = "UPDATE paraglider SET name=?, kolor=?, date=?, manufacturer=?, price=? WHERE id=?";
			jdbcTemplate.update(sql, paraglider.getName(), paraglider.getKolor(), paraglider.getDate(),
					paraglider.getManufacturer(), paraglider.getPrice(), paraglider.getId());
		} else {
			String sql = "INSERT INTO paraglider (name, kolor, date, manufacturer, price)"
					+ " VALUES (?, ?, ?, ?, ?)";
			jdbcTemplate.update(sql, paraglider.getName(), paraglider.getKolor(), paraglider.getDate(),
					paraglider.getManufacturer(), paraglider.getPrice());
		}
		
	}
	
	
	
	
	
	
	
	
}
