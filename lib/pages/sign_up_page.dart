import 'package:centric_support_machine_test/constants/constant.dart';
import 'package:centric_support_machine_test/pages/home_page.dart';
import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            children: <Widget>[
              kHeight50,
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    "Let's Get Started",
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),
                  )),
              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text(
                    'Create an Account to Continue ',
                    style: TextStyle(fontSize: 15),
                  )),
              kHeight20,
              const Text('Name'),
              kHeight,
              TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.person,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Name',
                  isDense: true,
                  contentPadding: EdgeInsets.all(10),
                ),
              ),
              kHeight,
              const Text('Email'),
              kHeight,
              TextField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(),
                  isDense: true,
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'Enter Your Email Address',
                ),
              ),
              kHeight,
              const Text('Password'),
              kHeight,
              TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(),
                  hintText: 'Enter Your Password',
                  isDense: true, contentPadding: EdgeInsets.all(10),
                  // contentPadding: EdgeInsets.all(8),
                ),
              ),
              kHeight,
              Text('Confirm Password'),
              kHeight,
              const TextField(
                obscureText: true,
                decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock,
                    color: Colors.green,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye,
                    color: Colors.green,
                  ),
                  border: OutlineInputBorder(),
                  isDense: true,
                  contentPadding: EdgeInsets.all(10),
                  hintText: 'RE-Enter Your Password',
                ),
              ),
              kHeight20,
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.black,
                    ),
                  ),
                  const Text('OR'),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Container(
                      height: 1.0,
                      width: 130.0,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
              kHeight20,
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey,
                child: Row(children: [
                  const SizedBox(
                    width: 30,
                  ),
                  FaIcon(FontAwesomeIcons.google),
                  const SizedBox(
                    width: 30,
                  ),
                  const Text('Continue with Google')
                ]),
              ),
              kHeight,
              Container(
                height: 50,
                width: double.infinity,
                color: Colors.grey,
                child: Row(children: [
                  SizedBox(
                    width: 30,
                  ),
                  FaIcon(FontAwesomeIcons.facebook),
                  SizedBox(
                    width: 30,
                  ),
                  Text('Continue with FaceBook')
                ]),
              ),
              kHeight40,
              Container(
                  height: 50,
                  // padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text('Sign Up'),
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                  )),
              Row(
                children: <Widget>[
                  const Text('Already have an account?'),
                  TextButton(
                    child: const Text(
                      'Sign in',
                      style: TextStyle(fontSize: 15),
                    ),
                    onPressed: () {},
                  )
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
            ],
          )),
    );
  }
}
