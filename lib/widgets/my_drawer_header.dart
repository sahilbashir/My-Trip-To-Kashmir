import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:mytriptokashmir/widgets/app_large_text.dart';
import 'package:mytriptokashmir/widgets/app_text.dart';

class MyHeaderDrawer extends StatefulWidget {
  const MyHeaderDrawer({super.key});

  @override
  State<MyHeaderDrawer> createState() => _MyHeaderDrawerState();
}

class _MyHeaderDrawerState extends State<MyHeaderDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.mainColor,
      width: double.infinity,
      height: 200,
      padding: EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10),
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage("https://sahilbashir.github.io/MyTripToKashmirServer/images/sahil.jpg"),
              )
            ),
          ),

          AppLargeText(text: "Sahil Bashir",color: Colors.white,),
          AppText(text: "sahilbhat9776@gmail.com",color: Colors.white,),
        ],
      ),
    );
  }
}
