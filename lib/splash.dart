// import 'package:app/splash.dart';
import 'package:app/screen/hero.dart';
import 'package:flutter/material.dart';
import 'package:app/main.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {

  // This widget is the root of your application.
  @override
 Widget build(BuildContext context) {
        
       
    return new SplashScreen(
      seconds: 4,
      navigateAfterSeconds: new HeroAnimation(),    
      image:  Image.asset('images/icon.png'),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
     
      loaderColor: Colors.yellow[500]
    );
  }
}