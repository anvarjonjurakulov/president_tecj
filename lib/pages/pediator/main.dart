import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:prezident_tech/pages/pediator/pediInfo.dart';
import 'package:prezident_tech/pages/pediator/pedimain.dart';
import 'package:prezident_tech/pages/pediator/pediquiz.dart';

class Pediator extends StatefulWidget {
  const Pediator({super.key});

  @override
  State<Pediator> createState() => _PediatorState();
}

class _PediatorState extends State<Pediator> {
  int _currerntindex=0;
  final List<Widget> _pages= [

    const Pedimain(),
    const Pediquiz(),
    const PediInfo(),
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