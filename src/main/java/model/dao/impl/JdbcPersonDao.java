package model.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import model.dao.PersonDao;
import model.dao.mapper.PersonMapper;
import model.entity.Person;

public class JdbcPersonDao implements PersonDao {
	private Connection connection;
	
	public JdbcPersonDao(Connection connection) {
		this.connection = connection;
	}
	
	@Override
	public boolean create(Person entity) {
		try(PreparedStatement ps = connection.prepareCall("INSERT INTO person(username, password, name) VALUES(?, ?, ?)")) {
			ps.setString(1, entity.getUsername());
			ps.setString(2, entity.getPassword());
			ps.setString(3, entity.getName());
			ps.executeUpdate();
			ResultSet rs = ps.getGeneratedKeys();
			if (rs.next()) {
				entity.setId(rs.getInt(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		return true;
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
	
	@Override
	public Optional<Person> findByUsername(String username) {
		Optional<Person> result = Optional.empty();
		try(PreparedStatement ps = connection.prepareCall("SELECT * FROM person WHERE username = ?")) {
			ps.setString(1, username);
			ResultSet rs = ps.executeQuery();
			PersonMapper mapper = new PersonMapper();
            if (rs.next()) { result = Optional.of(mapper.extractFromResultSet(rs)); }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}

}
