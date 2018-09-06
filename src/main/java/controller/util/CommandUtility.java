package controller.util;

import java.util.HashSet;

import javax.servlet.http.HttpServletRequest;

public class CommandUtility {
	public static boolean checkUserIsLogged(HttpServletRequest request, String userName) {
		@SuppressWarnings("unchecked")
		HashSet<String> loggedUsers = (HashSet<String>) request.getSession().getServletContext().getAttribute("loggedUsers");

		if (loggedUsers.stream().anyMatch(userName::equals)) {
			return true;
		}
		loggedUsers.add(userName);
		request.getSession().getServletContext().setAttribute("loggedUsers", loggedUsers);
		return false;
	}

	public static void setUserRole(HttpServletRequest request, String role, String name) {
		request.getSession().setAttribute("userName", name);
		request.getSession().setAttribute("role", role);
	}
}
