import 'package:flutter/material.dart';

class Sixthexample extends StatefulWidget {
  const Sixthexample({super.key});

  @override
  State<Sixthexample> createState() => _SixthexampleState();
}

class _SixthexampleState extends State<Sixthexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Center(
          child: Text("Third Example"),
        ),
      ),
      body: Container(
        child: ListView(
            padding: EdgeInsets.all(10),
            reverse: false, // default is false
            scrollDirection: Axis.vertical, // Defauilt is vertical
            physics: ClampingScrollPhysics(),
            children: [
              const Text("salah"),
              Container(
                height: 300,
                color: Colors.yellow.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    "Container one",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true, /////// default is false
                // physics: NeverScrollableScrollPhysics(),    >>>> to get the list view child with no scroll
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 200,
                    child: const Text(
                      "List view child",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 200,
                    color: Colors.brown,
                    child: const Text(
                      "List view child",
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
              Container(
                height: 300,
                color: Colors.yellow.withOpacity(0.7),
                child: const Center(
                  child: Text(
                    "Container two",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                height: 300,
                color: Colors.yellow.withOpacity(0.9),
                child: const Center(
                  child: Text(
                    "Container three",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
