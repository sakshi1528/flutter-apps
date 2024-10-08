import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
      title: const Text("Writing World"),
      centerTitle: true,
      backgroundColor: Colors.pink,
      actions: [
        IconButton(
          icon: Icon(Icons.edit),
          onPressed: () {},
        ),
        IconButton(
          icon: Icon(Icons.delete),
          onPressed: () {},
        ),
      ],
    )));
  }
}
