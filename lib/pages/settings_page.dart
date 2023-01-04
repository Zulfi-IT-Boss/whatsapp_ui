import 'package:flutter/material.dart';
class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(title: const Padding(
        padding: EdgeInsets.only(left: 10),

        child: Text('Settings',style: TextStyle(fontSize: 18),),
      ),
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon:const Icon(Icons.arrow_back),
            //replace with our own icon data.
          )
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 15),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('assets/images/1.jpg',width: 65,height: 65,),
                    ),
                    Padding(
                        padding:const EdgeInsets.only(left: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Programmer',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                        SizedBox(height: 8,),
                        Text('Hey there,I am using Whatsapp.',style: TextStyle(fontSize:15,fontWeight: FontWeight.bold,color: Colors.black45 ),),
                      ],
                    ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.key),
                ),
                title: Text("Account",style: TextStyle(fontSize: 17),),
                subtitle: Text('Privacy,security,change number',style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.message_sharp),
                ),
                title: Text("Chats",style: TextStyle(fontSize: 17),),
                subtitle: Text('Theme,wallpapers,chat history',style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.notifications),
                ),
                title: Text("Notifications",style: TextStyle(fontSize: 17),),
                subtitle: Text('Messages,group & call tones',style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.person),
                ),
                title: Text("Storage and Data",style: TextStyle(fontSize: 17),),
                subtitle: Text('Network usage,auto download',style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.help_outline),
                ),
                title: Text("Help",style: TextStyle(fontSize: 17),),
                subtitle: Text('Help centre,contact us,privacy policy',style: TextStyle(fontSize: 15)),
              ),
              const ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Icon(Icons.people_alt),
                ),
                title: Text("Invite a Frind",style: TextStyle(fontSize: 17),),
                subtitle: Text('Privacy,security,change number',style: TextStyle(fontSize: 15)),
              ),
              Padding(padding: EdgeInsets.symmetric(vertical: 60),
              child: Column(children: [
                Text('from',
                  style: TextStyle(fontSize: 15),),
                Text('Facebook',
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ],),
              )
            ],
          ),
        ),
      ),
    );
  }
}
