package controller.command.client;

import controller.command.ActionCommand;
import controller.command.LoginCommand;
import controller.command.LogoutCommand;

public enum CommandEnum {
	
	LOGIN {
		{
			this.command = new LoginCommand();
		}
	}, 
	LOGOUT {
		{
			this.command = new LogoutCommand();
		}
	};
	
	ActionCommand command;
	public ActionCommand getCurrentCommand() { return command; }
}
