import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/pages/feed.dart';
import 'package:instagram_clone/pages/login.dart';
import 'package:instagram_clone/pages/perfil.dart';
import 'package:instagram_clone/pages/search.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class BottomNavigationBarInst extends StatefulWidget {

  @override
  _BottonNavigationBarInstState createState() => _BottonNavigationBarInstState();
}

class _BottonNavigationBarInstState extends State<BottomNavigationBarInst> {

  int currentindex = 0;

  Widget buildPage({int index = 0, IconData icon}){
    return IconButton(icon: Icon(icon, color: currentindex == index ? Colors.black : Colors.grey,),
      iconSize: currentindex == index ? 28 : 22,
      onPressed: (){
      setState(() {
        currentindex = index;
      });
    });
  }

  final itemPage = <Widget> [
    Feed(),
    Search(),
    Center(child: Icon(Icons.favorite_border, size: 80,),),
    Perfil(),
  ];

  @override
  Widget build(BuildContext context) {

    
    final bottonBar = BottomAppBar(
        elevation: 10,
        notchMargin: 6,
        shape: CircularNotchedRectangle(),
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(bottom: 8, top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                buildPage(icon: FontAwesomeIcons.home, index: 0,),
                buildPage(icon: FontAwesomeIcons.search, index: 1,),
                buildPage(icon: FontAwesomeIcons.heart, index: 2,),
                buildPage(icon: FontAwesomeIcons.user, index: 3,),
              ],
            ),
          ),
        );
    return Scaffold(
      body: itemPage[currentindex],
      bottomNavigationBar: bottonBar,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add, color: Colors.white,),
      backgroundColor: Color(0xFFF2506E),
      onPressed: (){
        Navigator.pushReplacement(context, CupertinoPageRoute(builder: (BuildContext context) => Login()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      );
      
  }
}


  