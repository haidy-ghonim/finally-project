import 'package:flutter/material.dart';
import 'package:joureny/view/model_return.dart';

class Model extends ChangeNotifier {
  List<Tasks> tasks = <Tasks>[];
  void addTask(Tasks newTask) {
    tasks.add(newTask);
    notifyListeners();
  }

  //EDIT
  void editTask(int index, String editTask){

    tasks[index].title = editTask ;

    notifyListeners();
  }

  //TOTAL TASK
  int getlengthtask() {
    return tasks.length;
  }

  // title task
  String getTaskTitle(int taskIndex) {
    return tasks[taskIndex].title;
  }

  //number total task
  void setTaskValue(int taskIndex, bool taskValue) {
    tasks[taskIndex].complete = taskValue;
    notifyListeners();
  }

  //delete task
  void deleteTask(int taskIndex) {
    tasks.removeAt(taskIndex);
    notifyListeners();
  }

  void deleteAllTasks() {
    tasks.clear();
    notifyListeners();
  }

  void deleteCompletedTasks() {
    tasks = tasks.where((task) => !task.complete).toList();
    notifyListeners();
  }
  bool getvalueoftask(int index){

    return tasks[index].complete;
  }


  int get numTasksNonComplete => tasks.where((task) => !task.complete).length;
  int get numTasksComplete => tasks.where((task) => task.complete).length;

  //
  void bottomSheetBuilder(Widget bottomSheetView, BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        context: context,
        builder: ((context) {
          return bottomSheetView;
        }));
  }
}
