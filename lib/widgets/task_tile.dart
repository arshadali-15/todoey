import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  bool isChecked = false;
  final String taskTile;
  final  checkBoxCallback;
  final  longPressCallBack;

  TaskTile({required this.isChecked,
    required this.longPressCallBack,
    required this.taskTile,
    required this.checkBoxCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longPressCallBack,
      title: Text(
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
        taskTile,
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: (newValue) {
          checkBoxCallback(newValue);
        },
      ),
    );
  }
}
