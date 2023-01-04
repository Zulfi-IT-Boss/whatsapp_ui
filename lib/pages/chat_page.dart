import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_sample.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:PreferredSize(preferredSize:const Size.fromHeight(80) ,
        child: AppBar(
          elevation: 0,
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back),
            //replace with our own icon data.
          ),
          title:
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(45),
                    child: Image.asset('assets/images/1.jpg',width: 60,height: 60,)),
                Padding(padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Programmer",
                    style: TextStyle(fontSize: 19),),
                    SizedBox(height: 5,),
                    Text("online",
                      style: TextStyle(fontSize: 15,
                          color: Colors.white.withOpacity(.8)
                        // color: Colors.white70
                      )),
                    
                  ],
                ),)
              ],
            ),
          ),
          leadingWidth: 30 ,
          actions: const [
            Padding(padding: EdgeInsets.only(top: 10,right: 25),
            child: Icon(CupertinoIcons.video_camera_solid,size: 25,),
            ),
            Padding(padding: EdgeInsets.only(top: 10,right: 35),
              child: Icon(Icons.call),
            ),
            Padding(padding: EdgeInsets.only(top: 10,right: 28),
              child: Icon(Icons.more_vert),
            ),
          ],
          ),
        ),
      body: Container(
      height: double.infinity,
        width: double.infinity,
        decoration:  BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bg.png'),
            fit: BoxFit.cover
          )
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 10,left:8,right:8,bottom: 80 ),
            child: Column(
              children: [
                Container(
                  width: 300,
                  margin: EdgeInsets.only(bottom: 20),
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Color(0xfffff3c2),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow:[
                      BoxShadow(
                        color: Colors.grey.withOpacity(.8),
                        blurRadius: 8
                      )
                    ]
                  ),
                  child: Text('Messages and calls are end-to-end encrypted,No one outside of this chat can read and listen.Tap to more...'),
                ),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
                ChatSample(),
              ],
            ),
          ),
        ),
      ),
    );



  }
}
