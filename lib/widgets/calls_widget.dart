import 'package:flutter/material.dart';

class CallsWidget extends StatelessWidget {
  const CallsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:  Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [Container(
            padding: EdgeInsets.symmetric(vertical: 12),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image.asset('assets/images/9.jpg',height: 60,width: 60,),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text("dear",style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 18),),
                    SizedBox(height: 8,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.call_made,color:  Color(0xff075e55) ,size: 19,),
                        Text("(1)Today,12:39",style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                        ),),

                      ],
                    ),

                  ],
                ),
                ),
                Spacer(),
                Container(
                  child:Icon(Icons.call_sharp,color:  Color(0xff075e55) ),
                )
              ],
            ),
          )],
        ),
      ),
    );
  }
}
