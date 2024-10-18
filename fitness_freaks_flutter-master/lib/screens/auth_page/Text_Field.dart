import 'package:flutter/material.dart';

Widget Text_Field(String labeltxt) {
  return Row(
    children: [
      Expanded(
          child: Container(
            height: 50,
              margin: EdgeInsets.only(left: 25, right: 25),
              padding: EdgeInsets.only(left: 10, right: 5),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 3),
                      blurRadius: 5,
                      color: Colors.grey,
                    ),
                  ]),
              child: TextField(
                decoration: InputDecoration(
                  labelText: labeltxt,
                  border: InputBorder.none,
                ),
              ))),
    ],
  );
}
