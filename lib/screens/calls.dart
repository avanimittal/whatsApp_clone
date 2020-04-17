import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Icon(Icons.add_call,size: 150.0,color: Colors.blueGrey[50],),
        ),
      ),
    );
  }
}