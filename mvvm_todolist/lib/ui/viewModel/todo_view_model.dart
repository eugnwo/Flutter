import 'package:flutter/material.dart';
import 'package:mvvm_todolist/data/model/todo_model.dart';
import 'package:mvvm_todolist/data/repository/todo_repository.dart';
import 'package:mvvm_todolist/data/dataSource/local_data_source.dart';

class TodoViewModel with ChangeNotifier {
  late final TodoRepository _todoRepository;

  List get items => _items;
  final List _items = [];

  TodoViewModel() {
    _todoRepository = TodoRepository(LocalDataSource());
  }

  void add(String title) {
    var newContents = TodoModel(title: title, day: DateTime.now());
    _items.add(newContents);
    notifyListeners();
  }
}