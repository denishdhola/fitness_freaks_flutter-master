// import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     home: AgeSlider(),
//   ));
// }

// class AgeSlider extends StatefulWidget {
//   @override
//   _AgeSliderState createState() => _AgeSliderState();
// }

// class _AgeSliderState extends State<AgeSlider> {
//   int _currentPage = 18; // Initial age value
//   PageController _pageController =
//       PageController(initialPage: 18, viewportFraction: 0.15);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Age Slider'),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             child: PageView.builder(
//               controller: _pageController,
//               itemCount: 101,
//               onPageChanged: (int page) {
//                 setState(() {
//                   _currentPage = page;
//                 });
//               },
//               itemBuilder: (BuildContext context, int index) {
//                 final double fontSize =
//                     index == _currentPage ? 36.0 : 24.0;
//                 return Center(
//                   child: Text(
//                     '$index',
//                     style: TextStyle(fontSize: fontSize),
//                   ),
//                 );
//               },
//             ),
//           ),
//           SizedBox(height: 20),
//           Text(
//             'Selected Age: $_currentPage',
//             style: TextStyle(fontSize: 18),
//           ),
//         ],
//       ),
//     );
//   }
// }
