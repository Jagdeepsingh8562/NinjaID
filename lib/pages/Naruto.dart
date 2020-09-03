import 'package:flutter/material.dart';
import 'NinjaInfo.dart';

class Ninjacard extends StatelessWidget {

  final NinjaInfo todo;
  Ninjacard({Key key, @required this.todo}) : super(key: key);

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
          
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('${todo.image}'),
                radius: 60,
               ),
              ),
          Divider(
            height: 50,
            color: Colors.orangeAccent,
          ),
          Text('Name',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2, 
            ),
            ),
            SizedBox(height:10),
          Text('${todo.name}',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 1,
            fontSize: 30,
            fontWeight: FontWeight.bold, 
            ),
            ),
            SizedBox(height:30),
          Text('Current Ninja Level',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2, 
            ),
            ),
            SizedBox(height:10),
          Text('${todo.level}',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 1,
            fontSize: 30,
            fontWeight: FontWeight.bold, 
            ),
            ),
            SizedBox(height:30),
            Row(children: <Widget>[
              Icon(
                Icons.email,
                color: Colors.grey,
              ),
              SizedBox(width: 5,),
              Text('E',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2, 
            ),
            ),
            Text('@',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 2, 
            ),
            ),
            Text('MAIL',
          style: TextStyle(
            color: Colors.grey,
            letterSpacing: 2, 
            ),
            ),
            ],),
            SizedBox(height:10),
          Text('${todo.email}',
          style: TextStyle(
            color: Colors.amberAccent[200],
            letterSpacing: 1,
            fontSize: 20,
            fontWeight: FontWeight.bold, 
            ),
            ),
            SizedBox(height: 50,),
            Center(
              child: RaisedButton(onPressed:(){
                     Navigator.pop(context,'/NinjaList');  
                      },
                 child: Text('Other ninjas'),color: Colors.amberAccent[200],
                 ),
            ),
        ],),
      ),
      
    );
  }
}