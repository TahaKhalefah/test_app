

import 'package:flutter/material.dart';

class UpdateDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        title: Text("Welcome to Flutter ",style: TextStyle(
            fontFamily: "bold"
        )),
        centerTitle: true,

      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Hello World!',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.w500,fontSize: 22),
            ),
          ],
        ),
      ),
       );
  }

}
