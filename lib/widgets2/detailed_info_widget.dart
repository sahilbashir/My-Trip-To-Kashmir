import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:mytriptokashmir/models/location.dart';
import 'package:mytriptokashmir/widgets2/star_widget.dart';

import '../services/hero_tag.dart';
import 'hero_widget.dart';
class DetailedInfoWidget extends StatelessWidget {
  final Location location;

  const DetailedInfoWidget({
    required this.location,
    super.key,
  }) ;

  @override
  Widget build(BuildContext context) => Padding(
    padding: const EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeroWidget(
          tag: HeroTag.addressLine1(location),
          child: Text(location.addressLine1,style:
            GoogleFonts.rowdies(fontSize: 22),),
        ),
        SizedBox(height: 8),
        HeroWidget(
          tag: HeroTag.addressLine2(location),
          child: Text(location.addressLine2,style:
            GoogleFonts.rowdies(fontSize: 12),),
        ),
        SizedBox(height: 8),
        HeroWidget(
          tag: HeroTag.stars(location),
          child: StarsWidget(stars: location.starRating),
        ),
      ],
    ),
  );
}