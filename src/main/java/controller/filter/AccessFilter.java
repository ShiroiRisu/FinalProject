package controller.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import controller.util.ConfigurationManager;
import model.entity.Person;

@WebFilter("/app/*")
public class AccessFilter implements Filter {

    public AccessFilter() {
    }

	public void init(FilterConfig fConfig) throws ServletException {
	}
	
	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		String role = (String) req.getSession().getAttribute("role");
		if (role == null)
		{
			role = Person.ROLE.GUEST.toString();
			req.getSession().setAttribute("role", role);
			req.getServletContext().getRequestDispatcher(ConfigurationManager.getProperty("path.page.main")).forward(req, resp);
			return;
		}
		chain.doFilter(request, response);
	}
}
