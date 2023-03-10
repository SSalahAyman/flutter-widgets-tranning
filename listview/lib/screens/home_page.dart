import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview/components/example_category.dart';
import 'package:listview/screens/Fourth_example.dart';
import 'package:listview/screens/fifth_example.dart';
import 'package:listview/screens/first_example.dart';
import 'package:listview/screens/second_example.dart';
import 'package:listview/screens/sixith_example.dart';
import 'package:listview/screens/three_example.dart';

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
            /*
              Third example (listview)
            */
            Examplecategory(
              nameofexample: "example 3",
              background: Colors.orange,
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return Thirdexample();
                    },
                  ),
                );
              },
            ),
            /*
              Fourth example (listview)
            */
            Examplecategory(
              nameofexample: "example 4",
              background: Colors.purple,
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return Fourthexample();
                    },
                  ),
                );
              },
            ),
            /*
              Fifth example (listview)
            */
            Examplecategory(
              nameofexample: "example 6",
              background: Colors.yellow,
              ontap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext) {
                      return Sixthexample();
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
