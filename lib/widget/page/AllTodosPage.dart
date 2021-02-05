import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/models/Todo.dart';
import 'package:td_01_to_do_list/widget/page/TodosMaster.dart';

class AllTodosPage extends StatefulWidget {
 AllTodosPage({Key key, this.todos, this.title}) : super(key: key);

  final List<Todo> todos;
  final String title;

  @override
   _AllTodosPageState createState() =>  _AllTodosPageState();
}

class  _AllTodosPageState extends State <AllTodosPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: TodosMaster(todos: widget.todos),
      ),
    );
  }
}