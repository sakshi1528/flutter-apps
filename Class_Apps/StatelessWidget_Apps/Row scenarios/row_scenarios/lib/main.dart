import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    print("Device width:${MediaQuery.of(context).size.width}");
     print("Device height:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Row combo",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w200,
            ),
          ),
          backgroundColor: Colors.purple,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color:Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
