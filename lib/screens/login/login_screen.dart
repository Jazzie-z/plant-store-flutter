import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/login/components/forgot_password.dart';
import 'package:plant_app/screens/login/components/input_with_title.dart';
import 'package:plant_app/screens/login/components/login_button.dart';
import 'package:plant_app/screens/login/components/remember_me.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
        child: Stack(
          children: <Widget>[
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Color(0xFF73AEF5),
                    Color(0xFF61A4F1),
                    Color(0xFF478DE0),
                    Color(0xFF398AE5),
                  ],
                      stops: [
                    0.1,
                    0.4,
                    0.7,
                    0.9
                  ])),
            ),
            Container(
              height: double.infinity,
              child: SingleChildScrollView(
                physics: AlwaysScrollableScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 50.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'OpenSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    InputWithTitle(
                      title: 'Email',
                      hint: 'Enter Your Email',
                      icon: Icons.email,
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    InputWithTitle(
                      title: 'Password',
                      hint: 'Enter Your Password',
                      icon: Icons.lock,
                      password: true,
                    ),
                    ForgotPassword(),
                    RememberMe(),
                    LoginButton(),
                    SignInWith(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ButtonWithIcon(
                            icon: 'assets/logos/facebook.jpg',
                          ),
                          ButtonWithIcon(
                            icon: 'assets/logos/google.jpg',
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: (){},
                      child: RichText(
                          text: TextSpan(children: [
                        TextSpan(
                            text: 'Don\'t have an Account? ',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: 'Sign Up',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold))
                      ]
                          )),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ButtonWithIcon extends StatelessWidget {
  const ButtonWithIcon({
    Key key,
    this.icon,
  }) : super(key: key);
  final String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black26, offset: Offset(0, 2), blurRadius: 6.0)
            ],
            image: DecorationImage(image: AssetImage(icon))),
      ),
    );
  }
}

class SignInWith extends StatelessWidget {
  const SignInWith({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text('-OR-',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Sign in with',
          style: kLabelStyle,
        )
      ],
    );
  }
}
