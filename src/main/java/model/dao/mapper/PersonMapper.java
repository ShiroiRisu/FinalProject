package model.dao.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Map;

import model.entity.Person;

public class PersonMapper implements EntityMapper<Person> {

	@Override
	public Person extractFromResultSet(ResultSet rs) throws SQLException {
		Person person = new Person();
		person.setId(rs.getInt("id"));
		person.setName(rs.getString("name"));
		person.setUsername(rs.getString("username"));
		person.setPassword(rs.getString("password"));
		person.setRole(Person.ROLE.valueOf(rs.getString("role").toUpperCase()));
		return person;
	}

	@Override
	public Person makeUnique(Map<Integer, Person> cache, Person teacher) {
		// TODO Auto-generated method stub
		return null;
	}

}
