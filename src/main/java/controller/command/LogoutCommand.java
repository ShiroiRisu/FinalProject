package controller.command;

import javax.servlet.http.HttpServletRequest;

public class LogoutCommand implements ActionCommand {

	@Override
	public String execute(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/app/main";
	}

}
