//card
import 'package:flutter/material.dart';
import 'package:joureny/view/model.dart';
import 'package:provider/provider.dart';

class DashPge extends StatelessWidget {
  const DashPge({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer <Model> (builder: (context, viewmodel, child) {
      return Column(
        mainAxisAlignment: MainAxisAlignment .center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded( child: Card(
            child: Column (
              children: [
                Center(
                  child: Column(
                    children: [
                      const Text("Total Task"),
                      Center(child:Container(
                        child: Text("Number is ${viewmodel.getlengthtask()}"), ))
                    ],
                  ),
                )

              ],
            ),
          )),

          Expanded( child: Card(
            child: Column(
              children: [
                Text("Non-Compelete Task"),
                Text("Number is ${viewmodel.numTasksNonComplete}"),
              ],
            ),
          )),

          Expanded( child: Card(
            child: Column(
              children: [
                Text("Compelete Task"),
                Text("Number is ${viewmodel.numTasksComplete}"),
              ],
            ),
          )),

        ],
      );
    });
  }
}