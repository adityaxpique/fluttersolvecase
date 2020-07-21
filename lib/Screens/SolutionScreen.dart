import 'package:flutter/material.dart';

class SolutionScreen extends StatefulWidget {
  String enroll;
  int sem;

  SolutionScreen({this.enroll, this.sem});
  @override
  _SolutionScreenState createState() => _SolutionScreenState();
}

class _SolutionScreenState extends State<SolutionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Solutions',
          style: TextStyle(
              fontFamily: 'Baskervville',
              fontSize: 20,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
