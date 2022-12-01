import 'package:hive_flutter/hive_flutter.dart';

class toDoDatabase {
  List toDoList = [];

  //reference our box
  final _myBox = Hive.box('mybox');

  //run this method if this is the first time ever of running this app
  void createInitialData() {
    toDoList = [
      ["Do exercises", false],
      ["Go to shopping", false]
    ];
  }

  //load the data from database
  void loadData() {
    toDoList = _myBox.get('TODOLIST');
  }

  //update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', toDoList);
  }
}
