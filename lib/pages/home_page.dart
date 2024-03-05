import 'package:flutter/material.dart';
import 'package:plan_it/util/todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        title: Center(child: Text('Task Board')),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(
            taskTitle:"Task 1",
            taskName: "Your Personal task management and planning solution for planning your day, week & months",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskTitle:"Task 2",
            taskName: "Your Personal task management and planning solution for planning your day, week & months",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
          ToDoTile(
            taskTitle:"Task 3",
            taskName: "Your Personal task management and planning solution for planning your day, week & months",
            taskCompleted: true,
            onChanged: (p0) {},
          ),
        ],
      ),
    );
  }
}