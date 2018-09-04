package model.dao;

import java.util.Optional;

import model.entity.Person;

public interface PersonDao extends GenericDao<Integer, Person> {
	//TODO sql strings to properties
	Optional<Person> findByUsername(String username);
}
