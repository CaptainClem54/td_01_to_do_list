import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';
import 'package:td_01_to_do_list/widget/page/TodosMaster.dart';

class TodoDetails extends StatefulWidget {
  TodoDetails({Key key, this.todo, this.onRemove}) : super(key: key);

  final Todo todo;
  final Function onRemove;

  @override
  _TodoDetailsState createState() => _TodoDetailsState();
}

class _TodoDetailsState extends State<TodoDetails> {
  void _onRemove() {
    widget.onRemove(widget.todo);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: <Widget>[
        Card(
          color: Colors.lightGreen,
          child: ListTile(
              onTap: _onRemove,
              title: Text(
                widget.todo.title +
                    " " +
                    widget.todo.content +
                    "    " +
                    widget.todo.done.toString(),
              )))
    ]));
  }
}
