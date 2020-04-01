import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ChatPageState();
  }
}
class _ChatPageState extends State<StatefulWidget>{
Widget _contactsList(BuildContext context, int index){
  var value=index+1;
  return Column(
    children: <Widget>[
      ListTile(
        leading:CircleAvatar(
          radius: 28.0,
          backgroundImage: NetworkImage('https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404.jpg'),
        ),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text('Person $value' ,style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18.0),),

  Text('7:08pm',style: TextStyle(fontSize: 12.0,color:Colors.grey)),
  ],
        ),
        subtitle:Text('New message'),
      ),
      Divider(),
    ],
  );
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemBuilder:_contactsList,
          itemCount:15,
        ),
      ),
    );
  }
}