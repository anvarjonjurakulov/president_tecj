import 'package:flutter/material.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Глазной",
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
