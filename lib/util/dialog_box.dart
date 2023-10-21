import 'package:flutter/material.dart';
import 'package:todo_app/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.brown,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

          //get user input
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: "Add a new task here.",
              hintStyle: TextStyle(color: Colors.white), // Set hint text color to white
            ),
            style: TextStyle(color: Colors.white), // Set input text color to white
          ),
          // buttons -> save + cancel
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              //Save
              MyButton(text: "Save", onPressed: onSave),

              const SizedBox(width: 8),

              //Cancel
              MyButton(text: "Cancel", onPressed: onCancel),
            ],
          )
        ])
      ),
    );
  }
}