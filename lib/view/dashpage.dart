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
        //mainAxisAlignment: MainAxisAlignment .center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded( child: Card(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Text("Total Task", textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,
          fontSize: 20),

                 ),
                Center(child:Container(
                  child: Text("Number is ${viewmodel.getlengthtask()}"), ))
              ],
            ),
          )),


          Expanded( child: Card(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Non-Compelete Task", textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,
      fontSize: 20),
                ),
                Center(child:Container(
                  child: Text("Number is ${viewmodel.numTasksNonComplete}"), ))
              ],
            ),
          )),


          Expanded( child: Card(
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text("Compelete Task", textAlign: TextAlign.center,style: TextStyle(fontWeight:FontWeight.bold,
                fontSize: 20),),
                Center(child:Container(
                  child: Text("Number is ${viewmodel.numTasksComplete}"), ))
              ],
            ),
          )),
        ],
      );
    });
  }
}