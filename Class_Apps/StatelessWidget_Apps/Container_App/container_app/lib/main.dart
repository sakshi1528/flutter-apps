import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        appBar:AppBar(
          title:const Text("Container App"),
          centerTitle: true,
          backgroundColor: Colors.lightBlue-,
        ),
        body:Center(
          child:Container(
            height: 250,
            width:250,
            color:Colors.lightGreen,
          ),
            
        ),
      ),
    );
  }
}
