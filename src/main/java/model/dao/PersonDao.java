package model.dao;

import java.util.Optional;

import model.entity.Person;

public interface PersonDao extends GenericDao<Integer, Person> {
	//TODO add static finals for SQL requests
	Optional<Person> findByUsername(String username);
}
