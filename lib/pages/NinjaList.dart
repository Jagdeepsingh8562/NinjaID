
import 'package:flutter/material.dart';
import 'NinjaInfo.dart';
import 'Naruto.dart';


class NinjaList extends StatefulWidget {
  @override
  _NinjaListState createState() => _NinjaListState();
}

class _NinjaListState extends State<NinjaList> {

  List<NinjaInfo> ninjaindex=[
    NinjaInfo( name:'Naruto Usumaki',level:9,email:'NarutoUsumaki@leaf.com',image:'assets/Naruto.webp'),
    NinjaInfo( name:'Sasuke Uchiha',level:11,email:'SasukeUchiha@leaf.com',image:'assets/Sasuke.webp'),
    NinjaInfo( name:'Sakura Haruno',level:8,email:'SakuraHaruno@leaf.com',image:'assets/Sakura.webp'),
  ];

  
 

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[600],
      appBar: AppBar(
        backgroundColor: Colors.grey[850],
        title: Text('Choose a Ninja'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: ninjaindex.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 4),
            child: Card(
              child: ListTile(
                
                onTap: () {
                Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Ninjacard(todo: ninjaindex[index]),
          ),
          
        );
                 
                  
                },
                title: Text('${ninjaindex[index].name}'),
                leading: CircleAvatar(backgroundImage: AssetImage('${ninjaindex[index].image}'),),
                

              ),
            ),
          );
        },
      ),
    );
  }
}