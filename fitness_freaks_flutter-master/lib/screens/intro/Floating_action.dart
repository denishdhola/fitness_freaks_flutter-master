import 'package:fitness_freaks/screens/intro/variables.dart';
import 'package:flutter/material.dart';

import '../auth_page/Auth_Page.dart';

class Floating_Action extends StatefulWidget {
  const Floating_Action({super.key});

  @override
  State<Floating_Action> createState() => _Floating_ActionState();
}

class _Floating_ActionState extends State<Floating_Action> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
        if (activePage < 2) {
          activePage++;
        }else{
          Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (context) {
            return Auth_Page();
          },
        ));
        }
        setState(() {});
        pageIntroController.animateToPage(
                activePage,
                duration: Duration(
                    milliseconds: 500), // Adjust the duration as needed
                curve: Curves.ease,
              );
      },
        child: Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
          color: Color(0xFF5705D2),
          borderRadius: BorderRadius.circular(10),
          ),
          child: Icon(Icons.chevron_right,color: Colors.white,size: 30),
        ),
      );
  }
}