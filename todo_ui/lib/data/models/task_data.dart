import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todo_ui/data/models/task_model.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(
      title: 'Designing Logo',
      leadingIcon: 'D',
      description:
          'I have to design a logo for the company and submit it by the deadline',
      deadline: 'March 09, 2024',
    ),
    Task(
      title: 'Interview Candidate',
      leadingIcon: 'I',
      description: 'I have to interview the candidate for the job',
      deadline: 'May 2, 2024',
    ),
    Task(
      title: 'Meeting',
      leadingIcon: 'M',
      description: 'I have to meet with the team and discuss the project',
      deadline: 'March 1, 2024',
    ),
    Task(
      title: 'Playing Football',
      leadingIcon: 'F',
      description: 'I have to play football with my friends',
      deadline: 'April 29, 2024',
    ),
  ];

  int get taskCount {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTasks(Task task) {
    _tasks.add(task);
    notifyListeners();
  }

  void deleteTasks(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
