import 'package:flutter/material.dart';

import 'Text_Field.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text_Field("Enter Mobile Number"),
      ],
    );
  }
}
