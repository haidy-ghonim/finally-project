
//
import 'package:flutter/material.dart';
import 'package:joureny/view/addtask.dart';
import 'package:joureny/view/dashpage.dart';
import 'package:joureny/profile/profile.dart';
import 'package:joureny/view/listview.dart';
import 'package:lottie/lottie.dart';

// headerone hatshel w da htakab ba delhaa
class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer:   const Drawer(
      //   // key: IconButton(onPressed: (){
      //   //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashPge()));
      //   // }, icon: Icon(Icons.menu)),
      // ),
      appBar: AppBar(
        backgroundColor: Colors.cyan[600],
        title: const Text('Welcome Haidy',style: TextStyle(fontSize: 20),),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashPge()));
          },
        ),
         actions: [
          IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProfileScreen()));
           },
            icon:LottieBuilder.network('https://lottie.host/c1b2bc59-40b3-42bb-b545-2e00633b73cb/AVjH3G9iv1.json'),
        ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body:Listview(),
      floatingActionButton: AddTask() ,
    );
  }
}




























