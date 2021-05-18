// ignore: todo
// TODO Complete this file. This class should receive data from the TodoListScreen. This class should pass data to the classes Bar, Body and Float
//
import 'package:exercise2/models/mock_todos.dart';
import 'package:exercise2/models/task.dart';
import 'package:flutter/material.dart';

import '../../models/todo.dart';
import 'float.dart';
import 'bar.dart';
import 'body.dart';

typedef void IntCallback(int id);

class TaskListScreen extends StatefulWidget {
  final List<Task> tasks;
  final int indexTasks;
  TaskListScreen({this.tasks, this.indexTasks});
  @override
  _TaskListScreenState createState() =>
      _TaskListScreenState(this.tasks, this.indexTasks);
}

class _TaskListScreenState extends State<TaskListScreen> {
  List<Task> tasksChangeable;
  List<Task> taskCopy = [];
  final int indexTasksChangeable;
  _TaskListScreenState(this.tasksChangeable, this.indexTasksChangeable) {
    // constructor will get executed at all times
    if (this.taskCopy.length == 0) {
      for (int i = 0; i < this.tasksChangeable.length; i++) {
        this.taskCopy.insert(i, this.tasksChangeable.elementAt(i));
      }
    }
  }

  bool updated = false;

  void updateUnderline(int idx) {
    setState(() {
      // mutable: don't do this
      // this.tasksChangeable[idx].completed =
      //     !this.tasksChangeable[idx].completed;
      // immutable: do this
      // this.tasksChangeable[idx] = Task(
      //     title: this.tasksChangeable[idx].title,
      //     completed: !this.tasksChangeable[idx].completed);
      // immutable: or do this
      this.tasksChangeable[idx] = Task.copy(Task(
          title: this.tasksChangeable[idx].title,
          completed: !this.tasksChangeable[idx].completed));
    });
  }

  void updateRemove(int idx) {
    setState(() {
      this.tasksChangeable.removeAt(idx);
    });
  }

  void resetTask() {
    setState(() {
      this.tasksChangeable.clear();
      this.tasksChangeable.length = this.taskCopy.length;
      for (int i = 0; i < this.taskCopy.length; i++) {
        this.tasksChangeable[i] = this.taskCopy.elementAt(i);
      }
      Navigator.pop(context, null);
      //  myTodoList
    });
  }

  void updateTask() {
    Navigator.pop(context, [this.indexTasksChangeable, this.tasksChangeable]);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        // if (!this.updated) {
        //   resetTask();
        // }
        return await Future.value(true);
      },
      child: SafeArea(
        child: Scaffold(
          appBar: Bar(),
          body: Body(
              onIntUpdateUnderline: this.updateUnderline,
              onIntUpdateRemoved: this.updateRemove,
              tasks: this.tasksChangeable),
          floatingActionButton: Float(resetTask, updateTask),
        ),
      ),
    );
  }
}
