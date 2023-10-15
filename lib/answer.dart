import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';


class MyWidget extends StatefulWidget {
  const MyWidget({super.key});
  

  @override
  State<MyWidget> createState() => _MyWidgetState();
}



class _MyWidgetState extends State<MyWidget> {
  late String  y;
  List lisst = [];
  @override
  void initState() {
    super.initState();
    get();

  }
  // dynamic qa = "";
  // var qa  = FirebaseDatabase.instance 
  // .ref()
  // .child("answer")
  // .once()
  // .snapshot.value as String;
  // qa = qa.snapshot.value as String;

  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: 
          Column(
            children: [
              Text(lisst.length != 0?lisst[0]:""),
              
                        const SizedBox(height: 50,),
                       ElevatedButton(onPressed: (){
                        
setState(() {
  get();


});
                       }, child: Text("get answer from doctor")),
            ],
          ),
    
        ),
      ),
    );
  }



  
  get ()async{
  
  
  final qa = await FirebaseDatabase.instance 
  .ref()
  .child("answer")
  .once();
  lisst.add(qa.snapshot.value as String);
  print(qa.snapshot.value as String);
  
  
  
  
  
  
  
  
}
  
}
// Future<String?> get1() async {
//   DataSnapshot snapshot = await FirebaseDatabase.instance
//       .ref()
//       .child("answer")
//       .once();
  
//   return snapshot.value as String?;
// }
//  String stringValue=get().toString();
//     String string1=get() as String;
 