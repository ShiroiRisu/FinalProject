package controller.listener;

import java.util.HashSet;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class SessionListener implements HttpSessionListener {
	private static int sessionCount;

	public void sessionCreated(HttpSessionEvent se) { System.out.println("sCret, now:" + ++sessionCount); }

	public void sessionDestroyed(HttpSessionEvent se) {
		@SuppressWarnings("unchecked")
		HashSet<String> loggedUsers = (HashSet<String>) se.getSession().getServletContext().getAttribute("loggedUsers");
		String userName = (String)se.getSession().getAttribute("userName");
		loggedUsers.remove(userName);
		se.getSession().getServletContext().setAttribute("loggedUsers", loggedUsers);
		System.out.println("sDest, now:" + --sessionCount);
	}
}
