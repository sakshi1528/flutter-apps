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
        title: const Text("Container"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body:Center(
        child:Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Container(
              height:200,
              width:200,
              color:Colors.blue,
              
            ),
            Container(
              height:200,
              width:200,
              color:Colors.red,

            ),
            Container(
              height:200,
              width:200,
              color:Colors.pinkAccent,
            )

          ]
        ),
      ),
    ));
  }
}
