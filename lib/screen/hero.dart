import 'package:app/ms/it.dart';
import 'package:app/page1.dart';
import 'package:app/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import '../page2.dart';
import 'photo.dart';
import 'package:flutter/src/painting/image_resolution.dart';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:carousel_pro/carousel_pro.dart';

void main() {
  runApp(new MaterialApp(debugShowCheckedModeBanner: false,
    routes: <String, WidgetBuilder>{
      "/Page1":(BuildContext context) => new Page1(),
      "/Page2":(BuildContext context) => new Page2(),
      "/IT":(BuildContext context) => new IT(),  
    },
  ));
}


class HeroAnimation extends StatelessWidget {
  Widget build(BuildContext context) {
    timeDilation = 6.0; // 1.0 means normal animation speed.
     

     return Scaffold(
      appBar: AppBar(
        title: const Text('ART review'),
        backgroundColor: Colors.black,
      ),
      body: Column(
      
        children:<Widget>[ 
          SizedBox(    
            height: 250,
            width: 400,      
            child: Carousel(
              images: [
                ExactAssetImage("images/AvengerE.jpg"),
                ExactAssetImage("images/ps/stt.jpg"),
                ExactAssetImage("images/Her.jpg"),
                ExactAssetImage("images/got.jpg"),
                ExactAssetImage("images/A1.jpg"),
                ExactAssetImage("images/Joker.jpg"),
                ExactAssetImage("images/JW.jpg"),
                ExactAssetImage("images/WC.jpg"),
              ],
            ),
          ),
              
           
           
          Card(        
          child: PhotoHero(
          photo: 'images/pm/mov.png',
          width: 500.0,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Movie'),
                    backgroundColor: Colors.black,
                  ),
                  body: Column(
                    // The blue background emphasizes that it's a new route.
                    // color: Colors.black,
                    // padding: const EdgeInsets.all(16.0,),
                    // alignment: Alignment.topLeft,
                    children: <Widget>[
                      Card(
                     child: PhotoHero(
                      photo: 'images/pm/mov.png',
                      
                      width: 500.0,
                      
                    ),
                      ),
                    Card(
                     child: PhotoHero(
                      photo: 'images/pm/all.png',                      
                      width: 500.0,
                      onTap: () {
                        Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Page1()),
                        );
                      },
                    ),
                    ),

                    Card(
                     child: PhotoHero(
                      photo: 'images/pm/usa.png',     
                      width: 500.0,  
                    ),
                      ),


                      Card(
                     child: PhotoHero(
                      photo: 'images/pm/asia.png',
                      width: 500.0,
                      
                    ),
                      ),

                  ],
                  ),
                );
              }
            ));
          },
        ),        
        ),
          
        Card(     
          child: PhotoHero(
          photo: 'images/ps/se.png',
          width: 500.0,
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute<void>(
              builder: (BuildContext context) {
                return Scaffold(
                  appBar: AppBar(
                    title: const Text('Movie'),
                    backgroundColor: Colors.black,
                  ),
                  body: Column(
                    children: <Widget>[
                      Card(
                     child: PhotoHero(
                      photo: 'images/ps/se.png',
                      width: 500.0,             
                    ),
                      ),
                    Card(
                     child: PhotoHero(
                      photo: 'images/pm/all.png',                      
                      width: 500.0,
                      onTap: () {
                        Navigator.push(context,
                     MaterialPageRoute(builder: (context) => Page2()),
                        );
                      },
                    ),
                    ),

                    Card(
                     child: PhotoHero(
                      photo: 'images/pm/usa.png',
                      
                      width: 500.0,
                      
                    ),
                      ),

                      Card(
                     child: PhotoHero(
                      photo: 'images/pm/asia.png',
                      
                      width: 500.0,
                      
                    ),
                      ),
                      
                  ],
                  ),

                


                );
              }
            ));
          },
        ),        
        ),




        ]
      ),
    );
    
  }
}
