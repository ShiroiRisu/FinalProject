package controller.command;

import javax.servlet.http.HttpServletRequest;

import controller.util.ConfigurationManager;
import controller.util.MessageManager;
import model.entity.Person;
import model.service.PersonService;
//TODO static finals to interface!!!
public class RegisterCommand implements ActionCommand {
	private static final String PARAM_NAME_USERNAME = "username";
	private static final String PARAM_NAME_PASSWORD = "password";
	private static final String PARAM_NAME_NAME = "name";
	
	private PersonService personService;
	
	public RegisterCommand(PersonService personService) {
		this.personService = personService;
	}

	@Override
	public String execute(HttpServletRequest request) {
		String page = null;
		String username = request.getParameter(PARAM_NAME_USERNAME);
		String password = request.getParameter(PARAM_NAME_PASSWORD);
		String name = request.getParameter(PARAM_NAME_NAME);
		
		if (personService.insert(new Person(0, username, password, name))) {
			request.setAttribute("successRegisterMessage", MessageManager.getMessage("message.regsuccess"));
			page = ConfigurationManager.getProperty("path.page.login");
		} else {
			request.setAttribute("errorRegisterMessage", MessageManager.getMessage("message.regerror"));
			page = ConfigurationManager.getProperty("path.page.register");
		}
		return page;
	}

}
