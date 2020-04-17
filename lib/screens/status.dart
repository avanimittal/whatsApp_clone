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
    double devWid=MediaQuery.of(context).size.width;
    var val=i+1;
    return Column(
      children: <Widget>[

        Container(
          width:devWid,
          height: 75.0,
          child:Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(7.0),
                child:Container(
//                  color: Color(0xff128C7E),
                  height: 62.0,
                  width:62.0,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color:Color(0xff128C7E),width:2.0
                      )
                  ),
                  child: Container(
                    height: 58.0,
                    width:58.0,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                            color:Colors.white,width:2.0
                        )
                    ),
                    child:Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          shape:BoxShape.circle,
                          image:DecorationImage(
                              fit: BoxFit.fill,
                              image:NetworkImage('https://www.theportlandclinic.com/wp-content/uploads/2019/07/Person-Curtis_4x5-e1564616444404.jpg'))),
                    ),
                  ),)
              ),
              Padding(
                padding: EdgeInsets.only(left:16.0,top:25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Person',style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18.0,),) ,
                    Text('Today, 11:14 am'),

                  ],
                ),
              ),

            ],
          )
        ),
        Divider(),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    double deviceWidth=MediaQuery.of(context).size.width ;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton:Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            SizedBox(
              height: 45.0,
              width: 45.0,
              child: FloatingActionButton(
                backgroundColor: Colors.blueGrey[50],
                child: Icon(Icons.create,color: Colors.blueGrey[700],),
              ),
            ),
            SizedBox(
              height: 75.0,
            ),

          ],
        ),
        body: SingleChildScrollView(
          child:Column(
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
                title: Text('My status',style:TextStyle(fontWeight:FontWeight.bold,fontSize: 18.0)),
                subtitle: Text('Tap to add status update'),
              ),
              Container(height:35.0,
                  width:deviceWidth*1.00,
                  color: Colors.grey[200],
                  padding: EdgeInsets.only(top:5.0,left: 10.0),
                  child:Text('Recent Updates',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey[600]),)),
              Container(
                child:ListView.builder(
                  padding: EdgeInsets.all(0.0),
                  primary: false,
                  shrinkWrap: true,
                  itemBuilder:_statusList,
                  itemCount:8,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}