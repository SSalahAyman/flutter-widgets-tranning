import 'package:flutter/material.dart';

class Secondexample extends StatefulWidget {
  const Secondexample({super.key});

  @override
  State<Secondexample> createState() => _SecondexampleState();
}

class _SecondexampleState extends State<Secondexample> {
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
          reverse:
              true, // default is false ,sso happen reverse with scrolling from right to left (hirozontal) and bottom to up (vertical) ,and the last child is the first child
          scrollDirection: Axis.horizontal, // Defauilt is vertical
          physics: BouncingScrollPhysics(), //bouncing scroll
          // physics:
          //     NeverScrollableScrollPhysics(), //  --> no scrolling between the children
          children: [
            Text("salah"),
            Container(
              child: Center(
                  child: Text(
                "container one",
                style: TextStyle(fontSize: 30),
              )),
              color: Colors.blue.withOpacity(0.5),
              width: 200,
              height:
                  300, // this height not required because the child container take the height of screen (horizontal)
            ),
            Container(
              child: Center(
                  child: Text(
                "container two",
                style: TextStyle(fontSize: 30),
              )),
              color: Colors.blue.withOpacity(0.7),
              width: 200,
              height:
                  300, // this height not required because the child container take the height of screen (horizontal)
            ),
            Container(
              child: Center(
                  child: Text(
                "container three",
                style: TextStyle(fontSize: 30),
              )),
              color: Colors.blue.withOpacity(0.9),
              width: 200,
              height:
                  300, // this height not required because the child container take the height of screen (horizontal)
            )
          ],
        ),
      ),
    );
  }
}
