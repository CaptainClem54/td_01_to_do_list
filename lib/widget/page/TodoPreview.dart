import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';

class TodoPreview extends StatefulWidget {
  const TodoPreview({
    Key key,
    @required this.todo,
  }) : super(key: key);

  final Todo todo;

  @override
  _TodoPreviewState createState() => _TodoPreviewState();
}

class _TodoPreviewState extends State<TodoPreview> {

  void _onTap() {
    print("object");
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color:(widget.todo.done == true) ? Colors.blue : Colors.red,
      child: ListTile(
        onTap: _onTap,
        title: Text(
          widget.todo.title,
        ),
      ),
    );
  }
}
