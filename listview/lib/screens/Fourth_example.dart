import 'package:flutter/material.dart';

class Fourthexample extends StatefulWidget {
  const Fourthexample({super.key});

  @override
  State<Fourthexample> createState() => _FourthexampleState();
}

class _FourthexampleState extends State<Fourthexample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
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
                color: Colors.purple.withOpacity(0.5),
                child: const Center(
                  child: Text(
                    "Container one",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ListView(
                shrinkWrap: true,

                /// default is false
                children: [],
              ),
              Container(
                height: 300,
                color: Colors.purple.withOpacity(0.7),
                child: const Center(
                  child: Text(
                    "Container two",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ),
              Container(
                height: 300,
                color: Colors.purple.withOpacity(0.9),
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
