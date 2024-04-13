// Importing flutter and dart packages
import 'package:flutter/material.dart';
import 'dart:math';

// Creates a Material App
void main() => runApp(
      MaterialApp(
        home: BallPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

// Creates a Scaffold with
// appbar using Stateless widget
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 106, 162),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 6, 47, 122),
        title: const Text('Ask Me Anything'),
      ),
      body: const Ball(),
    );
  }
}

// Creates a Stateful widget
class Ball extends StatefulWidget {
  // Adding a required modifier to the Key parameter
  const Ball({Key? key}) : super(key: key);

  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ballNumber = 1;

  // Returns app with centered image Flatbutton
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            // Random.nextInt(n) returns random
            // integer from 0 to n-1
            ballNumber = Random().nextInt(5) + 1;
          });
        },
        // Adding images
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}