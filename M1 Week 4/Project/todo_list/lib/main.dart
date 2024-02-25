import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  Text('Hello, world!');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List App'
    );
  }
}
