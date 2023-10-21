import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [];

  // ref our box
 final _myBox = Hive.box('mybox');

  // run when opening the app for first time
  void createInitialData() {
    toDoList = [
      ["My First ToDo List ♥", false],
    ];
  }

  //load the data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update db
  void updateDataBase(){
    _myBox.put("TODOLIST", toDoList);
  }

}