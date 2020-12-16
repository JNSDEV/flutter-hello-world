import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
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
      ),
    );
  }
}
