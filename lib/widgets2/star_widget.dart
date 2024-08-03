
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytriptokashmir/misc/colors.dart';

class StarsWidget extends StatelessWidget {
  final int stars;

  const StarsWidget({
    required this.stars,
    super. key,
  }) ;

  @override
  Widget build(BuildContext context) {
    final allStars = List.generate(stars, (index) => index);

    return Row(
      children: allStars
          .map((star) => Container(
        margin: EdgeInsets.only(right: 4),
        child: Icon(Icons.star_rate, size: 18, color: AppColors.starColor),
      ))
          .toList(),
    );
  }
}