import 'package:flutter/material.dart';

Widget round(String imgPath, txt, bool gender,{required VoidCallback onTap}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      InkWell(
        onTap: onTap,
        child: Container(
          height: 150,
          width: 150,
          decoration: BoxDecoration(
            color: gender ? Color(0xFF5705D2) : Color(0xFFFFFFFF),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                blurRadius: 8,
                color: Colors.grey.shade400,
                offset: Offset(3, 3),
                spreadRadius: 1,
              ),
            ],
          ),
          // padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    imgPath,
                    height: 80,
                  ))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    txt,
                    style: TextStyle(
                        color:gender ? Colors.white : Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    ],
  );
}
