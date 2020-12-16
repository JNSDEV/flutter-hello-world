import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hello_world/components/StatefulHelloWorld.dart';
import 'package:hello_world/components/StatelessHelloWorld.dart';

import 'components/Home.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    List parts = settings.name.split('?').where((x) => x.isNotEmpty).toList();
    String page = parts.length > 0 ? parts[0] : '/';

    switch (page) {
      case "/":
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => Home(),
        );
      case "/stateless":
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => StatelessHelloWorld(),
        );
      case "/stateful":
        return MaterialPageRoute(
          settings: settings,
          builder: (_) => StatefulHelloWorld(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text("error"),
        ),
      );
    });
  }
}
