import 'package:flutter/material.dart';
import 'package:joureny/view/altertshow_dialog.dart';
import 'package:joureny/view/model.dart';
import 'package:provider/provider.dart';

class AddTask extends StatelessWidget {
  AddTask({super.key});

  final textuser = TextEditingController();
  final TextEditingController entryController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Consumer<Model>(builder: (context, viewModel, child) {

      return
        FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (context)=>AlertshowDialog()));
        },
          child: const Icon(Icons.add),
        )    ;
    });


  }
}