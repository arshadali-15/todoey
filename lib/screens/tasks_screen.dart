import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoey/screens/add_task_screen.dart';
import '../widgets/tasks_list.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.lightBlueAccent,
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => AddTaskScreen());
          },
          child: Icon(
            Icons.add,
            size: 30,
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding:
                  EdgeInsets.only(top: 60, left: 30, right: 30, bottom: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  CircleAvatar(
                    child: Icon(
                      Icons.list,
                      size: 35,
                      color: Colors.lightBlueAccent,
                    ),
                    radius: 28,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'ToDoey',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '${Provider.of<TaskData>(context).tasksCount} Tasks',
                    style: TextStyle(color: Colors.black54, fontSize: 20),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: TasksList(),
              ),
            ),
          ],
        ));
  }
}
