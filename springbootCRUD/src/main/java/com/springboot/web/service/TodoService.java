package com.springboot.web.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.stereotype.Service;

import com.springboot.web.model.Todo;

@Service
public class TodoService {
	private static List<Todo> todos = new ArrayList<Todo>();
	private int todoCount=2;
	static {
		todos.add(new Todo(1, "priyank", "developer", new Date(), "aksh@gmail.com", "Akshat", new Date(2019, 12, 31),
				false));
		todos.add(new Todo(2, "priyank", "developer", new Date(), "pka@gmail.com", "Priyank", new Date(2019, 12, 31),
				false));
	}

	public List<Todo> getTodoList() {
		return todos;
	}

	public List<Todo> retrieveTodos(String user) {
		List<Todo> filteredTodos = new ArrayList<Todo>();
		for (Todo todo : todos) {
			if (todo.getUser().equalsIgnoreCase(user)) {
				filteredTodos.add(todo);
			}
		}
		return filteredTodos;
	}

	public Todo retrieveTodo(int id) {
		for (Todo todo : todos) {
			if (todo.getId() == id) {
				return todo;
			}
		}
		return null;
	}

	public void updateTodo(Todo todo) {
		todos.remove(todo);
		todos.add(todo);
	}

	public void addTodo(String user, String email,String desc, Date targetDate,Date endDate,String name, boolean isDone) {
		 todos.add(new Todo(++todoCount, user, desc, targetDate,email,name,endDate ,isDone));
	}

	public void deleteTodo(int id) {
		Iterator<Todo> iterator = todos.iterator();
		while (iterator.hasNext()) {
			Todo todo = iterator.next();
			if (todo.getId() == id) {
				iterator.remove();
			}
		}
	}
}