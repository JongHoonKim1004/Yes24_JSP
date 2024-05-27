package com.zima.controller;

import com.zima.controller.action.Action;
import com.zima.controller.action.BoardCheckPassAction;
import com.zima.controller.action.BoardCheckPassFormAction;
import com.zima.controller.action.BoardDeleteAction;
import com.zima.controller.action.BoardListAction;
import com.zima.controller.action.BoardUpdateAction;
import com.zima.controller.action.BoardUpdateFormAction;
import com.zima.controller.action.BoardViewAction;
import com.zima.controller.action.BoardWriteAction;
import com.zima.controller.action.BoardWriteFormAction;

public class ActionFactory {
	
	//생성자, 인스턴스
	private static ActionFactory instance = new ActionFactory();
	private ActionFactory() {super();}
	public static ActionFactory getInstance() {
		return instance;
	}
	
	//
	public Action getAction(String command) {
		Action action = null;
		System.out.println("ActionFactory : " + command);
		if(command.equals("board_list")) {
			action = new BoardListAction();
		} else if (command.equals("board_write_form")) {
			action = new BoardWriteFormAction();
		} else if(command.equals("board_write")) {
			action = new BoardWriteAction();
		} else if(command.equals("board_view")) {
			action = new BoardViewAction();
		} else if(command.equals("board_check_pass_form")) {
			action = new BoardCheckPassFormAction();
		} else if(command.equals("board_check_pass")) {
			action = new BoardCheckPassAction();
		} else if(command.equals("board_update_form")) {
			action = new BoardUpdateFormAction();
		} else if(command.equals("board_update")) {
			action = new BoardUpdateAction();
		} else if(command.equals("board_delete")) {
			action = new BoardDeleteAction();
		}
		
		
		return action;		
	}
	
}
