import 'package:centric_support_machine_test/constants/constant.dart';
import 'package:centric_support_machine_test/constants/messages.dart';
import 'package:flutter/material.dart';

class MessageSectionPage extends StatelessWidget {
  const MessageSectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text('John Doe', style: TextStyle(color: Colors.green)),
        actions: [
          Icon(Icons.lock_clock, color: Colors.black),
          SizedBox(
            width: 10,
          ),
          Center(
              child: Text('07:59:55', style: TextStyle(color: Colors.black))),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: ListView(
        children: [
          kHeight,
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                'You have 8 hours to set up a date and time to recieve the item from the donator'),
          ),
          kHeight20,
          Divider(
            thickness: 2,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: messages.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              // return Column(
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: [
              //     Padding(
              //       padding: const EdgeInsets.all(15.0),
              //       child: Container(
              //           padding: EdgeInsets.all(15),
              //           decoration: BoxDecoration(
              //               color: Colors.green,
              //               borderRadius: BorderRadius.only(
              //                 topLeft: Radius.circular(10),
              //               )),
              //           child: Column(
              //             children: [
              //               Text(
              //                 style: TextStyle(),
              //               ),
              //               Text(
              //                 style: TextStyle(),
              //               ),
              //             ],
              //           )),
              //     ),
              //   ],
              // );
              return Container(
                padding:
                    EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
                child: Align(
                  alignment: (messages[index].messageType == "receiver"
                      ? Alignment.topLeft
                      : Alignment.topRight),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: (messages[index].messageType == "receiver"
                          ? BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))
                          : BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10))),
                      color: (messages[index].messageType == "receiver"
                          ? Colors.green
                          : Colors.black),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      messages[index].messageContent,
                      style: TextStyle(
                        fontSize: 15,
                        color: (messages[index].messageType == "receiver"
                            ? Colors.white
                            : Colors.white),
                      ),
                    ),
                  ),
                ),
              );
            },
          )),
        ],
      ),
    );
  }
}
