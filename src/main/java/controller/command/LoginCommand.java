package controller.command;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import controller.util.ConfigurationManager;
import controller.util.MessageManager;
import model.entity.Person;
import model.service.PersonService;
//TODO static finals to interface!!!
public class LoginCommand implements ActionCommand {
	private static final String PARAM_NAME_USERNAME = "username";
	private static final String PARAM_NAME_PASSWORD = "password";
	
	private PersonService personService;
	
	public LoginCommand(PersonService personService) {
		this.personService = personService;
	}

	@Override
	public String execute(HttpServletRequest request) {
		String page = null;
		String username = request.getParameter(PARAM_NAME_USERNAME);
		String password = request.getParameter(PARAM_NAME_PASSWORD);
		Optional<Person> person = personService.login(username);
		if (person.isPresent() && person.get().getPassword().equals(password)) { //TODO pass hash?
			request.setAttribute("user", username);
			page = ConfigurationManager.getProperty("path.page.main");
		} else {
			request.setAttribute("errorLoginPassMessage",
					MessageManager.getMessage("message.loginerror"));
			page = ConfigurationManager.getProperty("path.page.login");
		}
		return page;
	}

}
