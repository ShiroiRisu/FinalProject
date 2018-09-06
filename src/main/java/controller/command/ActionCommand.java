package controller.command;

import javax.servlet.http.HttpServletRequest;

public interface ActionCommand {
	public static final String PARAM_NAME_USERNAME = "username";
	public static final String PARAM_NAME_PASSWORD = "password";
	public static final String PARAM_NAME_NAME = "name";
	public static final String PARAM_NAME_ROLE = "role";
	
	String execute(HttpServletRequest request);
}
