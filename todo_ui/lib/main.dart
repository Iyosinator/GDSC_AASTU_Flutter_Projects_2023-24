import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_ui/Screen/landing.dart';
import 'package:todo_ui/Screen/add_task.dart';
import 'package:todo_ui/Screen/detail_task.dart';
import 'package:todo_ui/Screen/list_task.dart';
import 'package:todo_ui/data/models/task_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await initSharedPreferences();
  // await SharedPreferences.getInstance();
  runApp(ChangeNotifierProvider<TaskData>(
    create: (context) => TaskData()..loadFromLocal(),
    builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const IntroPage(),
          '/todolist': (context) => const TodoListPage(),
          '/addtask': (context) => CreateTaskPage(),
          '/taskdetail': (context) => const TaskDetailPage()
        },
      );
    },
  ));
}

Future<void> initSharedPreferences()async {
  await SharedPreferences.getInstance();
}