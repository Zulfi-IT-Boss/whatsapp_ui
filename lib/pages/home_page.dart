import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
      appBar:
      PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            elevation: 0,

            title: Padding(
              padding: const EdgeInsets.only(top: 21),
              child: Text('WhatsApp',style: TextStyle(fontSize: 21,),),
            ),
            actions: [
              Padding(
                padding: EdgeInsets.only(top: 12,right: 15),
              child: Icon(
                Icons.search,size: 28,),),

              PopupMenuButton(
                elevation: 10,
                padding: EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,

                itemBuilder: (context) =>[
                PopupMenuItem(
                   value: 1,
                  child: Text('New Group',
                    style: TextStyle(fontSize: 17,
                        fontWeight:FontWeight.w500),),
                ),
                  PopupMenuItem(
                    value: 2,
                    child: Text('New broadcast',
                      style: TextStyle(fontSize: 17,
                          fontWeight:FontWeight.w500),),
                  ),PopupMenuItem(
                    value: 3,
                    child: Text('Linked devices',
                      style: TextStyle(fontSize: 17,
                          fontWeight:FontWeight.w500),),
                  ),PopupMenuItem(
                    value: 4,
                    child: Text('Starred  messages',
                      style: TextStyle(fontSize: 17,
                          fontWeight:FontWeight.w500),),
                  ),PopupMenuItem(
                    value: 5,
                    child: Text('Settings',
                      style: TextStyle(fontSize: 17,
                          fontWeight:FontWeight.w500),),
                  )
              ],
              )
            ],
          ),
      ),
         body:Column(
           children: [
             Container(
               color: Color(0xff075e55),
               child:TabBar(

                 padding: EdgeInsets.all(22),
                 tabs: [
                   //tab1
                   Container(
                     child:Tab(
                       icon: Icon(Icons.camera_alt),
                     ) ,
                   ),
                   // tab2
                   Container(
                     width: 80,
                     child: Tab(
                       child: Row(
                         children: [
                           Text('Chats'),
                           Container(
                             width: 20,
                             height: 20,
                             child: Center(
                               child: Text('10',style: TextStyle(color: Color(0xff075e55),
                                 fontSize: 14
                               ),),
                             ),
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10)
                             ),
                           ),


                         ],
                       ),
                     ),
                   ),
                   // tab3
                   Container(width: 80,
                     child: Tab(
                       child: Text('Status'
                       ),
                     ),),
                   Container(width: 80,
                     child: Tab(
                       child: Text('Call'
                       ),
                     ),
                   ),
                 ],

               ) ,
             )
           ],
         ),
         ),
    );

  }
}
