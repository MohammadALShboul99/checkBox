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
  bool checkb = false;
  bool checkblt = false;
  bool checkblt2 = false;
  bool checkblt3 = false;
  List<Color> DarkColor = [Colors.lime, Colors.pink];
  List<Color> LightColor = [Colors.white, Colors.grey];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          decoration:
              BoxDecoration(gradient: LinearGradient(colors: LightColor)),
          child: ListView(
            children: [
              Column(
                children: [
                  Text("if you from irbid  check"),
                  Checkbox(
                    side: BorderSide(
                        color: Colors.teal,
                        width: 30,
                        style: BorderStyle.solid),
                    activeColor: Colors.purple,
                    splashRadius: 20,
                    checkColor: Colors.green,
                    value: checkb,
                    onChanged: (val) {
                      setState(() {
                        checkb = val!;
                      });
                    },
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(30),
                    side: BorderSide(
                        color: Colors.amber,
                        width: 30,
                        style: BorderStyle.solid),
                    isThreeLine: true,
                    subtitle:
                        Text("Eg: Khalda , Abdoun , Almuqabilin , Dabouq "),
                    secondary: Icon(Icons.location_city),
                    activeColor: Colors.black,
                    checkColor: Colors.pink,
                    title: Text(
                        "If You From Amman and from This region Check this "),
                    value: checkblt,
                    onChanged: (val) {
                      setState(() {
                        checkblt = val!;
                        LightColor = DarkColor;
                      });
                    },
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(30),
                    isThreeLine: true,
                    subtitle:
                        Text("Eg: Shmeisani, Sweifieh , Northern Hashemi"),
                    secondary: Icon(Icons.location_city),
                    activeColor: Colors.black,
                    checkColor: Colors.pink,
                    title: Text(
                        "If You From Amman and from This region Check this "),
                    value: checkblt2,
                    onChanged: (val) {
                      setState(() {
                        checkblt2 = val!;
                        DarkColor = [Colors.black87, Colors.cyan];
                      });
                    },
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.all(30),
                    isThreeLine: true,
                    subtitle: Text(
                      " ( Male )",
                      style: TextStyle(fontSize: 25),
                    ),
                    secondary: Icon(Icons.location_city),
                    activeColor: Colors.black,
                    checkColor: Colors.pink,
                    title: Text("If You bigger Than 18 Years Old and"),
                    value: checkblt3,
                    onChanged: (val) {
                      setState(() {
                        checkblt3 = val!;
                        DarkColor = [Colors.white, Colors.blue];
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
