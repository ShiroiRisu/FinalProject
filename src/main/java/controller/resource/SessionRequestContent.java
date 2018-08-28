package controller.resource;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

public class SessionRequestContent {
	private HashMap<String, Object> requestAttributes;
	private HashMap<String, String[]> requestParameters;
	private HashMap<String, Object> sessionAttributes;

	public void extractValues(HttpServletRequest request) {
		//TODO session request content
	}
	
	public void insertAttributes(HttpServletRequest request) {
		//TODO session request content
	}
}
