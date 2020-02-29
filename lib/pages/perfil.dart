import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  
  String follow = "Seguir";

  clickFollow(){
    setState(() {
      if(follow == "Seguir") follow = "Seguindo";
      else follow = "Seguir"; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            buildBio(follow, clickFollow),
            SizedBox(height: 10,),
            GridView.count(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.symmetric(horizontal: 10),
              children: <Widget>[
                buildGridPhotos(post: 'assets/images/post1.jpeg'),
                buildGridPhotos(post: 'assets/images/post2.jpeg'),
                buildGridPhotos(post: 'assets/images/post3.jpeg'),
                buildGridPhotos(post: 'assets/images/post4.jpeg'),
                buildGridPhotos(post: 'assets/images/post5.jpeg'),
                buildGridPhotos(post: 'assets/images/person1.jpeg'),
                buildGridPhotos(post: 'assets/images/person2.jpeg'),
                buildGridPhotos(post: 'assets/images/person3.jpeg'),
                buildGridPhotos(post: 'assets/images/person4.jpeg'),
                buildGridPhotos(post: 'assets/images/person5.jpeg'),
                buildGridPhotos(post: 'assets/images/person1.jpeg'),
                buildGridPhotos(post: 'assets/images/post1.jpeg'),
                buildGridPhotos(post: 'assets/images/post2.jpeg'),
                buildGridPhotos(post: 'assets/images/post3.jpeg'),
                buildGridPhotos(post: 'assets/images/post4.jpeg'),
              ],
            )
          ],
        ),
      ),
    );
  }
}

Widget buildBio(String follow, Function click) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
      bottomLeft: Radius.circular(15),
      bottomRight: Radius.circular(15))),
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Icon(Icons.arrow_back, size: 28),
              Text("Nito_b.a", style: TextStyle(fontWeight: FontWeight.bold)),
              Icon(
                Icons.more_horiz,
                size: 28,
              ),
            ],
          ),
        ),
        SizedBox(height: 18),
        Container(
            padding: EdgeInsets.all(3),
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              gradient:
                  LinearGradient(colors: [Colors.purple, Color(0xFFF2506E)]),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                image: DecorationImage(
                  image: AssetImage('assets/images/person2.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            )),
        SizedBox(height: 10),
        Text("Bruno Alves", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 10),
        Text("Programador mobile nas horas vagas",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 12)
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Column(
            children: <Widget>[
              Text("15", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text("Posts", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),),
            ],
          ),
          Container(color: Colors.grey, height: 40, width: 0.5, margin: EdgeInsets.symmetric(horizontal: 30),),
          Column(
            children: <Widget>[
              Text("256", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text("Seguidores", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),),
            ],
          ),
          Container(color: Colors.grey, height: 40, width: 0.5, margin: EdgeInsets.symmetric(horizontal: 30,),),
          Column(
            children: <Widget>[
              Text("300", style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 5),
              Text("Seguindo", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),),
            ],
          ),
        ],
      ),
      SizedBox(height: 10),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: FlatButton(
              color: Color(0xFFF2506E),
              textColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Text(follow),
              onPressed: click
            ),
          ),
          IconButton(
            iconSize: 20, color: Colors.grey,
            icon: Icon(FontAwesomeIcons.paperPlane), onPressed: () {},)
        ],
      ),
      SizedBox(height: 10,),
      ],
    ),
  );
}

Widget buildGridPhotos({String post}){
  return Container(
          padding: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
            color: Colors.grey,
            blurRadius: 2,
            //spreadRadius: 2
          )],
          image: DecorationImage(
          image: AssetImage(post),
          fit: BoxFit.cover
            )
          ),
  );
}