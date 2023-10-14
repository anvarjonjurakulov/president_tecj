import 'package:flutter/material.dart';

class Pedimain extends StatefulWidget {
  const Pedimain({super.key});

  @override
  State<Pedimain> createState() => _PedimainState();
}

class _PedimainState extends State<Pedimain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blue.shade200,
        title: const Text(
          "Педиатор",
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