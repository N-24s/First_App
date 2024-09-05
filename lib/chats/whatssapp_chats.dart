import 'package:first_app/chats/widgets/chats.dart';
import 'package:flutter/material.dart';

class WhatssappChats extends StatelessWidget {
  const WhatssappChats({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
//AppBar
appBar:AppBar(  backgroundColor: Colors.black,title:  const Text("واتساب",textAlign: TextAlign.right, textDirection: TextDirection.rtl)),

//bottomNavigationBar
bottomNavigationBar:  Container(height: 65,color: Colors.black,child: const TabBar(dividerHeight: 20,indicatorColor: Colors.white,indicatorWeight: 5,labelColor: Colors.white,tabs: [ 
   Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.call),
    Text("المكالمات"),
  ],
),Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.call),
    Text("المجتمعات"),
  ],
),Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.message_rounded),
    Text("المستجدات"),
  ],
),Column(
  
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Icon(Icons.chat_outlined),
    Text("الدردشات"),
  ],
)], )),
 //body
body:  const TabBarView(children: [
Chats(),
Chats(),
Chats(),
Chats(),

]),
    ));
  }
}