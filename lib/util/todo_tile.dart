import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskTitle;
  final String taskName;
  final bool taskCompleted;
  final Function(bool?)? onChanged;

  const ToDoTile({
    Key? key,
    required this.taskTitle,
    required this.taskName,
    required this.onChanged,
    required this.taskCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final dateFormat = DateFormat.yMMMMd(); // date format
    final timeFormat = DateFormat.jm(); // time format

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        padding: const EdgeInsets.all(24), // padding
        decoration: BoxDecoration(
          color: Colors.lightBlue.shade100,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              taskTitle,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8), // SizedBox
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    taskName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Checkbox(
                  value: taskCompleted,
                  onChanged: onChanged,
                ),
              ],
            ),
            const SizedBox(height: 8), // SizedBox
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                '${timeFormat.format(now)}, ${dateFormat.format(now)}',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
