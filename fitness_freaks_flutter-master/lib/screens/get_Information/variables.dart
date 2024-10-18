import 'package:fitness_freaks/screens/get_Information/age/age.dart';
import 'package:fitness_freaks/screens/get_Information/gender/Gender.dart';
import 'package:flutter/material.dart';

int introPageIndex = 0;

List<Widget> screens = [
  Gender(),
  Age(),
  Container(color: Colors.green),
];

bool maleG = true;
bool femaleG = false;
