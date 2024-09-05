import 'package:flutter/material.dart';

class Tabbar extends StatelessWidget {
  const Tabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, child: Scaffold(

appBar:AppBar(title:  Text("واتساب"),
bottom:  const TabBar(tabs: [Text("الدردشات"), Text("calls"), Text("updates")], ),),
body:  TabBarView(children: [
  Container(child: Icon(Icons.chat_sharp),),
    Container(child: Icon(Icons.message_sharp),),

  Container(child: Icon(Icons.call_sharp),),


]),
    ));
  }
}