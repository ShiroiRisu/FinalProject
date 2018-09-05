package model.service;

import java.util.List;
import java.util.Optional;

import model.dao.DaoFactory;
import model.dao.PersonDao;
import model.entity.Person;

public class PersonService {
	private DaoFactory daoFactory = DaoFactory.getInstance();
	
	public List<Person> getAllPerson() {
		try (PersonDao dao = daoFactory.createPersonDao()) {
			return dao.findAll();
		}
	}
	
	public Optional<Person> login(String username) {
		Optional<Person> result = Optional.empty();
		try(PersonDao dao = daoFactory.createPersonDao()) {
			result = dao.findByUsername(username);
		}
		return result;
	}
	
	public boolean insert(Person person) {
		try(PersonDao dao = daoFactory.createPersonDao()) {
			return dao.create(person);
		}
	}
}
