import "package:flutter/material.dart";
import 'file:///D:/Flutter%20Projects/fluttersolvecase/lib/Screens/firstscreen.dart';

import 'Screens/SplashScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreen());
  }
}
