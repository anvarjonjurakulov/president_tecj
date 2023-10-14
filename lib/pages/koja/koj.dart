import 'package:flutter/material.dart';

class Koj extends StatefulWidget {
  const Koj({super.key});

  @override
  State<Koj> createState() => _KojState();
}

class _KojState extends State<Koj> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Кожа",
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