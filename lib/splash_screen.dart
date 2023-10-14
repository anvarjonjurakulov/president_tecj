// ignore_for_file: avoid_unnecessary_containers

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Shifokor UZ",
                style: GoogleFonts.dmSerifDisplay(
                    color: Colors.black,
                    fontSize: 35,
                    height: 35 / 33,
                    fontWeight: FontWeight.bold
                    ),
                  ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Lottie.asset("lib/assets/doc.json"),
            ),
          ],
        ),
      ),
    );
  }
}
