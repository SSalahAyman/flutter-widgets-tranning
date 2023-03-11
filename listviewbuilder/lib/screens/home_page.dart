import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:listviewbuilder/screens/first_example.dart';

import '../components/example.category.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("listviews"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: ListView(
          children: [
            /*
              First example (listview)
            */
            Examplecategory(
              nameofexample: "example 1",
              background: Colors.red,
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return Firstexample();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
