import 'package:fitness_freaks/screens/get_Information/gender/round.dart';
import 'package:flutter/material.dart';
import '../variables.dart';

class Gender extends StatefulWidget {
  const Gender({super.key});

  @override
  State<Gender> createState() => _GenderState();
}

class _GenderState extends State<Gender> {
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
              "Select Gender",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    round(
                      "assets/pics/male.jpg",
                      'Male',
                      maleG,
                      onTap: () {
                        maleG = true;
                        femaleG = false;
                        setState(() {});
                      },
                    ),
                    SizedBox(height: 50,),
                    round(
                      "assets/pics/female.jpg",
                      'Female',
                      femaleG,
                      onTap: () {
                        femaleG = true;
                        maleG = false;
                        setState(() {});
                      },
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(child: Container()),
        ],
      ),
    );
  }
}
