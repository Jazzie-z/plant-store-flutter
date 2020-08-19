import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/detail/detail_screen.dart';

class RecommendedCarousel extends StatelessWidget {
  const RecommendedCarousel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          RecommendedPlantCard(
            image: "assets/images/image_1.png",
            title: 'Aloe',
            country: 'Russia',
            price: 240,
            onPress: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailScreen()));
            },
          ),
          RecommendedPlantCard(
            image: "assets/images/image_2.png",
            title: 'Money plant',
            country: 'Canada',
            price: 240,
            onPress: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailScreen()));
            },
          ),
          RecommendedPlantCard(
            image: "assets/images/image_3.png",
            title: 'Bonsai',
            country: 'Japan',
            price: 240,
            onPress: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>DetailScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard({
    Key key,
    this.image,
    this.title,
    this.country,
    this.price,
    this.onPress,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.4,
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: onPress,
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(0.23))
                  ]),
              child: Row(
                children: <Widget>[
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "$title\n".toUpperCase(),
                            style: Theme.of(context).textTheme.button),
                        TextSpan(
                            text: country.toUpperCase(),
                            style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                      ])),
                  Spacer(),
                  Text('\$$price',
                      style: Theme.of(context)
                          .textTheme
                          .button
                          .copyWith(color: kPrimaryColor))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
