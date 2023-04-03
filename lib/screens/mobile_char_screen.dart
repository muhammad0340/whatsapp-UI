import 'package:flutter/material.dart';

import '../color.dart';
import '../info.dart';
import '../widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          info[0]['name'].toString(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.video_call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.call),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ChatList(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.07,
            color: backgroundColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 5.0,
                vertical: 2,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: appBarColor,
                        borderRadius: BorderRadius.circular(25),
                      ),
                     child: TextField(
                       decoration: InputDecoration(
                         prefixIcon: Icon(Icons.emoji_emotions_outlined),
                         hintText: 'Message',
                         border: InputBorder.none,
                         suffixIcon: Padding(
                           padding: const EdgeInsets.only(right: 8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Icon(Icons.attach_file),
                               SizedBox(width: 6 ,),
                               Icon(Icons.camera_alt),
                             ],
                           ),
                         ),
                         contentPadding: EdgeInsets.all(10),
                       ),
                     ),
                    ),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: messageColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Icon(
                      Icons.mic,
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
