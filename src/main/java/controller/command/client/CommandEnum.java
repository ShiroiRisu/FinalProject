package controller.command.client;

import controller.command.ActionCommand;
import controller.command.LoginCommand;
import controller.command.LogoutCommand;
import controller.command.RegisterCommand;
import model.service.PersonService;

public enum CommandEnum {
	
	LOGIN {
		{
			this.command = new LoginCommand(new PersonService());
		}
	}, 
	LOGOUT {
		{
			this.command = new LogoutCommand();
		}
	},
	REGISTER {
		{
			this.command = new RegisterCommand(new PersonService());
		}
	};
	
	ActionCommand command;
	public ActionCommand getCurrentCommand() { return command; }
}
