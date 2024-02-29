import 'dart:collection';
import 'package:flutter/material.dart';

class Task {
  final String title;
  final String description;
  final String deadline;
  final String leadingIcon;

  Task({
    required this.title,
    required this.description,
    required this.deadline,
    required this.leadingIcon,
  });
}

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(
      title: 'Design Logo',
      leadingIcon: 'D',
      description:
          'I have to design a logo for the company and submit it to the manager',
      deadline: 'may 01, 2023',
    ),
    Task(
      title: 'Interview Candidate',
      leadingIcon: 'I',
      description: 'I have to interview the candidate for the job',
      deadline: 'may 02, 2023',
    ),
    Task(
      title: 'Attend Meeting',
      leadingIcon: 'A',
      description: 'I have to attend the meeting with the team',
      deadline: 'may 03, 2023',
    ),
    Task(
      title: 'Buy Groceries',
      leadingIcon: 'B',
      description:
          'I have to buy groceries for the house and make sure to buy all the items',
      deadline: 'may 05, 2023',
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
