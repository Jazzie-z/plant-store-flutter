import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/feature_carousel.dart';
import 'package:plant_app/screens/home/components/header_search_box.dart';
import 'package:plant_app/screens/home/components/recommended_carousel.dart';
import 'package:plant_app/screens/home/components/title_with_more.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearch(size: size),
          TitleWithMore(
            title: 'Recommended',
            onPress: () {},
          ),
          RecommendedCarousel(),
          TitleWithMore(
            title: 'Featured plants',
            onPress: () {},
          ),
          FeatureCarousel(),
          SizedBox(height: kDefaultPadding,)
        ],
      ),
    );
  }
}

