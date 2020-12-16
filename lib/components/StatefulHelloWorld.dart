import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatefulHelloWorld extends StatefulWidget {
  String title;

  StatefulHelloWorld({this.title = "Hello World"});

  @override
  State<StatefulHelloWorld> createState() => new _helloWorldState();
}

class _helloWorldState extends State<StatefulHelloWorld> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.title,
            style: TextStyle(
              fontSize: 50,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            counter.toString(),
            style: TextStyle(
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
