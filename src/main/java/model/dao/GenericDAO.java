package model.dao;

import java.sql.Connection;
import java.sql.Statement;
import java.util.List;

import model.entity.Entity;

public interface GenericDAO<K, T extends Entity> extends AutoCloseable {
	void create(T entity);
    T findById(K id);
    List<T> findAll();
    void update(T entity);
    void delete(K id);
    void close(Statement st);
    void close(Connection connection);
}
