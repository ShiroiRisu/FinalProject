package controller.command;

import javax.servlet.http.HttpServletRequest;

import controller.util.ConfigurationManager;

public class EmptyCommand implements ActionCommand {

	@Override
	public String execute(HttpServletRequest request) {
		String path = request.getRequestURI().replaceAll(".*/app/", "");
		System.out.println("EC:" + path);
		return ConfigurationManager.getProperty("path.page." + path);
	}

}
