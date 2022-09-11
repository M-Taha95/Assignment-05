import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List myImages = [
    "images/1.webp",
    "images/2.webp",
    "images/3.png",
    "images/4.png",
    "images/5.png",
    "images/6.png",
    "images/7.webp",
    "images/8.png"
  ];
  List myImagesName = [
    "Letter",
    "Tree",
    "Earth",
    "Camera",
    "Finger-Print",
    "Football",
    "Moon",
    "Car"
  ];
  List myImagesSub = [
    "Messages",
    "Our Oxygen!",
    "Our Planet!",
    "Canon",
    "press",
    "have fun",
    "light",
    "car rental"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
            child: ListView.builder(
              itemCount: 8,
              itemBuilder: (BuildContext context, int i) {
                return Container(
                  color: Colors.blueGrey,
                  padding: EdgeInsets.all(15),
                  child: ListTile(
                    isThreeLine: true,
                    trailing: Icon(Icons.do_disturb),
                    title: Text("${myImagesName[i]} "),
                    subtitle: Text("${myImagesSub[i]}"),
                    leading: Image(image: AssetImage("${myImages[i]}")),
                  ),
                );
              },
            ),
          )),
    );
  }
}
