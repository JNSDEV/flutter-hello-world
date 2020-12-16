import 'package:flutter/material.dart';
import 'RouteGenerator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hello World App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: "/",
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
