import 'package:flutter/material.dart';

Widget pageViewIntro(String imgPath,String introName,String line1,String line2){
  return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.all(65),
            child: Image.asset(imgPath)),
            Text(introName,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w500),),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Text(line1,style: TextStyle(color: Colors.grey,fontSize: 15),)),
              Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 15,right: 15),
              child: Text(line2,style: TextStyle(color: Colors.grey,fontSize: 15),))
        ],
      );
}