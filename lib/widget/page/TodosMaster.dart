import 'package:flutter/material.dart';
//import 'package:flutter/rendering.dart';
//import 'package:td_01_to_do_list/data/todos.dart';
import 'package:td_01_to_do_list/models/Todo.dart';
import 'package:td_01_to_do_list/widget/page/TodoPreview.dart';


class TodosMaster extends StatefulWidget {
  const TodosMaster({Key key, @required this.todos}) : super(key: key);

  final List<Todo> todos;
  
  @override
    _TodosMasterState createState() => _TodosMasterState();
}

 class _TodosMasterState extends State<TodosMaster>{
  
  @override
   Widget build(BuildContext context){
    return ListView.builder(
      itemCount: widget.todos.length,
      itemBuilder: (BuildContext context, int index){
        final Todo todo = widget.todos[index];

        return TodoPreview(todo: todo);
      },
    );
  }

 }
