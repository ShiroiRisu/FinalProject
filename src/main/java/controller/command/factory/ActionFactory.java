package controller.command.factory;

import javax.servlet.http.HttpServletRequest;

import controller.command.ActionCommand;
import controller.command.EmptyCommand;
import controller.command.client.CommandEnum;

public class ActionFactory {
	public ActionCommand defineCommand(HttpServletRequest request) {
		ActionCommand current = new EmptyCommand();
		//TODO swap to sessionrequestcontent
		String action = request.getParameter("command");
		
		if (action == null || action.isEmpty()) { return current; }
		CommandEnum currentEnum = CommandEnum.valueOf(action.toUpperCase());
		current = currentEnum.getCurrentCommand();
		return current;
	}
}
