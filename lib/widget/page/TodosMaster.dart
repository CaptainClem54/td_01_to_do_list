import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:td_01_to_do_list/data/todos.dart';
import 'package:td_01_to_do_list/models/Todo.dart';
import 'package:td_01_to_do_list/widget/page/TodoPreview.dart';

class TodosMaster extends StatelessWidget {
  const TodosMaster({Key key, @required this.todos}) : super(key: key);

  final List<Todo> todos;

  @override
  Widget build(BuildContext context) {

    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          Todo todo = todos[index];
          return TodoPreview(todo: todo);
        }
    );
  }
}
