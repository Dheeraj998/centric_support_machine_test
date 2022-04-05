import 'package:centric_support_machine_test/pages/home_page.dart';
import 'package:centric_support_machine_test/pages/sign_up_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SignUpPage(),
      routes: {
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
