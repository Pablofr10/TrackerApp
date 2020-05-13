import 'package:flutter/material.dart';
import 'package:iet_sorveteria/pages/login/login_page.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashPage extends StatelessWidget {

  bool mostrar = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        SplashScreen(
          seconds: 3,
          backgroundColor: Theme.of(context).primaryColor,
          navigateAfterSeconds: LoginPage(),
          loaderColor: Colors.transparent,
        ),
        Container(
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/login_page.png"),
              fit: BoxFit.none,
            ),
          ),
        ),
      ],
    );
  }
}
