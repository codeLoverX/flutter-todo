// ignore: todo
// TODO Complete this file. This class should receive data from the TodoListScreen. The UI structure has been provided
//
import 'package:exercise2/models/task.dart';
import 'package:flutter/material.dart';

import '../../models/todo.dart';
import '../task_list/task_list_screen.dart';

class Body extends StatelessWidget {
  final List<Todo> todos;
  final Function(int, List<Task>) updateTodos;
  Body(this.todos, this.updateTodos);

  String generateTodosCompletedPercentage(int idx) {
    int addition = 0;
    this.todos[idx].listOfTasks.forEach((value) => {
          if ((value.completed == false)) {addition++}
        });
    int total = this.todos[idx].listOfTasks.length;
    double result = addition / total * 100;
    return result.ceil().toString();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: this.todos.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
        title: Text(todos[index].title),
        subtitle: Text('This list has ' +
            todos[index].listOfTasks.length.toString() +
            ' tasks'),
        trailing: CircleAvatar(
          child: Text(generateTodosCompletedPercentage(index)),
        ),
        onTap: () {
          final result = Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => TaskListScreen(
                      tasks: todos[index].listOfTasks, indexTasks: index)));
          result.then((resultArray) {
            if (resultArray != null) {
              this.updateTodos(resultArray[0], resultArray[1]);
            }
          });
        },
      ),
    );
  }
}
