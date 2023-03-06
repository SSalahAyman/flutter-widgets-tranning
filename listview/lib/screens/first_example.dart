import 'package:flutter/material.dart';

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
          child: Text("First Example"),
        ),
      ),
      body: Container(
        child: ListView(
          padding: EdgeInsets.all(10),
          reverse: false, // default is false
          scrollDirection: Axis.vertical, // Defauilt is vertical
          physics: ClampingScrollPhysics(), //default scroll
          children: [
            Text("salah"),
            Container(
              child: Center(
                  child: Text(
                "container one",
                style: TextStyle(fontSize: 30),
              )),
              color: Colors.red.withOpacity(0.5),
              width:
                  200, // this width not required because the child container take the width of screen (vertical)
              height: 300,
            ),
            Container(
                child: Center(
                    child: Text(
                  "container two",
                  style: TextStyle(fontSize: 30),
                )),
                color: Colors.red.withOpacity(0.7),
                width:
                    200, // this width not required because the child container take the width of screen (vertical)
                height: 300),
            Container(
              child: Center(
                  child: Text(
                "container three",
                style: TextStyle(fontSize: 30),
              )),
              color: Colors.red.withOpacity(0.9),
              width:
                  200, // this width not required because the child container take the width of screen (vertical)
              height: 300,
            )
          ],
        ),
      ),
    );
  }
}
