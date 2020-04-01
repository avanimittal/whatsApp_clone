import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chats.dart';
import 'package:whatsapp/screens/status.dart';
import 'package:whatsapp/screens/calls.dart';
import 'package:whatsapp/screens/camera.dart';


class WhatsApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     theme: ThemeData(
       primaryColor: Color(0xFF075E54),
       primaryColorDark: Color(0xff128C7E),
       accentColor: Color(0xFF25D366)
     ),
     debugShowCheckedModeBanner: false,
     title: 'WhatsApp',
     home:DefaultTabController(
       length:4,
       child: Scaffold(
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.message,color: Colors.white,),
           onPressed: (){},

         ),
         appBar: AppBar(
           title: Text('WhatsApp',style: TextStyle(fontSize: 22.0),),
           actions: <Widget>[
             IconButton(icon:Icon(Icons.search),color:Colors.white,onPressed: (){},),
             Padding(padding: EdgeInsets.all(2.0)),
             IconButton(icon:Icon(Icons.more_vert),color: Colors.white,onPressed: (){},)
           ],
           bottom: TabBar(
             indicatorColor: Colors.white,
             tabs: <Widget>[
               Tab(icon: Icon(Icons.camera_alt),),
               Tab(text: "CHATS"),
               Tab(text: "STATUS"),
               Tab(text: "CALLS"),
             ],
           ),

         ),
         body: TabBarView(children: <Widget>[
           CameraPage(),
           ChatPage(),
           StatusPage(),
           CallsPage(),
         ],

         ),
       ),
     ),
   );
  }
}