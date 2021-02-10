import 'package:flutter/material.dart';
import 'package:td_01_to_do_list/data/todos.dart';
import 'package:td_01_to_do_list/models/Todo.dart';
import 'package:td_01_to_do_list/widget/page/TodosMaster.dart';

import 'TodoDetails.dart';

class AllTodosPage extends StatefulWidget {
 AllTodosPage({Key key, this.todos, this.title}) : super(key: key);

  final List<Todo> todos;
  final String title;

  @override
   _AllTodosPageState createState() =>  _AllTodosPageState();
}

class  _AllTodosPageState extends State <AllTodosPage> {

  Todo _selectedTodo;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _onTodoSelected(Todo aTodo){
     setState((){
       _selectedTodo = aTodo;
     });
   }

   void _onTodoRemoved(Todo aTodo){
     setState((){
       _selectedTodo = null;
     });
   }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            (_selectedTodo != null)
             ? TodoDetails(
              todo: _selectedTodo,
              onRemove: this._onTodoRemoved,
            )
            : Container(),
            Expanded(
              child: TodosMaster(todos: todos,onTodoSelected: _onTodoSelected),
            )
          ],
        ),
      ),
    );
  }
}