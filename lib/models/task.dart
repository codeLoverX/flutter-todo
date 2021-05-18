//? This class is fully given.
//? You may want to refer to this class to define other model clases

class Task {
  String title;
  bool completed;
  Task({this.title, this.completed = false});
  // somehow constructor expects named arguments
  Task.copy(Task from) : this(title: from.title, completed: from.completed);
}
