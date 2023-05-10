import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstExample extends StatefulWidget {
  const FirstExample({super.key});

  @override
  State<FirstExample> createState() => _FirstExampleState();
}

class _FirstExampleState extends State<FirstExample> {
  String msg = "Flutter EvelatedButton Example";
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
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                /**
                 *  ميقلش عنهbutton الحجم اللي المفروض ال 
                 */
                minimumSize: Size(120, 50),
                primary: Colors.grey.withOpacity(0.7),
                padding: EdgeInsets.symmetric(horizontal: 30),
                /**
                   * تمدد الظل
                   */
                // elevation: 50,
                /**
                   * لون الظل
                   */
                // shadowColor: Colors.red,
              ),
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
              child: Text("change"),
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
