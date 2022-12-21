import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5,),
        child: Column(
          children: [
            for(int i=1;i<11;i++)

              InkWell(
              onTap: () {

              },
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 5),

                child: Row(

                  children: [

                    ClipRRect(borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/images/$i.jpg",
                    width: 45, height: 45,),),
                    Padding(
                        padding:EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Programmer',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 8,),
                        Text('Hy,Progammer ,how are you',
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,
                          color: Colors.black54),),
                      ],
                    ),
                    ),
                    Spacer(),
                    Column(
                      children: [
                      Text('12:15',style: TextStyle(
                        color: Color(0xff0fce5e),
                        fontWeight: FontWeight.w500,
                      ),),
                      SizedBox(height: 6,),
                      Container(alignment: Alignment.center,
                        width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: Color(0xff0fce5e),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Text('2',style: TextStyle(fontWeight: FontWeight.w500,
                      color: Colors.white,fontSize: 16),),)
                    ],
                    )

                  ],

                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
