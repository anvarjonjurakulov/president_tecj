import 'package:flutter/material.dart';

class Mainpppp extends StatefulWidget {
  const Mainpppp({super.key});

  @override
  State<Mainpppp> createState() => _MainppppState();
}

class _MainppppState extends State<Mainpppp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Ортопет",
          style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              height: 30 / 28,
              fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text("dsjdbsjfa"),
      ),
    );
  }
}