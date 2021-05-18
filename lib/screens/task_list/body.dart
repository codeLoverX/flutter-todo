// ignore: todo
// TODO Complete this file. This class should receive data from the TaskListScreen. The UI structure has been provided.
//
import 'package:exercise2/models/task.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final List<Task> tasks;
  // variable to satisfy props
  final Function(int) onIntUpdateUnderline;
  final Function(int) onIntUpdateRemoved;
  Body(
      {@required this.onIntUpdateUnderline,
      @required this.onIntUpdateRemoved,
      this.tasks});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: tasks.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.blueGrey,
      ),
      itemBuilder: (context, index) => ListTile(
          title: Text(tasks[index].title,
              style: tasks[index].completed
                  ? TextStyle(decoration: TextDecoration.lineThrough)
                  : null),
          onTap: () {
            onIntUpdateUnderline(index);
          },
          onLongPress: () {
            onIntUpdateRemoved(index);
          }),
    );
  }
}
