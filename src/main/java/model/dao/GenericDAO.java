package model.dao;

import java.util.List;

import model.entity.Entity;

public interface GenericDao<K, T extends Entity> extends AutoCloseable {
	boolean create(T entity);
    T findById(K id);
    List<T> findAll();
    void update(T entity);
    void delete(K id);
    void close();
}
