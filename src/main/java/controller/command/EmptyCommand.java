package controller.command;

import javax.servlet.http.HttpServletRequest;

public class EmptyCommand implements ActionCommand {

	@Override
	public String execute(HttpServletRequest request) {
		// TODO emptycommand
		return null;
	}

}
