import 'package:flutter/material.dart';

Widget Button({required VoidCallback onTap, required String txt}) {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: onTap,
            child: Container(
              height: 44,
              margin: EdgeInsets.only(left: 25, right: 25,bottom: 15),
              decoration: BoxDecoration(
                  color: Color(0xFF5705D2),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(3, 3),
                      blurRadius: 5,
                      color: Colors.grey,
                    ),
                  ]),
              child: Center(
                  child: Text(
                txt,
                style: TextStyle(color: Colors.white, fontSize: 20),
              )),
            ),
          ),
        ),
      ],
    ),
  );
}
