import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

Widget detailsCard({width,String? count,String? title}){

  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
children: [
  count!.text.color(Colors.black).size(16).make(),
  5.heightBox,
  title!.text.color(Colors.black).size(16).make(),
],

  ).box.white.rounded.width(width).height(80).padding(EdgeInsets.all(4)).make();


}