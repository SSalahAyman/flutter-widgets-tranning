import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:gridview/screens/first_example.dart';

import '../components/example_category.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gridviews"),
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: ListView(
          children: [
            /*
              First example (Gridview.builder)
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
