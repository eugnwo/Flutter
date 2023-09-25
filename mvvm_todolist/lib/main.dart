import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mvvm_todolist/core/utils/const/data.dart';
import 'package:mvvm_todolist/ui/view/todo_view.dart';
import 'package:mvvm_todolist/ui/viewModel/todo_view_model.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox(todoList);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TodoViewModel>(
      create: (context) => TodoViewModel(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TodoView(),
      ),
    );
  }
}
