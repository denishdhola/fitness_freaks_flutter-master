import 'package:flutter/material.dart';

class ProfilePhotoView extends StatelessWidget {
  const ProfilePhotoView({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: MediaQuery.of(context).size.height / 2.4,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
        ),
      )),
    );
  }
}
