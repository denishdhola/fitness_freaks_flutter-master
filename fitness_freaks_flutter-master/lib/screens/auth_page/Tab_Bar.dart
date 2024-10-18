

import 'package:fitness_freaks/screens/auth_page/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_segment/flutter_advanced_segment.dart';

class Tab_Bar extends StatefulWidget {
  const Tab_Bar({super.key});

  @override
  State<Tab_Bar> createState() => _Tab_BarState();
}

class _Tab_BarState extends State<Tab_Bar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            width: 250,
            margin: EdgeInsets.only(left: 25,right: 25),
            child: AdvancedSegment(
              controller: selectedSegment,
              segments: {
                Segment.login: Segment.login.label,
                Segment.signup: Segment.signup.label,
              },
              backgroundColor: Colors.white,
              borderRadius: BorderRadius.circular(10),
              sliderColor: Color(0xFF5705D2),
              activeStyle: TextStyle(color: Colors.white,fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}