


import 'package:mytriptokashmir/services/reviews.dart';
import 'package:mytriptokashmir/models/location.dart';

List<Location> locations = [
  Location(
    name: 'Gulmarg',
    urlImage: 'https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg05.jpg',
    addressLine1: 'Gulmarg Baramulla',
    addressLine2: 'Kashmir, India',
    starRating: 5,
    latitude: 'NORTH LAT 24',
    longitude: 'EAST LNG 17',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Pahalgam',
    urlImage: 'https://sahilbashir.github.io/MyTripToKashmirServer/images/gulmarg/gulmarg03.jpg',
    addressLine1: 'Pahalgam Anantnag',
    addressLine2: 'Kashmir, India',
    starRating: 4,
    latitude: 'SOUTH LAT 14',
    longitude: 'EAST LNG 27',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Srinagar',
    urlImage: 'https://sahilbashir.github.io/MyTripToKashmirServer/images/shikara/shikara02.jpeg',
    addressLine1: 'Srinagar City',
    addressLine2: 'Kashmir, India',
    starRating: 4,
    latitude: 'NORTH LAT 24',
    longitude: 'WEST LNG 08',
    reviews: Reviews.allReviews,
  ),
  Location(
    name: 'Sonamarg',
    urlImage: 'https://sahilbashir.github.io/MyTripToKashmirServer/images/rafting/rafting05.jpeg',
    addressLine1: 'Sonamarg  Gandelbal ',
    addressLine2: 'Kashmir, India',
    starRating: 3,
    latitude: 'SOUTH LAT 39',
    longitude: 'WEST LNG 41',
    reviews: Reviews.allReviews,
  ),
];