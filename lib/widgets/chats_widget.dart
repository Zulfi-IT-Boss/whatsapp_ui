import 'package:flutter/material.dart';

class ChatsWidget extends StatelessWidget {
  const ChatsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5,),
        child: Column(
          children: [
            for(int i=1;i<11;i++)

              InkWell(
              onTap: () {
                Navigator.pushNamed(context, "chatPage");
              },
              child: Container(
                margin: const EdgeInsets.symmetric(vertical: 5),

                child: Row(

                  children: [

                    ClipRRect(borderRadius: BorderRadius.circular(40),
                    child: Image.asset("assets/images/$i.jpg",
                    width: 45, height: 45,),),
                    Padding(
                        padding:const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Programmer',
                        style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 8,),
                        Text("Hy,Programmer ,how are you",
                          style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500,
                          color: Colors.black54),),
                      ],
                    ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                      const Text('12:15',style: TextStyle(
                        color: Color(0xff0fce5e),
                        fontWeight: FontWeight.w500,
                      ),),
                      const SizedBox(height: 6,),
                      Container(alignment: Alignment.center,
                        width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                        color: const Color(0xff0fce5e),
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: const Text('2',style: TextStyle(fontWeight: FontWeight.w500,
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
