import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:firebase_database/firebase_database.dart';

import 'gla.dart';
import 'info.dart';
import 'quiz.dart';

class Glaz extends StatefulWidget {
  const Glaz({super.key});

  @override
  State<Glaz> createState() => _GlazState();
}

class _GlazState extends State<Glaz> {
   int _currerntindex=0;
  final List<Widget> _pages= [

     Main(),
     Quiz(),
     Info(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currerntindex],
      backgroundColor: Colors.blue.shade100,
      bottomNavigationBar: Container(
        color: Colors.blue.shade100,
        child:   Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 15),
          child: GNav(
            gap: 8.0,
            backgroundColor: Colors.blue.shade100,
            color: Colors.blue.shade400,
            activeColor: Colors.blueAccent,
            tabBackgroundColor: Colors.blue.shade200,
            padding: const EdgeInsets.all(16),
            selectedIndex: _currerntindex,
            onTabChange: (index){
              setState(() {
                _currerntindex=index;
              });
            },
            tabs: const [
              GButton(icon: Icons.photo_camera,text: 'Камера', ),
              GButton(icon: Icons.quiz,text: 'Опросник',),
              GButton(icon: Icons.info,text: 'Информация',),
            ],
          ),
        ),
      ),
    );
  }
}