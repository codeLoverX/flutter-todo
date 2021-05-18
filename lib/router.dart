// ignore: todo
// TODO  If you are using named routes, centralized all your routes here. Otherwise, you can remove this file.

import 'package:exercise2/screens/task_list/task_list_screen.dart';
import 'package:exercise2/screens/todo_list/todo_list_screen.dart';
import 'package:flutter/material.dart';

class RoutePaths {
  static const Start = '/';
  static const SecondScreen = '/tasks';
}

const title = "My Todo List";

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case RoutePaths.Start:
      return MaterialPageRoute(builder: (_) => TodoListScreen(title));

    case RoutePaths.SecondScreen:
      // you can do things like pass arguments to screens
      return MaterialPageRoute(builder: (_) => TaskListScreen());

    default:
      return MaterialPageRoute(
          builder: (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ));
  }
}

// Route<dynamic> createRoute(settings) {
//   return null;
// }
