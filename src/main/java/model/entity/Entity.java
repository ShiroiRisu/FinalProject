package model.entity;

import java.io.Serializable;

public abstract class Entity implements Serializable, Cloneable {
	private static final long serialVersionUID = 1L;
	protected int id;

	public Entity() { }
	public Entity(int id) { this.id = id; }

	public int getId() { return id; }
	public void setId(int id) { this.id = id; }
}
