import 'package:flutter/material.dart';
import 'customtext.dart'; // Make sure you have this custom widget properly implemented

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 239, 86, 44),
          title: Center(child: Text("Midterm Exam")),
        ),
        backgroundColor: Color.fromARGB(255, 9, 35, 41),
        body: ExamPage(),
      ),
    );
  }
}

class ExamPage extends StatefulWidget {
  @override
  _ExamPageState createState() => _ExamPageState();
}

class _ExamPageState extends State<ExamPage> {
  int imagechange = 0; //Var for Change image

  void toggleImage() {
    setState(() {
      imagechange = imagechange == 0 ? 1 : 0; // to change image
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Container(
            height: 150,
            width: 240,
            decoration: BoxDecoration(
              border: Border.all(color: Color.fromARGB(255, 250, 250, 250)),
            ),
            child: imagechange == 0
                ? Image.asset(
                    'assets/firefly.jpg',
                    fit: BoxFit.contain,
                  )
                : Image.asset(
                    'assets/firefly.png',
                    fit: BoxFit.contain,
                  ),
          ),
          TextButton(
            onPressed: toggleImage,
            child: Text(
              'Change Image',
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          Centertext(
            name: 'Firefly',
            colorname: Color.fromARGB(255, 239, 86, 44),
            textcolorname: Color.fromARGB(248, 217, 247, 208),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
          ),
          Centertext(
            name: 'I Shall Set The Sea Ablazed',
            colorname: Color.fromARGB(255, 9, 35, 41),
            textcolorname: Color.fromARGB(255, 239, 86, 44),
          ),
        ], // children
      ),
    );
  }
}