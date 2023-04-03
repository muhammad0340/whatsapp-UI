import 'package:flutter/material.dart';

import '../color.dart';
import '../widgets/chat_list.dart';
import '../widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0.0,
          title: const Text("WhatsApp",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              ),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
            indicatorWeight: 4,
            labelColor: tabColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            tabs: [
              Tab(
                text: "Chats",
              ),
              Tab(
                text: "Status",
              ),
              Tab(
                text: "Calls",
              ),
            ],
          ),
        ),
        body:

        Column(
          children: [
            const Expanded(
              child: ContactList(),
            ),
            // Container(
            //   height: MediaQuery.of(context).size.height * 0.07,
            //   // width:50,
            //
            //   padding: EdgeInsets.all(10),
            //   decoration: BoxDecoration(
            //     //color: Colors.red,
            //     color: chatBarMassage,
            //     border: Border(
            //       bottom: BorderSide(color: dividerColor),
            //     ),
            //   ),
            //
            //   child: Row(
            //     children: [
            //       IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.emoji_emotions_outlined,
            //           color: Colors.grey,
            //         ),
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.attach_file,
            //           color: Colors.grey,
            //         ),
            //       ),
            //       Expanded(
            //         child: Padding(
            //           padding: const EdgeInsets.only(
            //             right: 15.0,
            //             left: 10,
            //           ),
            //           child: TextField(
            //             decoration: InputDecoration(
            //               fillColor: searchBarColor,
            //               filled: true,
            //               hintText: 'type a message',
            //               border: OutlineInputBorder(
            //                 borderRadius: BorderRadius.circular(20),
            //                 borderSide: BorderSide(
            //                   width: 0,
            //                   style: BorderStyle.none,
            //                 ),
            //               ),
            //               contentPadding: EdgeInsets.only(left: 20),
            //             ),
            //           ),
            //         ),
            //       ),
            //       IconButton(
            //         onPressed: () {},
            //         icon: Icon(
            //           Icons.mic,
            //           color: Colors.grey,
            //         ),
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          backgroundColor: tabColor,
          child: Icon(Icons.comment,color: Colors.white,),
        ),
      ),
    );
  }
}
