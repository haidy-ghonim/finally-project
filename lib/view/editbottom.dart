import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:joureny/view/model.dart';
import 'package:provider/provider.dart';

class EditBottom extends StatelessWidget {
  final task;
  final index;
  const EditBottom({this.task, this.index, super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController entryController = TextEditingController();
    entryController.text = '${task}';

    return Consumer<Model>(builder: (context, viewmodel, child) {
      return AlertDialog(
        title: Center(child: const Text('Change Day & Time',
          style: TextStyle(fontWeight:FontWeight.bold
          ),)),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              TextField(
                onSubmitted: (value) {
                  if (entryController.text.isNotEmpty) {
                    var task = entryController.text;
                    viewmodel.editTask(index, task);
                    entryController.clear();
                    Navigator.pop(context);
                  }
                },

                decoration: InputDecoration(
                    contentPadding:
                    const EdgeInsets.only(bottom: 20),
                    filled: true,
                    // border: OutlineInputBorder(
                    //     borderRadius: BorderRadius.circular(20),
                    //     borderSide: const BorderSide(
                    //         width: 0, style: BorderStyle.none))
                ),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                autofocus: true,
                autocorrect: false,
                controller: entryController,
                style:
                const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
              child:  Center(
                child: Text('Edit',style: TextStyle(fontSize: 21,
                    color: Colors.pink  ,fontWeight: FontWeight.bold,
                ),
                ),
              ),
              onPressed: () {
                if (entryController.text.isNotEmpty) {
                  var task = entryController.text;
                  viewmodel.editTask(index, task);
                  entryController.clear();
                  Navigator.pop(context);
                }
              }),
        ],
      );
    });
  }
}
