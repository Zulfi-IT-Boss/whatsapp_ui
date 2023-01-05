import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter/material.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
          child: Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(16),
              child: Text("Helo, How are you developer ?", style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),

        Container( alignment:Alignment.centerRight ,
          padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              padding: EdgeInsets.all(16),
              child: Text("am fine ,how can i help youam fine ,how can i help youam fine ,how can i help you", style: TextStyle(fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );




    //or use these design
    //   Column(
    //   children: [
    //     Padding(padding: EdgeInsets.only(right: 80),
    //     child: Container(
    //       child: ClipPath(
    //         clipper: SideCutClipper( ),
    //         child: Container(
    //           height: 44,
    //           color: Colors.grey.shade100,
    //           child:Container(
    //             width: 300,
    //
    // child:  Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Text('Helo, How are you developer ?'),
    // ),
    //
    // ))
    //       ),
    //     ),),
    //     SizedBox(height: 12,),
    //     Padding(padding: EdgeInsets.only(right: 80),
    //       child: Container(alignment: Alignment.centerRight,
    //         child: ClipPath(
    //             clipper:PointsClipper(),
    //             child: Container(
    //
    //                 height: 44,
    //                 color: Colors.grey.shade100,
    //                 child:Container(
    //                   color:Colors.green.shade300 ,
    //                   width: 300,
    //
    //                   child:  Padding(
    //                     padding: const EdgeInsets.all(8.0),
    //                     child: Text('am fine ,how can i help you',),
    //                   ),
    //
    //                 ))
    //         ),
    //       ),),
    //     SizedBox(height: 17,),
    //   ],
    //
    //
    // );
  }
}
