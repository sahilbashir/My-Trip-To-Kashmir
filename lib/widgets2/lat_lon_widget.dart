


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/models/location.dart';

import '../misc/colors.dart';

class LatLongWidget extends StatelessWidget {
  final Location location;

  const LatLongWidget({
    required this.location,
    super.key
  }) ;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
        location.latitude,
        style: //TextStyle(color: AppColors.textColor1),
      GoogleFonts.roadRage(color: Colors.white,fontSize: 20)
      ),
      Icon(Icons.location_on, color:AppColors.textColor1),
      Text(
        location.longitude,
        style:// TextStyle(color: AppColors.textColor1),
        GoogleFonts.roadRage(color: Colors.white,fontSize: 20)
      )
    ],
  );
}