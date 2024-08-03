
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mytriptokashmir/widgets2/reviews_widget.dart';

import '../services/hero_tag.dart';
import 'detailed_info_widget.dart';
import 'hero_widget.dart';
import 'lat_lon_widget.dart';
import 'package:mytriptokashmir/models/location.dart';

class DetedPage extends StatelessWidget {
  final Location location;
  final Animation<double> animation;

  const DetedPage({
    required this.location,
    required this.animation,
    super.key,
  }) ;

  @override
  Widget build(BuildContext context) => Scaffold(
    extendBodyBehindAppBar: true,
    backgroundColor: Colors.white,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      //title: Text('INTERESTS'),
      //centerTitle: true,
      //actions: [
        //IconButton(
          //icon: Icon(Icons.close),
          //onPressed: Navigator.of(context).pop,
        //),
        //SizedBox(width: 10)
      //],
      //leading: Icon(Icons.search_outlined),
    ),
    body: Column(
      children: [
        Expanded(
          flex: 4,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox.expand(
                child: HeroWidget(
                  tag: HeroTag.image(location.urlImage),
                  child: Image.network(location.urlImage, fit: BoxFit.cover),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: LatLongWidget(location: location),
              ),
            ],
          ),
        ),
        DetailedInfoWidget(location: location),
        Expanded(
          flex: 5,
          child: ReviewsWidget(location: location, animation: animation),
        ),
      ],
    ),
  );
}