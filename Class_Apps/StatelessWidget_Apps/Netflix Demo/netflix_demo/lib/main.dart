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
                "Netflix Demo",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.pink,
            ),
            body: ListView.builder(
                itemCount: 5,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        " Horror Movies",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal, child: Row(
                            children:[
                              Container(
                                padding:const EdgeInsets.all(5),
                                height:200,
                                width:200,
                                child:Image.network("https://d1csarkz8obe9u.cloudfront.net/posterpreviews/horror-movie-poster-design-template-0a593d6547564a095f6166f10de24a4b_screen.jpg?ts=1679656233"),
                              ),
                              
                              Container(
                                padding:const EdgeInsets.all(5),
                                height:200,
                                width:200,
                                child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4UFPcdIVIcfybhU_zlG2kggXxyYLH4xaSjA&s"),
                              ),
                              Container(
                                padding:const EdgeInsets.all(5),
                                height:200,
                                width:200,
                                child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJDHoH2LmgbV9vtuXrkJJpOzicn0we86RwUw&s"),
                              ),Container(
                                padding:const EdgeInsets.all(5),
                                height:200,
                                width:200,
                                child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRObLwuxwFKPN6nAa8chApxGuDCTq7CTv8LYg&s"),
                              ),Container(
                                padding:const EdgeInsets.all(5),
                                height:200,
                                width:200,
                                child:Image.network("https://upload.wikimedia.org/wikipedia/en/b/b5/Horror-Story-movie-poster-2013.jpg"),
                              ),Container(
                                padding:const EdgeInsets.all(5),
                                height:200,
                                width:200,
                                child:Image.network("https://i0.wp.com/bloody-disgusting.com/wp-content/uploads/2016/11/Tusk-664x1024.jpg?resize=310%2C478"),
                              ),Container(
                                padding:const EdgeInsets.all(5),
                                height:200,
                                width:200,
                                child:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBhMYKLSjTvKMb9ezq-HcXKNFs8Efd84i2Xg&s"),
                              ),
                            ]
                          ))
                    ],
                  );
                })));
  }
}
