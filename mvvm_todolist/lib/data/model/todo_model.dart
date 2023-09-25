class TodoModel {
  final String title;
  final DateTime day;

  TodoModel({required this.title, required this.day});

  factory TodoModel.fromMap(Map<String, dynamic> map) {
    return TodoModel(
      title: map['title'],
      day: DateTime.parse(map['day']),
    );
  }
}
