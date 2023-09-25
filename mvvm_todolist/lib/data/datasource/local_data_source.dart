import 'package:hive_flutter/hive_flutter.dart';
import 'package:mvvm_todolist/core/utils/const/data.dart';
import 'package:mvvm_todolist/data/model/todo_model.dart';

class LocalDataSource {
  Future<List<TodoModel>> getCachedPosts() async {
    var postTodo = Hive.box<TodoModel>(todoList);
    return postTodo.values.toList();
  }

  Future<void> updateCachedPosts(List<TodoModel> todo) async {
    var postBox = Hive.box<TodoModel>(todoList);
    await postBox.clear();
    await postBox.addAll(todo);
  }
}