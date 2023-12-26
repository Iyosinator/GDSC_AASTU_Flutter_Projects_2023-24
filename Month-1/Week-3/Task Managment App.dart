class Task {
  String _title;
  String _description;
  DateTime _date;
  bool _isDone;

  Task({
    required String title,
    required String description,
    required DateTime date,
    bool isDone = false,
  })  : this._title = title,
        this._description = description,
        this._date = date,
        this._isDone = isDone;

  String get title => _title;
  String get description => _description;
  DateTime get date => _date;
  bool get isDone => _isDone;

  set title(String title) => _title = title;
  set description(String description) => _description = description;
  set date(DateTime date) => _date = date;
  set isDone(bool isDone) => _isDone = isDone;
}

class TaskManager {
  List<Task> _tasks = [];

  List<Task> get tasks => _tasks;

}


void main() {
  Task task = Task(
    title: 'Task 1',
    description: 'Description 1',
    date: DateTime.now(),
  );
}
