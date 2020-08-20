
import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class InputWithTitle extends StatelessWidget {
  const InputWithTitle(
      {Key key, this.title, this.hint, this.icon, this.password = false})
      : super(key: key);

  final title, hint, icon, password;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(title, style: kLabelStyle),
        SizedBox(
          height: 10.0,
        ),
        Container(
          alignment: Alignment.centerLeft,
          decoration: kBoxDecorationStyle,
          height: 60.0,
          child: TextField(
            obscureText: password,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white, fontFamily: 'OpenSans'),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(
                  icon,
                  color: Colors.white,
                ),
                hintText: hint,
                hintStyle: kHintTextStyle),
          ),
        )
      ],
    );
  }
}
