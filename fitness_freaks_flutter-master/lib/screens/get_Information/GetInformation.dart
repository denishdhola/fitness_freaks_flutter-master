import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:fitness_freaks/screens/dashboard/dashboard_screen.dart';
import 'package:fitness_freaks/screens/get_Information/variables.dart';
import 'package:fitness_freaks/utils/navigation/page_navigator.dart';
import 'package:flutter/material.dart';

import '../auth_page/button.dart';

class GetInformation extends StatefulWidget {
  const GetInformation({super.key});

  @override
  State<GetInformation> createState() => _GetInformationState();
}

class _GetInformationState extends State<GetInformation> {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  margin: const EdgeInsets.only(left: 15),
                  child: const Icon(Icons.arrow_back_ios_sharp)),
              Container(
                margin: const EdgeInsets.only(bottom: 14),
                child: CarouselIndicator(
                  color: const Color(0xFFCAB5E8),
                  activeColor: const Color(0xFF5705D2),
                  count: screens.length,
                  index: introPageIndex,
                ),
              ),
              Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: Text(
                    "${introPageIndex + 1}/${screens.length}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  )),
            ],
          ),
          Expanded(
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: PageView(
                controller: _pageController,
                children: screens,
                onPageChanged: (index) {
                  setState(() {
                    introPageIndex = index;
                  });
                },
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
      bottomNavigationBar: Button(
          onTap: () {
            if (introPageIndex < screens.length - 1) {
              // Ensure pageIndex is within bounds
              setState(() {
                introPageIndex++; // Increment pageIndex
              });
              _pageController.animateToPage(
                introPageIndex,
                duration: const Duration(
                    milliseconds: 500), // Adjust the duration as needed
                curve: Curves.ease,
              );
            } else {
              PageNavigator.pushPage(
                  context: context, page: const DashboardScreen());
            }
          },
          txt: 'Next'),
    );
  }
}
