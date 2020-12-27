import 'package:mobx/mobx.dart';
import '../models/todo.dart';

class TodoStore{

  var todos = ObservableList<Todo>();

  Action add;

  TodoStore(){
    add = Action(_add);
  }

  void _add(Todo todo) {
    todos.add(todo);
  }
}
