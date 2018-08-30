package controller.util;

import java.util.ResourceBundle;

public class MessageManager {
	private final static ResourceBundle resourceBundle = ResourceBundle.getBundle("message");
	
	private MessageManager() { }
	
	public static String getMessage(String key) {
		return resourceBundle.getString(key);
	}
}
