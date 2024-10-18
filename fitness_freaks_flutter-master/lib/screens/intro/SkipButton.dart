import 'package:flutter/material.dart';

import '../auth_page/Auth_Page.dart';

class SkipButton extends StatefulWidget {
  const SkipButton({super.key});

  @override
  State<SkipButton> createState() => _SkipButtonState();
}

class _SkipButtonState extends State<SkipButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return Auth_Page();
          },
        ));
      },
      child: Container(
        child: Text(
          "Skip",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
    );
  }
}
