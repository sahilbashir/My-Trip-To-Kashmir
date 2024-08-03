

//ADDED BY MEEEEEEEEEEEEE

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget homeButtons({width,height,icon,String?title,onPress}){

  return  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(icon,width: 26,),
      10.heightBox,
      Text(title!,style: GoogleFonts.zenAntique(
        color: Colors.grey,
      ),)
      //title!.text.color(Colors.grey).make(),
    ],
  ).box.rounded.white.size(width, height).make();

}