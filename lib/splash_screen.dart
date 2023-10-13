// ignore_for_file: avoid_unnecessary_containers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:prezident_tech/homepage.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  startTimer() {
    Timer(const Duration(seconds: 5), () async {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const HomePage()));
    });
  }

  void initState() {
    super.initState();

    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             const Text("Shifokor UZ",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
            Center(
              child: Lottie.asset("lib/assets/doc.json"),
            ),
            
          ],
        ),
      ),
    );
  }
}