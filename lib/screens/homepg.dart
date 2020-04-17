import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chats.dart';
import 'package:whatsapp/screens/status.dart';
import 'package:whatsapp/screens/calls.dart';
import 'package:whatsapp/screens/camera.dart';

class WhatsApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _WhatsAppState();
  }

}
class _WhatsAppState extends State<StatefulWidget> with SingleTickerProviderStateMixin{
  var _fabicon;
  List <Tab> myTabs=[
    Tab(icon: Icon(Icons.camera_alt),),
    Tab(text: "CHATS"),
    Tab(text: "STATUS"),
    Tab(text: "CALLS"),
  ];
  TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, initialIndex: 1, length: 4);
    _tabController.addListener(
            (){
              setState(() {
                switch(_tabController.index){
                  case 0:
                    _fabicon=null;
                    break;
                  case 1:
                    _fabicon=Icon(Icons.message,color: Colors.white,);
                    break;
                  case 2:
                    _fabicon=Icon(Icons.camera_alt,color: Colors.white,);
                    break;
                  case 3:
                    _fabicon=Icon(Icons.add_call,color: Colors.white,);
                    break;
                  default:
                    _fabicon=Icon(Icons.message,color: Colors.white,);
                    break;


                }
              });
        }
    );
  }
  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
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
     home:Scaffold(
         floatingActionButton: FloatingActionButton(
           child:_fabicon,
           onPressed: (){},
         ),
         body:_buildScrollable(context)
       ),
   );
  }

  Widget _buildScrollable(BuildContext context){
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          floating:true,
          pinned:true,
          snap: true,
          title: Text('WhatsApp',style: TextStyle(fontSize: 22.0),),
          actions: <Widget>[
            IconButton(icon:Icon(Icons.search),color:Colors.white,onPressed: (){},),
            Padding(padding: EdgeInsets.all(2.0)),
            IconButton(icon:Icon(Icons.more_vert),color: Colors.white,onPressed: (){},)
          ],
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.white,
              tabs:myTabs
          ),
        ),
        SliverFillRemaining(
          child: TabBarView(
            controller:_tabController,
            children: <Widget>[
              CameraPage(),
              ChatPage(),
              StatusPage(),
              CallsPage(),
            ],
          ),
        ),
      ],
    );

  }
}
