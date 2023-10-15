import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:lottie/lottie.dart';

class Main extends StatefulWidget {
  const Main({super.key});

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {
  TextEditingController _controllerName = TextEditingController();
  TextEditingController _controllerQuantity = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();

  CollectionReference _reference =
      FirebaseFirestore.instance.collection('glaza');

  String imageUrl = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("Глазной врач",style: TextStyle(fontSize: 30,height:32/30,color: Colors.black),),
          elevation: 0,
          backgroundColor: Colors.blue.shade100,

        ),
        backgroundColor: Colors.blue.shade100,
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
                              hintText: '+998 XX XXX-XX-XX'),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter phone number';
                            }

                            return null;
                          },
                        ),
                      ),
                    ),
                  ),

                  
                  const SizedBox(
                    height: 10,
                  ),
                 
                 
                  Material(
                    color: Colors.blue.shade100,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(20),
                      onTap: () async {
                        ImagePicker imagePicker = ImagePicker();
                        XFile? file = await imagePicker.pickImage(
                            source: ImageSource.camera);
                        print('${file?.path}');
                        if (file == null) return;

                        String uniqueFileName =
                            DateTime.now().millisecondsSinceEpoch.toString();

                        Reference referenceRoot =
                            FirebaseStorage.instance.ref();
                        Reference referenceDirImages =
                            referenceRoot.child('images');

                        //Create a reference for the image to be stored
                        Reference referenceImageToUpload =
                            referenceDirImages.child(uniqueFileName);
                        try {
                          //Store the file
                          await referenceImageToUpload
                              .putFile(File(file!.path));
                          print("1111111111111111111111111");
                          //Success: get the download URL
                          imageUrl =
                              await referenceImageToUpload.getDownloadURL();
                          print("2222222222222222222222222222");
                        } catch (error) {
                          //Some error occurred
                        }
                      },
                      child: Container(
                        width: 160,
                        height: 80,
                        child: const Icon(
                          Icons.photo_camera,
                          size: 70,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  

                  Container(
                    padding: const EdgeInsets.all(20),
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: GestureDetector(
                        onTap: () async {
                          if (imageUrl.isEmpty) {
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Please upload an image')));

                            return;
                          }

                          if (key.currentState!.validate()) {
                            String itemName = _controllerName.text;
                            String itemQuantity = _controllerQuantity.text;
                            Map<String, String> dataToSend = {
                              'problem': itemName,
                              'number': itemQuantity,
                              'url_image': imageUrl,
                            };
                            _reference.add(dataToSend);
                            print("444444444444444444444");
                          }
                        },
                        child: const Text(
                          'SUBMIT',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                              height: 27 / 25),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

