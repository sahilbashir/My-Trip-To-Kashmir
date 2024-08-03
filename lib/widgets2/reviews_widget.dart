
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/animation/animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mytriptokashmir/misc/colors.dart';
import 'package:mytriptokashmir/models/review.dart';

import '../services/hero_tag.dart';
import '../services/locations.dart';
import 'hero_widget.dart';
import 'package:mytriptokashmir/models/location.dart';
class ReviewsWidget extends StatelessWidget {
  final Location location;
  final Animation<double> animation;

  const ReviewsWidget({
    required this.location,
    required this.animation,
    super.key,
  }) ;

  @override
  Widget build(BuildContext context) => ListView.separated(
      itemCount: location.reviews.length,
      padding: EdgeInsets.all(16),
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        final review = location.reviews[index];

        return AnimatedBuilder(
          animation: animation,
          builder: (context, child) => FadeTransition(
            opacity: CurvedAnimation(
              parent: animation,
              curve: Interval(0.2, 1, curve: Curves.easeInExpo),
            ),
            child: child,
          ),
          child: buildReview(review),
        );
      });

  Widget buildReview(Review review) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 8),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            HeroWidget(
              tag: HeroTag.avatar(review, locations.indexOf(location)),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.black12,
                backgroundImage: AssetImage(review.urlImage,),
              ),
            ),
            Text(
              review.username,
              style: GoogleFonts.rowdies(fontSize: 22,color: AppColors.mainColor),
            ),
            SizedBox(),
            //Text(
              //review.date,
              //style: TextStyle(fontStyle: FontStyle.italic),
            //),
            //Icon(Icons.thumb_up_alt_outlined, size: 14)
          ],
        ),
        SizedBox(height: 8),
        Text(
          review.description,
          style:
          GoogleFonts.rowdies()
          //TextStyle(color: Colors.black54),
        ),
      ],
    ),
  );
}