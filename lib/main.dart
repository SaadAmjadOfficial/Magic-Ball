import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Center(
            child: Text(
              "The Magic Ball",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                "Keep Question in Your mind",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "&",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                "TAP Below:",
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Magic(),
            ],
          ),
        ),
      ),
    );
  }
}

class Magic extends StatefulWidget {
  const Magic({Key? key}) : super(key: key);

  @override
  _MagicState createState() => _MagicState();
}

class _MagicState extends State<Magic> {
  int num = 0;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            num = Random().nextInt(2) + 1;
          });
        },
        child: Image.asset("images/img$num.png"),
      ),
    );
  }
}
