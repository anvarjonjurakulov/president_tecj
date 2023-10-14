import 'package:flutter/material.dart';

class Terimain extends StatefulWidget {
  const Terimain({super.key});

  @override
  State<Terimain> createState() => _TerimainState();
}

class _TerimainState extends State<Terimain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Терапефт",
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