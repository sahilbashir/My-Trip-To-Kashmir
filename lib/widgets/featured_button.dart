

//ADDED BY MEEEEEEEEEEEEEEEE
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

Widget featuredButton({String? title,icon,}){

  return Row(
    children: [
      Image.asset(icon,width: 60,fit: BoxFit.fill).box.roundedFull.clip(Clip.antiAlias).height(100).make(),
      10.widthBox,
      //title!.text.color(Colors.black54).make(),
    Text(title!,style: GoogleFonts.zenAntique(
      color: Colors.black54,fontSize: 15
    ),)
    ],
  ).box.width(200).margin(EdgeInsets.symmetric(horizontal: 4)).white.roundedSM.padding(EdgeInsets.all(4)).outerShadowSm.make();
}