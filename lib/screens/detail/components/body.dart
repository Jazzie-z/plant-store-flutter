import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/detail/components/image_and_icon.dart';
import 'package:plant_app/screens/detail/components/title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(),
          TitleAndPrice(
            title: 'Bonsai',
            country: 'Japan',
            price: 520,
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: size.width / 2,
                height: 64,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20))),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: Text('Buy Now',
                      style: TextStyle(color: Colors.white, fontSize: 16)),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: Text('Description'),
                ),
              )
            ],
          ), 
        ],
      ),
    );
  }
}
