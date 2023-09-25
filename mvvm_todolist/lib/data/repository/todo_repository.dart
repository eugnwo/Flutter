import 'package:mvvm_todolist/data/dataSource/local_data_source.dart';
import 'package:mvvm_todolist/data/model/todo_model.dart';

class TodoRepository {
  final LocalDataSource _localDataSource;

  TodoRepository(this._localDataSource);

  Future<List<TodoModel>> getCachedPosts() {
    return _localDataSource.getCachedPosts();
  }
}