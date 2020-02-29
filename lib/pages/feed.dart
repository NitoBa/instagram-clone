import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Feed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 15),
        child: Column(
          children: <Widget>[
            Container(
              color: Colors.white,
              child: Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 40, left: 15, right: 15, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.camera_alt),
                            Container(
                              margin: EdgeInsets.only(left: 8),
                              width: 110,
                              child: Image.asset('assets/images/instagram-logo.png', fit: BoxFit.cover,)
                              ),
                          ],
                        ),
                        Row(
                            
                            children: <Widget>[
                            Icon(Icons.live_tv),
                            SizedBox(width: 8),
                            Icon(FontAwesomeIcons.solidPaperPlane),
                            ],
                          )
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 110,
                    child: ListView(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                    buildStories(storyImage: 'assets/images/person1.jpeg', userName: 'Your Story'),
                    SizedBox(width: 15),
                    buildStories(storyImage: 'assets/images/person2.jpeg', userName: 'Pedro'),
                    SizedBox(width: 15),
                    buildStories(storyImage: 'assets/images/person3.jpeg', userName: 'Maria'),
                    SizedBox(width: 15),
                    buildStories(storyImage: 'assets/images/person4.jpeg', userName: 'João'),
                    SizedBox(width: 15),
                    buildStories(storyImage: 'assets/images/person5.jpeg', userName: 'Bruno'),
                    SizedBox(width: 15),
                    buildStories(storyImage: 'assets/images/person1.jpeg', userName: 'Anna'),
                    SizedBox(width: 15),
                    buildStories(storyImage: 'assets/images/person2.jpeg', userName: 'Pedro'),
                  ],
                  ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15,),
            buildPost(context, 
            userName: "Pedro", 
            userImage: 'assets/images/person2.jpeg',
            post: 'assets/images/post1.jpeg',
            color: Colors.pink,
            likes: 145
            ),
            SizedBox(height: 15,),
            buildPost(context, 
            userName: "Maria", 
            userImage: 'assets/images/person3.jpeg',
            post: 'assets/images/post2.jpeg',
            color: Colors.grey,
            likes: 255
            ),
            SizedBox(height: 15,),
            buildPost(context, 
            userName: "Bruno", 
            userImage: 'assets/images/person4.jpeg',
            post: 'assets/images/post3.jpeg',
            color: Colors.grey,
            likes: 158
            ),SizedBox(height: 15,),
            buildPost(context, 
            userName: "João", 
            userImage: 'assets/images/person5.jpeg',
            post: 'assets/images/post5.jpeg',
            color: Colors.pink,
            likes: 445
            )
          ],
        ),
      ),
        );
  }
}

Widget buildStories({String storyImage, String userName}){
    return 
      Container(
        height: 70,
        child: Column(
        children: <Widget>[
        Container(
        width: 70, height: 70,
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFF2506E), width: 3),
          borderRadius: BorderRadius.circular(100),
          image: DecorationImage(
            image: AssetImage(storyImage),
            fit: BoxFit.cover,
          )
        ),
      ),
      SizedBox(height: 8,),
      Text(userName, style: TextStyle(fontSize: 14),)
          ],
        ),
      );
}

Widget buildPost(context, {String userName, String userImage, String post, int likes = 0, String legend,
    Color color

    }){
  return Container(
    width: MediaQuery.of(context).size.width - 18,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 15, left: 12, right: 12, bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
             Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 40, width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                            image: AssetImage(userImage),
                            fit: BoxFit.cover
                          )
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(userName, style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  ),
                  Icon(Icons.more_vert, color: Colors.grey,)
                ],
              ),
            
            SizedBox(height: 20),
            AspectRatio(
              aspectRatio: 1/1,
              child: Container(
                //margin: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  boxShadow: [
                  BoxShadow(
                    color: Colors.grey[300],
                    blurRadius: 10,
                    spreadRadius: 2
                  )
                  ],
                  image: DecorationImage(
                    image: AssetImage(post),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            SizedBox(height: 10),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.favorite, color: color, size: 28,),
                      SizedBox(width: 12,),
                      Icon(Icons.chat_bubble_outline, size: 28, color: Colors.grey,),
                      SizedBox(width: 12,),
                      Icon(FontAwesomeIcons.solidPaperPlane, color: Colors.grey,),
                    ],
                  ),
                  Icon(Icons.bookmark_border, color: Colors.grey, size: 28,)
                ],
              ),
              SizedBox(height: 6),
              Text(likes.toString() + " likes", 
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 12),
              ),
              SizedBox(height: 8),
              Row(
                children: <Widget>[
                  Text(userName, 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  SizedBox(width: 6),
                  Text('"Andando por aqui sem saber aonde ir..."')
                ],
              ),
              ],
            ),
    ),
        );
}