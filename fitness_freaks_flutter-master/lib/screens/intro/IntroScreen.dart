import 'package:fitness_freaks/screens/intro/SkipButton.dart';
import 'package:fitness_freaks/screens/intro/variables.dart';
import 'package:flutter/material.dart';
import 'Common.dart';
import 'Floating_action.dart';

class IntroScreen1 extends StatefulWidget {
  const IntroScreen1({super.key});

  @override
  State<IntroScreen1> createState() => _IntroScreen1State();
}

class _IntroScreen1State extends State<IntroScreen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            controller: pageIntroController,
            onPageChanged: (int page) {
              setState(() {
                activePage = page;
              });
            },
            itemCount: pages.length,
            itemBuilder: (BuildContext context, int index) {
              return pages[index % pages.length];
            },
          ),
          Positioned(
            bottom: 160,
            left: 0,
            right: 0,
            height: 20,
            child: Container(
              color: Colors.transparent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    pages.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5),
                          child: InkWell(
                            onTap: () {
                              pageIntroController.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: CircleAvatar(
                              radius: 4,
                              backgroundColor: activePage == index
                                  ? Color(0xFF5705D2)
                                  : Color(0xFFBCAAD7),
                            ),
                          ),
                        )),
              ),
            ),
          ),
          const Positioned(
            bottom: 30,
            left: 20,
            child: SkipButton(),
          ),
        ],
      ),
      floatingActionButton: Floating_Action(),
    );
  }
}
