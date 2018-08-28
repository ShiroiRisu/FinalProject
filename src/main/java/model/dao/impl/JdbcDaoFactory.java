package model.dao.impl;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import model.dao.DaoFactory;
import model.dao.PersonDao;

public class JdbcDaoFactory extends DaoFactory {
	private DataSource dataSource = ConnectionPoolHolder.getDataSource();

	@Override
	public PersonDao createPersonDao() {
		return new JdbcPersonDao(getConnection());
	}
	
	private Connection getConnection() {
		try {
			return dataSource.getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}
