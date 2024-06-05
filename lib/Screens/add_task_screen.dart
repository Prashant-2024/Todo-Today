import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({required this.callbackAddTask});

  final Function callbackAddTask;

  @override
  Widget build(BuildContext context) {
    late String newTaskTitle;
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Task",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Colors.lightBlueAccent, width: 2.0),
                ),
                contentPadding: EdgeInsets.symmetric(horizontal: 10.0),
              ),
              onChanged: (newText) {
                newTaskTitle = newText;
              },
            ),
            TextButton(
              child: Text("Add"),
              style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(Colors.lightBlueAccent),
              ),
              onPressed: () {
                callbackAddTask(newTaskTitle);
              },
            ),
          ],
        ),
      ),
    );
  }
}
