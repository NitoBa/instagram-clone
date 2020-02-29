import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50, bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Icon(FontAwesomeIcons.redo),
                        Container(
                            margin: EdgeInsets.only(left: 8),
                            width: 110,
                            child: Image.asset(
                              'assets/images/instagram-logo.png',
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                    Icon(FontAwesomeIcons.bars),
                  ],
                ),
              ),
              Container(
                height: 45,
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "search",
                    labelStyle: TextStyle(fontSize: 15),
                    fillColor: Colors.grey,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.grey)),
                  ),
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Descubra",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 1),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 210, left: 10, right: 10),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            primary: false,
            slivers: <Widget>[
              new SliverStaggeredGrid.count(
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: <Widget>[
                  buildGrid(context, post: 'assets/images/post1.jpeg'),
                  buildGrid(context, post: 'assets/images/post2.jpeg'),
                  buildGrid(context, post: 'assets/images/post3.jpeg'),
                  buildGrid(context, post: 'assets/images/post4.jpeg'),
                  buildGrid(context, post: 'assets/images/post5.jpeg'),
                  buildGrid(context, post: 'assets/images/post1.jpeg'),
                  buildGrid(context, post: 'assets/images/post2.jpeg'),
                  buildGrid(context, post: 'assets/images/post3.jpeg'),
                  buildGrid(context, post: 'assets/images/post4.jpeg'),
                  buildGrid(context, post: 'assets/images/post5.jpeg'),
                  buildGrid(context, post: 'assets/images/post1.jpeg'),
                  buildGrid(context, post: 'assets/images/post2.jpeg'),
                ],
                staggeredTiles: <StaggeredTile>[
                  StaggeredTile.count(4, 5),
                  StaggeredTile.count(2, 1),
                  StaggeredTile.count(2, 2),
                  StaggeredTile.count(2, 1),
                  StaggeredTile.count(2, 2),
                  StaggeredTile.count(2, 1),
                  StaggeredTile.count(2, 2),
                  StaggeredTile.count(4, 5),
                  StaggeredTile.count(2, 2),
                  StaggeredTile.count(2, 1),
                  StaggeredTile.count(2, 2),
                  StaggeredTile.count(2, 1),
                ],
              )
            ],
          ),
        ),
      ],
    ));
  }
}

Widget buildGrid(context, {String post}) {
  return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(image: AssetImage(post), fit: BoxFit.cover)),
  );
}
