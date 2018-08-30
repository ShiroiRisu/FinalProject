package model.entity;

public class Person extends Entity {
	private static final long serialVersionUID = 1L;
	private String username;
	private String name;
	private String password;

	public Person() {}

	public Person(int id, String username, String password, String name) {
		super(id);
		this.username = username;
		this.name = name;
		this.password = password;
	}

	public String getUsername() { return username; }
	public void setUsername(String username) { this.username = username; }
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }
	public String getPassword() { return password; }
	public void setPassword(String password) { this.password = password; }

	@Override
	public String toString() {
		return "Person [id=" + id +", username=" + username + ", name=" + name + "]";
	}
}
