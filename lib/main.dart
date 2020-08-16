import "package:flutter/material.dart";
import 'package:solvecaseflutter/Screens/DrawerScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DrawerScreen());
  }
}
