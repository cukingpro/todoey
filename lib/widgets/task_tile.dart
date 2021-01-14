import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskName;
  final Function toggle;
  final Function onLongPress;

  TaskTile(
      {this.isChecked = false, this.taskName, this.toggle, this.onLongPress});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: toggle,
      ),
      onLongPress: onLongPress,
    );
  }
}
