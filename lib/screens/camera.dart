import 'package:flutter/material.dart';

class CameraPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
            child: Icon(Icons.camera_alt,size: 150.0,color: Colors.blueGrey[50],),
        ),
      ),
    );
  }
}