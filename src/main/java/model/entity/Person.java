package model.entity;

public class Person extends Entity {
	private static final long serialVersionUID = 1L;
	private String username;
	private String password;
	private String name;
	
	public Person() {}

	public Person(int id, String username, String password, String name) {
		super(id);
		this.username = username;
		this.password = password;
		this.name = name;
	}

	public String getUsername() { return username; }
	public void setUsername(String username) { this.username = username; }
	public String getPassword() { return password; }
	public void setPassword(String password) { this.password = password; }
	public String getName() { return name; }
	public void setName(String name) { this.name = name; }

	@Override
	public String toString() {
		return "Person [id=" + id +", username=" + username + ", password=" + password + ", name=" + name + "]";
	}
}
