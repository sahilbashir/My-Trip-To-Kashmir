

import 'package:mytriptokashmir/services/locations.dart';
import 'package:mytriptokashmir/services/reviews.dart';
import 'package:mytriptokashmir/models/location.dart';
import 'package:mytriptokashmir/models/review.dart';
class HeroTag {
  static String image(String urlImage) => urlImage;

  static String addressLine1(Location location) =>
      location.name + location.addressLine1;

  static String addressLine2(Location location) =>
      location.name + location.addressLine2;

  static String stars(Location location) =>
      location.name + location.starRating.toString();

  static String avatar(Review review, int position) =>
      review.urlImage + position.toString();
}