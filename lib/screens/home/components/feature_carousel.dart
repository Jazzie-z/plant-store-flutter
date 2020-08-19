import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeatureCarousel extends StatelessWidget {
  const FeatureCarousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FeaturePlantCard(image: 'assets/images/bottom_img_1.png',onPress: (){},),
          FeaturePlantCard(image: 'assets/images/bottom_img_2.png',onPress: (){},),
        ],
      ),
    );
  }
}

class FeaturePlantCard extends StatelessWidget {
  const FeaturePlantCard({
    Key key,
    this.image,
    this.onPress
  }) : super(key: key);

  final String image;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
            left: kDefaultPadding,
            top: kDefaultPadding / 2,
            bottom: kDefaultPadding / 2),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image))),
      ),
    );
  }
}
