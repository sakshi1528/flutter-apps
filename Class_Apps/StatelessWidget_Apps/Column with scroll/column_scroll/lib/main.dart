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
        appBar:AppBar(
          title:const Text("Scroll me",
          style:TextStyle(
            fontSize:30,
            fontWeight:FontWeight.w500,
          ),),
          backgroundColor:Colors.amber,
          centerTitle: true,
        ),
        body:SingleChildScrollView(
        
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
            children: [
            
              
              Container(
            
                height:400,
                width:400,
                color:Colors.lightGreen,
                child:  Image.network("https://upload.wikimedia.org/wikipedia/commons/d/da/Baby.tux-black-800x800.png"),
              ),
             
              Container(
                height: 400,
                width:400,
                color:Colors.pink,
                child: Image.network("https://upload.wikimedia.org/wikipedia/commons/4/48/Baby.gnu-black-800x800.png"),
              ),
        
              Container(
                height:400,
                width:400,
                color:Colors.amber,
                child:Image.network("https://upload.wikimedia.org/wikipedia/commons/d/da/Baby.tux-black-800x800.png")
              ), 
            
            ],
          ),
        ),
      ),);
  }
}
