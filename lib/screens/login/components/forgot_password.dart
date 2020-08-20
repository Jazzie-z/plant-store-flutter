
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: FlatButton(
          onPressed: () {},
          padding: EdgeInsets.only(right: 0),
          child: Text(
            'Forgot Password',
            style: kLabelStyle,
          )),
    );
  }
}
