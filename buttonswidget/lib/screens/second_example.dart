import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SecondExample extends StatefulWidget {
  const SecondExample({super.key});

  @override
  State<SecondExample> createState() => _SecondExampleState();
}

class _SecondExampleState extends State<SecondExample> {
  String msg = "Flutter EvelatedButton Example";

  ButtonStyle changeButtonStyle = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    minimumSize: Size(120, 50),
    primary: Colors.grey.withOpacity(0.7),
    padding: EdgeInsets.symmetric(horizontal: 30),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Center(
          child: Text("Secondexample"),
        ),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              icon: Icon(Icons.change_circle),
              label: Text("change"),
              style: changeButtonStyle,
              onPressed: () {
                setState(() {
                  if (msg.startsWith("F")) {
                    msg =
                        'We have learned Flutter Elevated / Raised button example.';
                  } else {
                    msg = 'Flutter Elevated / Raised button Example';
                  }
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              msg,
              style: const TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
