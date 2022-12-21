import 'package:flutter/material.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.grey,width: 3)

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('assets/images/1.jpg',width: 55,height: 55,),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("My Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    SizedBox(height: 8,),
                    Text("Today,1:40 am",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black54),),
//
                 ],
                ),
                ),
                Spacer(),
                Container(
                  child: Icon(Icons.more_vert,color:  Color(0xff075e55),),
                )
              ],
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Recent Updates',
                style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.6)),
            ),),
            for(int i=9;i<11;i++)
            Row(
              children: [

                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.all(1.5),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Colors.grey,width: 3)

                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset('assets/images/$i.jpg',width: 55,height: 55,),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("My Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      SizedBox(height: 8,),
                      Text("Today,1:40 am",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black54),),
//
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.centerLeft,
              child: Text('Viewed updates',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.6)),
              ),),
            for(int i=4;i<11;i++)
              Row(
                children: [

                  Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.all(1.5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(color: Colors.grey,width: 3)

                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/$i.jpg',width: 55,height: 55,),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("My Status",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        SizedBox(height: 8,),
                        Text("Today,1:40 am",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18,color: Colors.black54),),
//
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
