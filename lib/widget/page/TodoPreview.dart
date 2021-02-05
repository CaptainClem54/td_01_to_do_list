import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';

class TodoPreview extends StatelessWidget {
  const TodoPreview({Key key, @required this.todo}) : super(key: key);

  final Todo todo;

  Color _getColor(Todo todo) {
    return (todo.done == true) ? Colors.blue : Colors.red;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: _getColor(todo),
      child: Text(todo.title),
    );
  }
}
