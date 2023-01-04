import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(right: 80),
        child: Container(
          child: ClipPath(
            clipper: SideCutClipper( ),
            child: Container(
              height: 44,
              color: Colors.grey.shade100,
              child:Container(
                width: 300,

    child:  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text('Helo, How are you developer ?'),
    ),

    ))
          ),
        ),),
        SizedBox(height: 12,),
        Padding(padding: EdgeInsets.only(right: 80),
          child: Container(alignment: Alignment.centerRight,
            child: ClipPath(
                clipper:PointsClipper(),
                child: Container(

                    height: 44,
                    color: Colors.grey.shade100,
                    child:Container(
                      color:Colors.green.shade300 ,
                      width: 300,

                      child:  Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('am fine ,how can i help you',),
                      ),

                    ))
            ),
          ),),
        SizedBox(height: 17,),
      ],


    );
  }
}
