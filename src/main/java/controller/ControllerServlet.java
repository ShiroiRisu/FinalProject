package controller;

import java.io.IOException;
import java.util.HashSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.command.ActionCommand;
import controller.command.factory.ActionFactory;

@WebServlet("/app/*")
public class ControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ActionFactory client;

	public void init() {
		this.client = new ActionFactory();
		this.getServletConfig().getServletContext().setAttribute("loggedUsers", new HashSet<String>());
		System.out.println("servinit");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*System.out.println("IN SERV| " + request.getRequestURI());
        System.out.println(request.getParameter("username"));
        System.out.println(request.getParameter("command"));
        HttpSession	session = request.getSession();
        Enumeration<String> e = session.getAttributeNames();
        while ( e.hasMoreElements())
        {
            Object tring;
            if ((tring = e.nextElement()) != null)
            {
                System.out.println(session.getAttribute((String) tring));
            }

        }*/
        //
		System.out.println(this.getServletContext().getAttribute("loggedUsers"));
		System.out.println(request.getSession().getAttribute("userName"));
		System.out.println(request.getSession().getAttribute("role"));
        String page = null;
		ActionCommand command = client.defineCommand(request);
		page = command.execute(request);
		System.out.println("page after" + command + "command: " + page);

		if (page.contains("redirect:")) {
			response.sendRedirect(page.replace("redirect:", request.getContextPath()));
		} else {
			request.getRequestDispatcher(page).forward(request, response);
        } 
		
        //System.out.println("am forwardin");
	}
}
