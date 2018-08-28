package controller.command;

import javax.servlet.http.HttpServletRequest;

import controller.resource.ConfigurationManager;
import controller.resource.MessageManager;

public class LoginCommand implements ActionCommand {
	private static final String PARAM_NAME_LOGIN = "login";
	private static final String PARAM_NAME_PASSWORD = "password";

	@Override
	public String execute(HttpServletRequest request) {
		String page = null;
		String login = request.getParameter(PARAM_NAME_LOGIN);
		String pass = request.getParameter(PARAM_NAME_PASSWORD);
		//TODO logic
		if (login != null && pass != null) {
			request.setAttribute("user", login);
			page = ConfigurationManager.getProperty("path.page.main");
		} else {
			request.setAttribute("errorLoginPassMessage",
					MessageManager.getMessage("message.loginerror"));
			page = ConfigurationManager.getProperty("path.page.login");
		}
		return page;
	}

}
