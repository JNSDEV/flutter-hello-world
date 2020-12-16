import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/stateless");
            },
            child: Text(
              'Stateless',
            ),
          ),
          RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/stateful");
            },
            child: Text(
              'Stateful',
            ),
          ),
        ],
      ),
    );
  }
}
