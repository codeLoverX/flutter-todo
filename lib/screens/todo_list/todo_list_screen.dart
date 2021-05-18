// ignore: todo
// TODO Complete this file. This class should receive data from the main(). This class should pass data to the classes Bar and Body

import 'package:exercise2/models/mock_todos.dart';
import 'package:flutter/material.dart';

import '../../models/todo.dart';
import 'bar.dart';
import 'body.dart';

class TodoListScreen extends StatefulWidget {
  TodoListScreen(this.title);
  final String title;
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  /*
  StatefulWidget instances themselves are immutable and store their mutable state either in separate State objects that are created by the createState method, or in objects to which that State subscribes, for example Stream or ChangeNotifier objects, to which references are stored in final fields on the StatefulWidget itself.
*/
  // not stateful property
  List<Todo> todos;
  _TodoListScreenState() {
    this.todos = myTodoList;
  }
  void _updateTodos(index, tasks) {
    setState(() {
      this.todos[index].listOfTasks = tasks;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(false),
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(widget.title),
          body: Body(todos, _updateTodos),
        ),
      ),
    );
  }
}
