import 'package:mvvm_todolist/data/dataSource/local_data_source.dart';

class PostRepository {
  final LocalDataSource _localDataSource;

  PostRepository(this._localDataSource);

  Future<List> getCachedPosts() {
    return _localDataSource.getCachedPosts();
  }
}