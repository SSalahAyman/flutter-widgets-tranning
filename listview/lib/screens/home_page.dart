import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview/components/example_category.dart';
import 'package:listview/screens/first_example.dart';
import 'package:listview/screens/second_example.dart';

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
            /*
              second example (listview)
            */
            Examplecategory(
              nameofexample: "example 2",
              background: Colors.blue,
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return Secondexample();
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
