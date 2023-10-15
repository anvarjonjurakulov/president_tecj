// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prezident_tech/answer.dart';
import 'package:prezident_tech/pages/glaznoy/main11.dart';
import 'package:prezident_tech/pages/koja/main1.dart';
import 'package:prezident_tech/pages/ortapet/main2.dart';
import 'package:prezident_tech/pages/pediator/main3.dart';
import 'package:prezident_tech/pages/terapeft/main4.dart';

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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Shifokor UZ",
                  style: GoogleFonts.dmSerifDisplay(
                      fontSize: 36,
                      height: 36 / 34,
                      color: const Color.fromARGB(255, 11, 96, 243)),
                ),
                const SizedBox(
                  height: 60,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 129, 232),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Glaz())),
                    child: const Center(
                      child: Text(
                        " Глазной ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            height: 32 / 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 129, 232),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Koja())),
                    child: const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            " Кожaнный ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                height: 32 / 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "врач",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                height: 32 / 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 129, 232),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Pediator())),
                    child: const Center(
                      child: Text(
                        " Педиатор ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            height: 32 / 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 129, 232),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Terapeft())),
                    child: const Center(
                      child: Text(
                        " Терапевт ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            height: 32 / 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 129, 232),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Ortoped())),
                    child: const Center(
                      child: Text(
                        " Ортопед ",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            height: 32 / 30,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30,),
                // Container(
                //   padding: const EdgeInsets.all(30),
                //   margin: const EdgeInsets.symmetric(horizontal: 50),
                //   decoration: BoxDecoration(
                //     color: const Color.fromARGB(255, 4, 129, 232),
                //     borderRadius: BorderRadius.circular(25),
                //     border: Border.all(color: Colors.blueAccent),
                //   ),
                //   child: GestureDetector(
                //     onTap: () => Navigator.push(
                //         context,
                //         MaterialPageRoute(
                //             builder: (context) => const MyWidget())),
                //     child: const Center(
                //       child: Text(
                //         "     личгый кабинет ",
                //         style: TextStyle(
                //             color: Colors.white,
                //             fontSize: 30,
                //             height: 32 / 30,
                //             fontWeight: FontWeight.bold),
                //       ),
                //     ),
                //   ),
                // ),
 Container(
                  padding: const EdgeInsets.all(30),
                  margin: const EdgeInsets.symmetric(horizontal: 50),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 4, 129, 232),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.blueAccent),
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MyWidget())),
                    child: const Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            " Личгый ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                height: 32 / 30,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            " кабинет ",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                height: 32 / 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                 SizedBox(height: 20,),
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
      ),
    );
  }
}
