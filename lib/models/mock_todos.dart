// ignore: todo
// TODO  Create some mock data about todo list as well as mock data of task list for each todo item.

import 'todo.dart';
import 'task.dart';

final myTodoList = <Todo>[
  Todo(title: "MAP Project", listOfTasks: <Task>[
    Task(
        title: "Deliverable #1: Project proposal and design", completed: false),
    Task(title: "Deliverable #2: Prototype 1", completed: false),
    Task(title: "Deliverable #3: Prototype 2", completed: false),
    Task(title: "Deliverable #4: Backend", completed: false),
    Task(title: "Deliverable #5: Release Version", completed: true),
  ]),
  Todo(title: "Preparing for online learning", listOfTasks: <Task>[
    Task(
        title: "Hobbies for curing depression", completed: false),
    Task(
        title: "Improving mental strength",
        completed: false),
    Task(title: "Exercise to remain healthy", completed: false),
    Task(title: "Praying to Allah to open university soon", completed: false),
  ]),
  Todo(title: "Things to do in this weekend", listOfTasks: <Task>[
    Task(title: "Finshing MAP homework", completed: false),
    Task(title: "Finsishing PSM Chpater 1 and 2", completed: false),
    Task(title: "Study for PSDA exam", completed: false),
  ])
];
