import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:prezident_tech/pages/ortapet/info.dart';
import 'package:prezident_tech/pages/ortapet/orto.dart';


import 'quiz.dart';

class Ortoped extends StatefulWidget {
  const Ortoped({super.key});

  @override
  State<Ortoped> createState() => _OrtopedState();
}

class _OrtopedState extends State<Ortoped> {
  int _currerntindex=0;
  final List<Widget> _pages= [

    const Mainpppp(),
    const ortoquizzzzzz(),
    const ortoinfo(),
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
              GButton(icon: Icons.photo_camera,text: 'Main', ),
              GButton(icon: Icons.quiz,text: 'Quiz',),
              GButton(icon: Icons.info,text: 'Info',),
            ],
          ),
        ),
      ),
    );
  }
}