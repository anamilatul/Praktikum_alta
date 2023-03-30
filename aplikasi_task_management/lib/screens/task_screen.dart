import 'package:aplikasi_task_management/components/profile_sheet.dart';
import 'package:aplikasi_task_management/models/task_manager.dart';
import 'package:aplikasi_task_management/screens/empty_task_screen.dart';
import 'package:aplikasi_task_management/screens/task_item_screen.dart';
import 'package:aplikasi_task_management/screens/task_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task Management',
          style: GoogleFonts.poppins(
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                  ),
                  context: context,
                  builder: (context) => ProfileSheet());
            },
            icon: Icon(
              Icons.account_circle,
            ),
          )
        ],
      ),
      body: buildTaskScreen(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () {
            final manager = Provider.of<TaskManager>(context, listen: false);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TaskItemScreen(
                  onCreate: (task) {
                    manager.addTask(task);
                    Navigator.pop(context);
                  },
                ),
              ),
            );
          }),
    );
  }

  Widget buildTaskScreen() {
    return Consumer<TaskManager>(builder: (context, manager, child) {
      if (manager.taskModels.isNotEmpty) {
        return TaskListScreen(
          manager: manager,
        );
      } else {
        return const EmptyTaskScreen();
      }
    });
  }
}
