import 'package:flutter/material.dart';

import '../color.dart';
import '../info.dart';
import '../screens/mobile_char_screen.dart';
import 'chat_list.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child:
          ListView.builder(
            shrinkWrap: true,
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context){
                        return MobileChatScreen();
                      }));
                    } ,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        title: Text(
                          info[index]['name'].toString(),
                          style: TextStyle(),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(info[index]['message'].toString()),
                        ),
                        leading: CircleAvatar(
                          backgroundImage:
                              NetworkImage(info[index]["profilePic"].toString()),
                        ),
                        trailing: Text(
                          info[index]['time'].toString(),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  Divider(color: dividerColor,indent: 85,),
                ],
              );
            },
          ),



    );
  }
}
