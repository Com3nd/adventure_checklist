import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget { // This is going to be the main app, essentially the "body" in HTML
// which can have title??, the theme and other defining attributes
// I think the return MaterialApp is the base object to create the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploration!', 
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Space Exploration Planner!"),
      ),
      body: Column(
        children: [
          Progress(),
        ],
      )
    );
  }
}

class Progress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Column(
    children: [
      Text("You are this far away from exporing the whole universe"),
      LinearProgressIndicator(value: 0.0),
      ],
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget  build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "load rocket with supplies"),
        TaskItem(label: "Launch rocket"),
        TaskItem(label: "Circle the home planet"),
        TaskItem(label: "Head out to the first moon"),
        TaskItem(label: "Launch moon lander #1"),
      ],
    );
  }
}

class TaskItem extends StatelessWidget {
  final String label;

  const TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Checkbox(onChanged: null, value: false),
        Text(label),
      ],
    );
  }
}