
//header+listview
import 'package:flutter/material.dart';
import 'package:joureny/view/addtask.dart';
import 'package:joureny/view/listview.dart';
import 'package:joureny/planjoureny/tasks_screen.dart';

class TotallPage extends StatelessWidget {
  const TotallPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: const SafeArea(
        bottom: false,
        child: Column(
          children: [
            Expanded(flex: 1,
                child: TaskScreen()),
            Expanded(flex: 7,
                child:Listview()),
          ],
        ),
      ),
      floatingActionButton: AddTask(),  //create widget
    );
  }
}