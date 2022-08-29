import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(mohd());
}

class mohd extends StatelessWidget {
  const mohd({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: ListView(
            children: [
              Container(
                color: Colors.amber,
                width: 200,
                height: 300,
                child: Text(
                  "Hello from first container",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                child: ListView(
                  shrinkWrap: true,
                  // physics: NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      // alignment: Alignment.bottomLeft,
                      color: Colors.green,
                      width: 200,
                      height: 300,
                      child: Text(
                        "Hello from sup one",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                    Container(
                      color: Colors.amber,
                      width: 200,
                      height: 300,
                      child: Text(
                        "Hello from second sup",
                        style: TextStyle(fontSize: 25),
                      ),
                    ),
                  ],
                ),
                height: 300,
              ),
              Container(
                color: Colors.red,
                width: 200,
                height: 300,
                child: Text(
                  "Hello from seco container",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                color: Colors.green,
                width: 200,
                height: 300,
                child: Text(
                  "Hello from third container",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              Container(
                color: Colors.purple,
                width: 200,
                height: 300,
                child: Text(
                  "Hello from third container",
                  style: TextStyle(fontSize: 25),
                ),
              )
            ],
          )),
    );
  }
}
