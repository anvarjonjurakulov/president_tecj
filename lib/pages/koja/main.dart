import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:prezident_tech/pages/koja/koj.dart';

import 'info.dart';
import 'quiz.dart';

class Koja extends StatefulWidget {
  const Koja({super.key});

  @override
  State<Koja> createState() => _KojaState();
}
////////////////////////////////////// 
//////// Diyor zor 
class _KojaState extends State<Koja> {
  int _currerntindex=0;
  final List<Widget> _pages= [

    const Koj(),
    const Kojsur(),
    const Information(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }












}