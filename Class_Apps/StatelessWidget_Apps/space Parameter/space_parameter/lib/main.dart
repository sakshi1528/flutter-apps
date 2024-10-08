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
          title: const Text("Row Combo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
              centerTitle: true,
              backgroundColor: Colors.brown),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200,
              Width: 200,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
