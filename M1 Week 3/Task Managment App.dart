class Task {
  String _title;
  String _description;
  DateTime _dueDate;
  bool _completed;

  Task({
    required String title,
    required String description,
    required DateTime dueDate,
    bool completed = false,
  })  : _title = title,
        _description = description,
        _dueDate = dueDate,
        _completed = completed;

  String get title => _title;
  set title(String newTitle) => _title = newTitle;

  String get description => _description;
  set description(String newDescription) => _description = newDescription;

  DateTime get dueDate => _dueDate;
  set dueDate(DateTime newDate) => _dueDate = newDate;

  bool get completed => _completed;
  set completed(bool isCompleted) => _completed = isCompleted;
}

class TaskHandler {
  List<Task> _taskList = [];

  List<Task> get taskList => _taskList;
}

void main() {
  Task newTask = Task(
    title: 'Task 1',
    description: 'Description 1',
    dueDate: DateTime.now(),
  );
}
