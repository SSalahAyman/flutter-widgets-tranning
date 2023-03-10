import 'package:flutter/material.dart';

class Thirdexample extends StatefulWidget {
  const Thirdexample({super.key});

  @override
  State<Thirdexample> createState() => _ThirdexampleState();
}

class _ThirdexampleState extends State<Thirdexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
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
                color: Colors.orange.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    "Container one",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                height: 200,
                child: ListView(
                  // physics: NeverScrollableScrollPhysics(),
                  children: [],
                ),
              ),
              Container(
                height: 300,
                color: Colors.orange.withOpacity(0.7),
                child: const Center(
                  child: Text(
                    "Container two",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                height: 300,
                color: Colors.orange.withOpacity(0.9),
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
