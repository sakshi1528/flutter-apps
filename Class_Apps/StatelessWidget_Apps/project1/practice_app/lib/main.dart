import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: const Text(
                "shoes",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              actions: [
                IconButton(
                  icon: Icon(Icons.shopping_cart),
                  onPressed: () {},
                ),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                      "https://png.pngtree.com/background/20230526/original/pngtree-3d-illustration-of-a-running-shoe-picture-image_2748040.jpg",
                      fit: BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text("Nike Air Force 1'07",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("SHOE"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white),
                      ),
                      SizedBox(
                        height: 10,
                        width: 10,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("FOATWEAR"),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                  width: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      "With iconc style lengendry comfort, the AF-1 was made to be worn on repeat. This iteration puts a fresh spin on the hoopsclassic with crisp leather, eraechoing'80s construction and reflective-design Swoosh logos."),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Quantity",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: () {
                        if (count >0) {
                          count--;
                        }
                      },
                    ),
                    Container(
                        height: 20,
                        width: 20,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text("$count")),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        if (count >= 1) {
                          count++;
                        }
                      },
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("PURCHASE"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          foregroundColor: Colors.white),
                    ),
                  ),
                ),
              ],
            )));
  }
}
