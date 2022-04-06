import 'package:flutter/material.dart';

import 'package:centric_support_machine_test/constants/constant.dart';
import 'package:centric_support_machine_test/constants/lists/list.dart';

class HomeSectionPage extends StatelessWidget {
  const HomeSectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.more_time,
          color: Color.fromARGB(31, 35, 32, 32),
        ),
        title: Text(
          "LeftOver",
          style: TextStyle(color: Colors.green),
        ),
        actions: [
          SizedBox(
            child: Container(
              color: Colors.green,
              child: Text(
                '',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => SinglePost(
          index: index,
        ),
        itemCount: 10,
      ),
    );
  }
}

class SinglePost extends StatefulWidget {
  final int index;
  const SinglePost({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<SinglePost> createState() => _SinglePostState();
}

class _SinglePostState extends State<SinglePost> {
  bool like = false;
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
      child: Container(
        height: 380,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          border: Border.all(color: Colors.black12),
        ),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(posts[widget.index]['image']),
              ),
              title: Text(
                posts[widget.index]['name'],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(posts[widget.index]['time']),
              trailing: Icon(Icons.more_vert),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Text(
                  'Lore mdahdua asdfas wdfrqwrjio wqrdhiqwr iafha i aifhais ik asfkhsa kasf kf skas fkhsa'),
            ),
            kHeight,
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
              child: Container(
                height: 180,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(posts[widget.index]['postimage'] != null
                          ? posts[widget.index]['postimage']
                          : 'assets/images/food11.jpg'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            kHeight,
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          like = !like;
                          if (like == true) {
                            number += 1;
                          }
                        });
                      },
                      child: Icon(
                          like != false
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.red)),
                  SizedBox(
                    width: 10,
                  ),
                  Text(number.toString()),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                          barrierDismissible: false,
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Column(
                                children: [
                                  Row(
                                    children: [
                                      Spacer(),
                                      TextButton(
                                          onPressed: (() {
                                            Navigator.pop(context);
                                          }),
                                          child: Text('cancel'))
                                    ],
                                  ),
                                  CircleAvatar(
                                    radius: 35,
                                    child:
                                        Icon(Icons.person, color: Colors.white),
                                  ),
                                  kHeight,
                                  Text(
                                    'AWESOME',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              content: Text(
                                'Thank you for Your contribution to the community',
                                style: TextStyle(fontWeight: FontWeight.w100),
                              ),
                            );
                          });
                    },
                    child: Container(
                      height: 23,
                      width: 60,
                      color: Colors.green,
                      child: Center(
                          child: Text(
                        'claim',
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
