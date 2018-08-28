package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.command.ActionCommand;
import controller.command.factory.ActionFactory;
import controller.resource.ConfigurationManager;
import controller.resource.MessageManager;

@WebServlet("/app")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ActionFactory client;

	public void init() {
		this.client = new ActionFactory();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = null;
		ActionCommand command = client.defineCommand(request);

		page = command.execute(request);

		if (page != null) {
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(page);
			dispatcher.forward(request, response);
		} else {
			page = ConfigurationManager.getProperty("path.page.index");
			request.getSession().setAttribute("nullPage", MessageManager.getMessage("message.nullpage"));
			response.sendRedirect(request.getContextPath() + page);
		}
	}
}
