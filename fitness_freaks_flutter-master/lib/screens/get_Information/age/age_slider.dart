import 'package:flutter/material.dart';

class AgeSlider extends StatefulWidget {
  const AgeSlider({super.key});

  @override
  State<AgeSlider> createState() => _AgeSliderState();
}

class _AgeSliderState extends State<AgeSlider> {
  int _currentPage = 18; // Initial age value
  PageController _pageController =
      PageController(initialPage: 18, viewportFraction: 0.15);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      margin: EdgeInsets.only(left: 15, right: 15),
      decoration: BoxDecoration(
        color: Color(0xFFEEEEEE),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 5,
            spreadRadius: 0,
            color: Colors.grey.shade400,
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.expand_more,
                size: 35,
              ),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 101,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    itemBuilder: (BuildContext context, int index) {
                      final double fontSize =
                          index == _currentPage ? 26.0 : 20.0;
                      return Center(
                        child: Text(
                          '$index',
                          style: TextStyle(
                              fontSize: fontSize,
                              color: index == _currentPage
                                  ? Color(0xFF5705D2)
                                  : Color(0xFF987BFE)),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.expand_less,
                size: 35,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
