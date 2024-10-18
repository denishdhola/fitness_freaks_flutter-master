import 'package:flutter/material.dart';

import 'Common.dart';

final List<Widget> pages = [
    pageViewIntro("assets/pics/i1.jpg", "Indoor Bike",
        "A Device used as exercise", "equipment for indoor cycling"),
    pageViewIntro(
        "assets/pics/i2.jpg",
        "Healthy habit",
        "Occurring behaviour that is advantageous",
        "to your mental or physical health."),
    pageViewIntro(
        "assets/pics/i3.jpg",
        "Activity Tracker",
        "Tracking fitness metrics involves monitoring",
        "activities like distance walked/run"),
  ];
  
  int activePage = 0;

final PageController pageIntroController = PageController(initialPage: 0);