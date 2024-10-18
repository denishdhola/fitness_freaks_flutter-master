import 'package:flutter/material.dart';

import '../variables.dart';
import 'age_slider.dart';
import 'roundforage.dart';

class Age extends StatefulWidget {
  const Age({super.key});

  @override
  State<Age> createState() => _AgeState();
}

class _AgeState extends State<Age> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: Text(
              "Select Age",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 4,
            child: maleG
                ? roundForAge('assets/pics/male.jpg', 'Male', maleG)
                : roundForAge(
                    'assets/pics/female.jpg',
                    'Female',
                    femaleG,
                  ),
          ),
          AgeSlider(),
          Expanded(flex: 2, child: Container()),
        ],
      ),
    );
  }
}
