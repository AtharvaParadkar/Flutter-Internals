import 'package:flutter/material.dart';
import 'package:flutter_internals/keys/checkable_todo_item.dart';
// import 'package:flutter_internals/keys/todoitem.dart';

class Todo {
  Todo(this.text, this.priority);

  final String text;
  final Priority priority;
}

class Keys extends StatefulWidget {
  const Keys({super.key});

  @override
  State<Keys> createState() => _KeysState();
}

class _KeysState extends State<Keys> {
  var _order = 'asc';
  final _todos = [
    Todo('Learn Flutter', Priority.urgent),
    Todo('Practice Flutter', Priority.normal),
    Todo('Explore Flutter', Priority.low),
  ];

  List<Todo> get _orderedTodos {
    final sortedTodos = List.of(_todos);
    sortedTodos.sort((a, b) {
      final bComesAfterA = a.text.compareTo(b.text);
      return _order == 'asc' ? bComesAfterA : -bComesAfterA;
    });
    return sortedTodos;
  }

  void _changeOrder() {
    setState(() {
      _order = _order == 'asc' ? 'desc' : 'asc';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: TextButton.icon(
            onPressed: _changeOrder,
            icon: Icon(
              _order == 'asc' ? Icons.arrow_downward : Icons.arrow_upward,
            ),
            label: Text('Sort ${_order == 'asc' ? 'Descending' : 'Ascending'}'),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              for (final todo in _orderedTodos)
                CheckableTodoItem(
                  //~ Value key manages t only one value
                  // key: ValueKey(todo.text),
                  //~ ObjectKey manages the entire object
                  key: ObjectKey(todo),
                  todo.text,
                  todo.priority,
                ),
            ],
          ),
        ),
      ],
    );
  }
}
