import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ToDoTile extends StatelessWidget {
  const ToDoTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: EdgeInsets.all(24),
        child: Row(
          children: [

          //checkbox
          Checkbox(value: value, onChanged: onChanged)

          // task name
            Text("Make Tutorial"),
            ],
        ),
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
