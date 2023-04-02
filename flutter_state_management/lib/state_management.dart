import 'package:flutter/material.dart';

class StateManagement extends StatefulWidget {
  StateManagement({super.key});

  @override
  State<StateManagement> createState() => _StateManagementState();
}

class _StateManagementState extends State<StateManagement> {
  var num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('State Management'),
      ),
      body: Column(
        children: [
          Text('$num'),
          ElevatedButton(
            onPressed: () {
              setState(() {
                num++;
              });
            },
            child: Text('Add'),
          ),
        ],
      ),
    );
  }
}
