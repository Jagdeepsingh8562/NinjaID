import 'package:NinjaID/pages/NinjaList.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    
    routes: {
      '/':(context) =>NinjaCard(),
      '/NinjaList':(context) =>NinjaList(),
      
     
    },
    debugShowCheckedModeBanner: false,
  ));
}
class NinjaCard extends StatefulWidget {
  
  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja Card'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
          
            Center(child: Image.asset('assets/logo.png')),
          Divider(
            height: 30,
            color: Colors.orangeAccent,
          ),
          Center(child: Image.asset('assets/small.png',height: 200,width: 160,)),
          
          Center(
            child: Text('Welcome Guyiss',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 1,
              fontSize: 20,
              fontWeight: FontWeight.bold, 
              ),
              ),
          ),
           SizedBox(height: 5,),
           Text('\"I won\'t run away anymore... I won\'t go back on my word... that is my ninja way!\"',
            style: TextStyle(
              color: Colors.amberAccent[200],
              letterSpacing: 1,
              fontSize: 15,
              fontWeight: FontWeight.w300, 
              ),
              ),
              SizedBox(height: 25,),
              Center(
                  child: RaisedButton(onPressed:(){
                   Navigator.pushNamed(context,'/NinjaList');  
                    },
               child: Text('Choose a Ninja'),
               color: Colors.amberAccent[200],
               ),
                ),
              
        ],),
      ),
      
    );
  }
}