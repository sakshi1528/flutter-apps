import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //print("Device width:${MediaQuery.of(context).size.width}");
    //print("Device height:${MediaQuery.of(context).size.height}");
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "ListView Demo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: [
              Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSshVsVCSJhEKWCcgcftZksPlmCCDB0HV0lcg&s"),
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              const Text(
                "Bharii",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Image.network(
                  "https://media.istockphoto.com/id/1322277517/photo/wild-grass-in-the-mountains-at-sunset.jpg?s=612x612&w=0&k=20&c=6mItwwFFGqKNKEAzv0mv6TaxhLN3zSE43bWmFN--J5w="),
              GestureDetector(onTap: () {
                print("Button Pressed");
              },
              child:Container(
                height:50,
                color:Colors.amber,
                child:const Text("Pressed me"),
              ),
              ),
            ],
          ),),
    );
  }
}