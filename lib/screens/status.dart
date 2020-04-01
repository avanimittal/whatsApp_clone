import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _StatusPageState();
  }
}
class _StatusPageState extends State<StatefulWidget>{

  Widget _statusList (BuildContext context,int i){
    var val=i+1;
    return Column(
      children: <Widget>[
        ListTile(
          leading:
          /*CircleAvatar(radius:36.0,
            backgroundColor: Color(0xff128C7E),
            child:CircleAvatar(
              radius:34.0,
            backgroundColor: Colors.white,
            child:CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage('https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404.jpg'),
            ),
          ),
          )*/
          Container(height: 66.0,
            width:66.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:Color(0xff128C7E),width:3.0
              )
            ),
            child: Container(
            height: 58.0,
            width: 58.0,
            child: Image.network('https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404.jpg',fit:BoxFit.fillg
              ,),
            decoration: BoxDecoration(
                shape:BoxShape.circle,/*,image:DecorationImage(
                fit: BoxFit.cover,
                image:NetworkImage('https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404.jpg')),*/
                border: Border.all(
                  color:Colors.white,
                  width: 3.0,
                )),
          ),
          ),


        ),
        Divider()
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: <Widget>[
            ListTile(
              contentPadding: EdgeInsets.all(10.0),
              leading:Stack(
                children: <Widget>[
                  Container(
                  height: 58.0,
                  width: 58.0,
                  decoration: BoxDecoration(
                      shape:BoxShape.circle,image:DecorationImage(
                    fit: BoxFit.fill,
                      image:NetworkImage('https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404.jpg'))),
                ),
                  Positioned(
//                    top: 24.0,
//                    left: 40.0,
                  bottom: 1.0,
                    right: 0.0,
                    child:Container(
                      height: 20.0,
                      width: 20.0,
//padding:EdgeInsets.all(1.0),
                      child:Padding(child:Icon(Icons.add,color:Colors.white),
                      padding: EdgeInsets.all(0.2),),
//                    child:Center(child:Text('+',style:TextStyle(fontSize: 25.0,color: Colors.white)),),
                      decoration: BoxDecoration(
                        boxShadow:[BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0,1.5,)
                        ),],
                        shape: BoxShape.circle,color:Theme.of(context).accentColor
                      ),
                    ),)

                ],
              ),
              title: Text('My Status',style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18.0)),
              subtitle: Text('Tap to add status update'),
            ),
            Container(height:30.0,
                width:800.0,
                color: Colors.grey[200],
                padding: EdgeInsets.only(top:5.0,left: 10.0),
                child:Text('Recent Updates',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),)),
            Expanded(
              child: ListView.builder(
                itemBuilder:_statusList,
                itemCount:8,
              ),
            )
          ],
        ),
      ),
    );
  }
}