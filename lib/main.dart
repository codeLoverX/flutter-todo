// ignore: todo
// TODO Fill in the following information
//
// SCSJ3623 Mobile Application Programming
// Exercise 2

// Pair Programming
// Member 1's Name: Ridwan Bin Monjur    Matric: A18CS3026      Location: Dhaka, Bangladesh (i.e. where are you currently located)
// Member 2's Name: _____________    Matric:______________       Location: UTM, Johor Bahru, Johor
// Date and time (s):   _____________, _____________, __________   (Date and time you conducted the pair programming sessions)

import 'package:flutter/material.dart';

// import 'models/mock_todos.dart';
import 'screens/todo_list/todo_list_screen.dart';
import 'router.dart';
// import 'screens/task_list/task_list_screen.dart'; //? Later you want to remove this line

const title = "My Todo List";
void main() => runApp(
      MaterialApp(
        onGenerateRoute: generateRoute,
        initialRoute: RoutePaths.Start,
        title: 'MAP Exercise 2',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.purple),
        home: TodoListScreen(title),
        // home: TaskListScreen(), //? uncomment this out to preview the second screen. Later, you want to remove this line
      ),
    );
