import 'package:flutter/material.dart';
import 'package:joureny/view/model.dart';
import 'package:joureny/view/model_return.dart';
import 'package:provider/provider.dart';

//AlertshowDialog
class AlertshowDialog extends StatelessWidget {
  final TextEditingController entryController = TextEditingController();

  AlertshowDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Model>(builder: (context, viewModel, child) {
      return AlertDialog(
        title: Center(
            child: Text(
          'Tour',
          style: TextStyle(
            fontSize: 40,
            fontFamily: 'NotoSerifBalinese',
          ),
        )),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              // const Text('Day & Time', style: TextStyle(fontSize: 20,
              //     fontWeight:FontWeight.w400 ),),
              SizedBox(
                height: 10,
              ),
              //
              TextField(
                onSubmitted: (value) {
                  if (entryController.text.isNotEmpty) {
                    entryController.clear();
                  }
                  Navigator.of(context).pop();
                },
                decoration: InputDecoration(
                    hintText: "Enter Day & Time ",
                    // contentPadding: const EdgeInsets.only(bottom: 5),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(
                            width: 0, style: BorderStyle.none))),
                textAlign: TextAlign.center,
                textAlignVertical: TextAlignVertical.center,
                autofocus: true,
                autocorrect: false,
                controller: entryController,
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Center(
                child: Text('Save',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan,
                    ))),
            onPressed: () {
              Tasks newTask = Tasks(entryController.text, false);
              viewModel.addTask(newTask);
              entryController.clear();
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    });
  }
}
