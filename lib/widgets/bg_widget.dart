//ADDED BY MEEEEEEEEEEEEEEEEEEEEEEEEE





import 'package:flutter/cupertino.dart';

Widget bgWidget({Widget?child}){

  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/img/bg.png"),fit: BoxFit.fill
        )),
    child: child,
  );

}