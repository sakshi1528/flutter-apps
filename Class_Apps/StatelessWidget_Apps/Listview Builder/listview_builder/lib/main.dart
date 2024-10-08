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
            "ListView Builder",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: ListView.builder(
          itemCount: 20,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Text(
              "Index:$index",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            );
          },
        ),
      ),
    );
  }
}
