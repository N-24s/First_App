import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:first_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(

      itemCount: 20,
      itemBuilder: (ctx,index){
        return  ListTile(
onTap: (){
  SpinKitFadingCircle(
  itemBuilder: (BuildContext context, int index) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: index.isEven ? Colors.red : Colors.green,
      ),
    );
  },
);
},
          title: const Text("نوح سعيد", textAlign: TextAlign.right, textDirection: TextDirection.rtl,),
          subtitle: const Text('السلام عليكم ورحمه الله وبركاته',textAlign: TextAlign.right, textDirection: TextDirection.rtl),
          trailing: CircleAvatar(backgroundColor: Colors.black,radius: 40,child: Image.asset('assets/images/y4.png',height: 40,width: 40,),),
          leading: const Column(
            children: [
              Text("4:00 pm", style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,)
,              CircleAvatar(radius: 10,backgroundColor: Colors.green,child: Text("3"),)
            ],
          ),
        );
      },);
  }
}