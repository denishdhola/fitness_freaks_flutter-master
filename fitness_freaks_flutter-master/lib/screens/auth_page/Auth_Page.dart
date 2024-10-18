

import 'package:fitness_freaks/screens/auth_page/Signup.dart';
import 'package:flutter/material.dart';

import '../otp_screen/Otp_Screen.dart';
import 'Login.dart';
import 'Tab_Bar.dart';
import 'button.dart';
import 'variables.dart';

class Auth_Page extends StatefulWidget {
  const Auth_Page({super.key});

  @override
  State<Auth_Page> createState() => _Auth_PageState();
}

class _Auth_PageState extends State<Auth_Page> {
  // final _selectedSegment = ValueNotifier(Segment.login);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
          ),
          Tab_Bar(),
          SizedBox(height: 20),
          ValueListenableBuilder(
            valueListenable: selectedSegment,
            builder: (context, selectedSegment, _) {
              return selectedSegment.isLogin ? Login() : Signup();
            },
          ),
          SizedBox(height: 50,),
          Button(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return Otp_Screen();
                },
              ));
            },
            txt: 'Login',
          ),
        ],
      ),
    );
  }
}
