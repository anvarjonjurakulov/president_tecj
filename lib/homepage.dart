import 'package:flutter/material.dart';
import 'package:prezident_tech/pages/glaznoy/main.dart';
import 'package:prezident_tech/pages/koja/main.dart';
import 'package:prezident_tech/pages/ortapet/main.dart';
import 'package:prezident_tech/pages/pediator/main.dart';
import 'package:prezident_tech/pages/terapeft/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text("Shifokor UZ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
            const SizedBox(height: 60,),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Glaz()));}, child:const Text("Глазной")),
          const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Koja()));}, child:const Text("Коженный")),
            const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pediator()));}, child:const Text("Педиатор")),
            const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Terapeft()));}, child:const Text("Терапефт")),
            const SizedBox(height: 20,),
          ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Ortoped()));}, child:const Text("Ортопет")),
        ],
      ),
    );
  }
}