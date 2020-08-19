
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithMore extends StatelessWidget {
  const TitleWithMore({
    Key key,
    this.title,
    this.onPress
  }) : super(key: key);

  final String title;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          TitleWithUnderline(
            text: title,
          ),
          Spacer(),
          FlatButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              onPressed: onPress,
              color: kPrimaryColor,
              child: Text("More", style: TextStyle(color:Colors.white),))
        ],
      ),
    );
  }
}

class TitleWithUnderline extends StatelessWidget {
  const TitleWithUnderline({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 24,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: kDefaultPadding / 4),
              child: Text(text,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  margin: EdgeInsets.only(right: kDefaultPadding / 4),
                  height: 7,
                  color: kPrimaryColor.withOpacity(0.2),
                ))
          ],
        ));
  }
}
