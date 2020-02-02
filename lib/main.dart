import 'package:app/screen/hero.dart';
import 'package:app/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

// void main() => runApp(MyApp());
void main() {
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  var app = MaterialApp(home: Splash(),);
  runApp(app);
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.green,
      ),
      // home: MyHomePage(title: 'ART HandSome'),
      home: Splash(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
        
  void _incrementCounter() {
    setState(() {
     
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        
        title: Text('Welcome Welcome !'),
      ),
      body: Column(
        children: <Widget>[
          Center(

          child: Image.asset('images/ART.jpg',width: 150,height: 150,)
          ),
        ],
        
      ),
      
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
