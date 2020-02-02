import 'package:app/ms/se.dart';
import 'package:flutter/material.dart';
import 'package:app/ms/it.dart';
import 'ms/it.dart';

void main() {
  runApp(Page2());
      }
  
class Page2 extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
        return Scaffold(
          
          appBar: AppBar(
            // leading: Image.asset("images/A1.jpg"),
            backgroundColor: Colors.black,
            title: Text('Series'),
            
          ),
          body: new Stack(
            children: <Widget>[
              
              new Container(
                decoration: new BoxDecoration(
              image: new DecorationImage(
                image: new AssetImage('images/got.jpg'),
                fit: BoxFit.cover,
              )
            ),
              ),
    
             
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
               children:<Widget>[
         
             ListTile(
              
                  

               leading: Image.asset('images/got.jpg',width: 100,height: 150,),
               title:Text("All"),
               subtitle: Text("data"),
               trailing: Icon(Icons.arrow_forward_ios),
                onTap:() {
                  Navigator.push(context,
                     MaterialPageRoute(builder: (context) => SE(),
            ),);
                },
              
              ),
               ListTile(
               leading: Image.asset('images/ps/stt.jpg',width: 100,height: 150,),
               title:Text("Horror"),
               subtitle: Text("No data"),
                
              
              ),
               ListTile(
               leading: Image.asset('images/ps/b.jpg',width: 100,height: 150,),
               title:Text("Action"),
               subtitle: Text("No data"),
               
              ),






               ]
               ),
            ),

        
         



        ],
        
      ),
    );
  }
}
