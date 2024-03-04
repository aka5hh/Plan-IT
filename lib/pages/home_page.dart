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
        title: Center(child: Text('Plan IT')),
        elevation: 0,
      ),
      body: ListView(
        children: [
          ToDoTile(),
        ],
      ),
    );
  }
}