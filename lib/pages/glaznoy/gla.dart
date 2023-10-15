// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {

  TextEditingController _controllerName = TextEditingController();

  TextEditingController _controllerQuantity = TextEditingController();

  GlobalKey<FormState> key = GlobalKey();

  CollectionReference _reference =
      FirebaseFirestore.instance.collection('glaza');

  String imageUrl = '';

  Main({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 100, 174, 234),
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Form(
              key: key,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Lottie.asset("lib/assets/selfie.json"),
                  ),
                  
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "",
                    style: TextStyle(
                        fontSize: 30,
                        height: 32 / 30,
                        fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextFormField(
                          controller: _controllerName,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                              hintText: 'Explain Your Problem'
                              ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Write your problem';
                            }

                            return null;
                          },
                        ),
                      ),
                    ),
                  ),

                  

                  const SizedBox(
                    height: 20,
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: TextFormField(
                          controller: _controllerQuantity,
                          keyboardType: TextInputType.number,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
      ),
    );
  }
}
