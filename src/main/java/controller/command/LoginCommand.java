package controller.command;

import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import controller.util.CommandUtility;
import controller.util.ConfigurationManager;
import controller.util.MessageManager;
import model.entity.Person;
import model.service.PersonService;
//TODO static finals to interface!!!
public class LoginCommand implements ActionCommand {
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
			CommandUtility.checkUserIsLogged(request, username);
			CommandUtility.setUserRole(request, person.get().getRole().toString(), username);
			page = ("redirect:/app/" + person.get().getRole().toString().toLowerCase());
		} else {
			request.setAttribute("errorLoginMessage", MessageManager.getMessage("message.loginerror"));
			page = ConfigurationManager.getProperty("path.page.login");
		}
		return page;
	}

}
