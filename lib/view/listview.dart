import 'package:flutter/material.dart';
import 'package:joureny/view/editbottom.dart';
import 'package:joureny/view/model.dart';
import 'package:provider/provider.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Model>(builder: (context, viewmodel, child){

      return
        Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))
          ),

          child: ListView.separated(
            padding: const EdgeInsets.all(15),
            separatorBuilder: (context , index){
              return const SizedBox(height: 10,);
            },

            itemCount: viewmodel.getlengthtask(),
            itemBuilder: (context, index) {

              return Dismissible(key: UniqueKey(), onDismissed: (direction) {

                Expanded(flex:1,
                    child: IconButton(icon: const Icon(Icons.delete) ,
                      onPressed: (){},));
                viewmodel.deleteTask(index);
                Expanded(flex:1,
                    child: IconButton(icon: const Icon(Icons.edit_document) ,
                      onPressed: (){
                      viewmodel.bottomSheetBuilder(
                        EditBottom(task: viewmodel.getTaskTitle(index),
                          index: index,), context);
                  },));
              },


                background: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                ),


                child: Container(
                  padding: const EdgeInsets.all(10),
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12), color: Colors.white),

                  child: ListTile(
                      leading: Checkbox(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        side: const BorderSide(width: 2),
                        checkColor: Colors.black87,
                        activeColor: Colors.cyan,
                        value:viewmodel.getvalueoftask(index),
                        onChanged: (value){
                          viewmodel.setTaskValue(index, value!);
                        },
                      ),

                      title: Text(viewmodel.getTaskTitle(index), style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold, color: Colors.black87)),
                      trailing: FittedBox(
                        fit: BoxFit.fill,

                        child: Row(
                          children: <Widget>[
                            IconButton(icon: const Icon(Icons.delete),
                              color: Colors.cyanAccent.shade700, iconSize: 23 ,
                              onPressed: (){
                                viewmodel.deleteTask(index);
                              },
                            ),
                            IconButton(icon: const Icon(Icons.edit_document),
                              color: Colors.cyanAccent.shade700,
                              iconSize: 22,
                              onPressed: (){
                              viewmodel.bottomSheetBuilder(
                                  EditBottom(task: viewmodel.getTaskTitle(index),
                                    index: index,), context);
                               // Navigator.push(context, MaterialPageRoute(
                               //    builder: (context)=>AlertshowDialog()),);
                              },
                            ),
                          ],
                        ),

                      )
                  ),
                ),
              );
            },
          ),
        );
    } );
  }
}