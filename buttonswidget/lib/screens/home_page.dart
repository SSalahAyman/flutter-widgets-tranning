import 'package:buttonswidget/components/example_category.dart';
import 'package:buttonswidget/screens/first_example.dart';
import 'package:buttonswidget/screens/second_example.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("buttons widgets"),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: Get.width,
        height: Get.height,
        child: ListView(
          children: [
            /**
           * First example (Elevated button)
           */
            Examplecategory(
              nameofexample: "Elevated button example 1",
              background: Colors.red,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (BuildContext) {
                  return FirstExample();
                }));
              },
            ),

            /**
           * second example (Elevated button.icon)
           */
            Examplecategory(
              nameofexample: "Elevated button.icon example 2",
              background: Colors.blue,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext) {
                    return SecondExample();
                  },
                ));
              },
            ),
            /**
           * third example (Elevated button.icon)
           */
            Examplecategory(
              nameofexample: "Elevated button.icon example 2",
              background: Colors.blue,
              ontap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (BuildContext) {
                    return SecondExample();
                  },
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
