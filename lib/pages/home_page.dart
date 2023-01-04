import 'package:flutter/material.dart';
import 'package:whatsapp_ui/widgets/calls_widget.dart';
import 'package:whatsapp_ui/widgets/chats_widget.dart';
import 'package:whatsapp_ui/widgets/status_widget.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        initialIndex: 1,
        length: 4,
        child: Scaffold(
      appBar:
      PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.only(top: 21),
              child: Text('WhatsApp',style: TextStyle(fontSize: 21,),),
            ),
            actions: [
              const Padding(
                padding: EdgeInsets.only(top: 12,right: 15),
              child: Icon(
                Icons.search,size: 28,),),

              PopupMenuButton(
                  onSelected:(Selected)
                  {
                    //if someone click on value no. 5 means click on setting button
                    if(Selected==5){
                      Navigator.pushNamed(context,"settingsPage");
                    }
                      } ,                elevation: 10,
                padding: const EdgeInsets.symmetric(vertical: 20),
                iconSize: 28,
                itemBuilder: (context) =>[
                const PopupMenuItem(
                   value: 1,
                  child: Text('New Group',
                    style: TextStyle(fontSize: 17,
                        fontWeight:FontWeight.w500),),
                ),
                  const PopupMenuItem(
                    value: 2,
                    child: Text('New broadcast',
                      style: TextStyle(fontSize: 17,
                          fontWeight:FontWeight.w500),),
                  ),const PopupMenuItem(
                    value: 3,
                    child: Text('Linked devices',
                      style: TextStyle(fontSize: 17,
                          fontWeight:FontWeight.w500),),
                  ),const PopupMenuItem(
                    value: 4,
                    child: Text('Starred  messages',
                      style: TextStyle(fontSize: 17,
                          fontWeight:FontWeight.w500),),
                  ),const PopupMenuItem(
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
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Container(
               color: const Color(0xff075e55),
               child:TabBar(


                 tabs: [
                   //tab1
                   Container(
                     child:const Tab(
                       icon: Icon(Icons.camera_alt,size: 25,),
                     ) ,
                   ),
                   // tab2
                   Container(
                     width: 80,
                     child: Tab(
                       child: Row(
                         children: [
                           const Text('Chats'),
                           const SizedBox(width: 5,),
                           Container(
                             alignment: Alignment.center,
                             width: 22,
                             height: 22,
                             child: const Text('10',style: TextStyle(color: Color(0xff075e55),
                               fontSize: 12
                             ),),
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
                     child: const Tab(
                       child: Text('Status'
                       ),
                     ),),
                   //tab 4
                   Container(width: 80,
                     child: const Tab(
                       child: Text('Call'
                       ),
                     ),
                   ),
                 ],
               ) ,
             ),
             Flexible(
                 child: TabBarView(
               children: [
                 // tab1 Camera
                 Container(color: Colors.black,
                 ),
                 // tab2
                 Container(
                   child: ChatsWidget(),
                 ),
                 // tab3
                 Container(
                   child:const StatusWidget(),
                 ),
                 // tab4
                 Container(
                  child: const CallsWidget(),
                 )
             ],))
           ],
         ),
         ),
    );

  }
}
