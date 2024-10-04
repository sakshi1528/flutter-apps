import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Devise width:${MediaQuery.of(context).size.width}");
    print("device height:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home:Scaffold
    )
  }
}
