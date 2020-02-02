import 'package:app/screen/photo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/material/colors.dart';



void main() {
  runApp(MarterialApp(title:'IT',home:IT()));
    }
  
  Widget MarterialApp({String title, IT home}) {

}
  
  
class IT extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<IT> {
  List data;
  int count = 0;
  Future<String> loadJsonData() async{
    var jsonText=await rootBundle.loadString('images/assets/data.json');
    setState(() {
      data=json.decode(jsonText);
  
    });
  }
  @override
  void initState(){
    this.loadJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("MOVIES"),
              backgroundColor: Colors.black,
                      ),
      body: 
      
      new Card(
        child: FutureBuilder(builder: (context,snapshot){
          var myData = json.decode(snapshot.data.toString());
          return new GridView.builder(     
            itemCount: myData.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context,int index){    
              return Card(
                child: Hero(
                  tag: myData[index]['name'],
                  child: Material(
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, new MaterialPageRoute(
                    builder: (BuildContext context) => new Fimov(myData[index])
                  ));
                      },
                      child: GridTile(
                        child: Image.asset(myData[index]['image'],),
                      ),
                    ),
                  ),
                ),         
              );           
            }
          );
        },future: DefaultAssetBundle.of(context).loadString("images/assets/data.json"),
      ),
      ),
    );
  }
}

class Fimov extends StatelessWidget {
  Fimov(this.myData);
  final myData;
 
  @override
  Widget build(BuildContext context) => new Scaffold(
    
    appBar: new AppBar(
      title: Text(myData['name']),
      backgroundColor: Colors.black,
     
    ),
    body:new Column(
    children:<Widget>[      
    Stack(
            children: <Widget>[   
              new Container(
                  color: Colors.transparent,
                  child: new ClipPath(            
                child: Image.asset(
                 myData['image'], fit: BoxFit.cover,              
                ),                 
              )),

              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Container(
                  padding: EdgeInsets.all(2),
                  width: double.infinity,
                  child:Opacity(
                    opacity: 0.8,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("ชื่อเรื่อง : "+myData['name']+
          "\n"+"คะแนนจาก imdb : "+myData['imdb']+
          "\n"+"ผู้กำกับ : "+myData['director']+
          "\n"+"เนื้อเรื่องคร่าวๆ : "+myData['about'],),
                    ),
                  ),
                  ),
                ),
              ),
            
            ],
          ),   
    ],  
    ),
  );
}
