import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatelessHelloWorld extends StatelessWidget {
  String title;

  StatelessHelloWorld({this.title = "Hello World"});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 50,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
