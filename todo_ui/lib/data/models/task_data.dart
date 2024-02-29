import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_ui/data/models/task_model.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [];

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

  Future<void> addToLocal()async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList('tasks', _tasks.map((e) => e.toJson()).toList());
    notifyListeners();
  }

  Future<void> loadFromLocal() async {
    final prefs = await SharedPreferences.getInstance();
    final tasks = prefs.getStringList('tasks')?? [];
    _tasks = tasks.map((e) => Task.fromJson(e)).toList();
    notifyListeners();
  }

  Future<void> removeFromLocal() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove('tasks');
    notifyListeners();
  }


  void deleteTasks(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}