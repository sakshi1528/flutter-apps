import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text(
          "SpaceParametr",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w200,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
       // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height:200,
            width:200,
            color:Colors.indigoAccent,
          ),
          Container(
            height:200,
            width:200,
            color:Colors.limeAccent,
          ),
        ],
      ),
    ),);
  }
}
