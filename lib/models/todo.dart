// ignore: todo
// TODO Define the model class Todo here. The attributes are given. Complete the rest.

import 'task.dart';

class Todo {
  String title;
  // bool completed;
  List<Task> listOfTasks;
  Todo({this.title, this.listOfTasks});
  Todo.copy(Todo from) : this(title: from.title, listOfTasks: from.listOfTasks);
}
