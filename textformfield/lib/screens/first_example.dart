import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Firstexample extends StatefulWidget {
  const Firstexample({super.key});

  @override
  State<Firstexample> createState() => _FirstexampleState();
}

class _FirstexampleState extends State<Firstexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text("Firstexample"),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: ListView(
          children: [
            /*
              First Textformfield 
            */
            Padding(
              padding: const EdgeInsets.all(7),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  hintText: "enter your name",
                  hintStyle: TextStyle(fontSize: 18, color: Colors.grey[500]),
                  hintMaxLines: 2,
                  // prefixText: "name ",
                  prefixStyle: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(0.7)),
                ),
              ),
            ),
            /*
              second Textformfield 
            */
            Padding(
              padding: const EdgeInsets.all(7),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "اسمك",
                  labelStyle: const TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 105, 86, 86)),
                  suffix: const Text("ادخل اسمك"),
                  suffixStyle: const TextStyle(fontSize: 17),
                  filled: true,
                  fillColor: Colors.grey.withOpacity(0.7),
                ),
              ),
            ),
            /*
              Third Textformfield 
            */
            Padding(
              padding: const EdgeInsetsDirectional.all(7),
              child: TextFormField(
                // style: TextStyle(height: 1),
                // maxLines: 4,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.person),
                  labelText: "email or mobile number",
                  labelStyle: TextStyle(
                      fontSize: 17, color: Colors.grey.withOpacity(0.7)),
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green, width: 3),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.red, width: 3),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(color: Colors.black, width: 3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
