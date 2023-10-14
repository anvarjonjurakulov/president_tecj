// ignore_for_file: avoid_unnecessary_containers

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.blue.shade100,
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              const Text("Shifokor UZ",style: TextStyle(fontSize: 36,height: 36/34,),),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black),
                  ),
                    child: GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Glaz())),
                        child: const Text(
                          "Глазной",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              height: 22 / 20,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                      ),
                    ),
              ),
              const SizedBox(height: 30,),
               Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black),
                  ),
                    child: GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Koja())),
                        child: const Text(
                          "Коженный",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              height: 22 / 20,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                      ),
                    ),
              ),
              const SizedBox(height: 30,),
               Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black),
                  ),
                    child: GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Pediator())),
                        child: const Text(
                          "Педиатор",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              height: 22 / 20,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                      ),
                    ),
              ),
              const SizedBox(height: 30,),
               Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black),
                  ),
                    child: GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Terapeft())),
                        child: const Text(
                          "Терапефт",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              height: 22 / 20,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                      ),
                    ),
              ),
              const SizedBox(height: 30,),
               Padding(
                padding: const EdgeInsets.all(14.0),
                child: Container(
                  padding: const EdgeInsets.all(8),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                    color: Colors.blue.shade300,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black),
                  ),
                    child: GestureDetector(
                        onTap: () => Navigator.push(context,
                            MaterialPageRoute(builder: (context) => const Ortoped())),
                        child: const Text(
                          "Ортопет",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              height: 22 / 20,
                              fontWeight: FontWeight.bold
                            ),
                        ),
                      ),
                    ),
              ),
              // ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Glaz()));}, child:const Text("Глазной")),
              // const SizedBox(height: 20,),
              // ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Koja()));}, child:const Text("Коженный")),
              //   const SizedBox(height: 20,),
              // ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Pediator()));}, child:const Text("Педиатор")),
              //   const SizedBox(height: 20,),
              // ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Terapeft()));}, child:const Text("Терапефт")),
              //   const SizedBox(height: 20,),
              // ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Ortoped()));}, child:const Text("Ортопет")),
            ],
          ),
        ),
      ),
    );
  }
}
