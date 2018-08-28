package model.dao.impl;

import java.sql.Connection;
import java.util.List;

import model.dao.PersonDao;
import model.entity.Person;

public class JdbcPersonDao implements PersonDao {
	private Connection connection;
	
	public JdbcPersonDao(Connection connection) {
		this.connection = connection;
	}
	@Override
	public void create(Person entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public Person findById(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Person> findAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(Person entity) {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub

	}

	@Override
	public void close() {
		// TODO Auto-generated method stub

	}

}
