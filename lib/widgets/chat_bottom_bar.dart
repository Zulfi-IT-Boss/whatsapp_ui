import 'package:flutter/material.dart';

class ChatBottomBar extends StatelessWidget {
  const ChatBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                children: [
                  Icon(Icons.emoji_emotions_outlined,
                    color: Colors.black38,
                    size: 30,),
                  SizedBox(width: 10,),
                  Expanded(flex: 2,
                    child: Container(
                      child: TextFormField(
                        style: TextStyle(fontSize: 19),
                        decoration: InputDecoration(
                          hintText: "Message",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Icon(Icons.attach_file_outlined,color: Colors.black38,),
                  SizedBox(width: 15,),
                  Icon(Icons.camera_alt,
                  color:  Colors.black38,
                  size: 30,)
                ],
              ),
            ),
          ),

          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Color(0xff00887a),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Icon(
              Icons.mic,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
