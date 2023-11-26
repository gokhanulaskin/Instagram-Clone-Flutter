// ignore_for_file: unnecessary_string_escapes, prefer_const_constructors, sized_box_for_whitespace, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(
          children: [
            Container(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.add_circle,
                            color: Colors.black87,
                            size: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.black87,
                            size: 25,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 8.0, left: 8, bottom: 8, right: 20),
                          child: Icon(
                            Icons.send,
                            color: Colors.black87,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            Expanded(
                child: Container(
              child: Column(children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      storyWidget(),
                      storyWidget2(),
                      storyWidget3(),
                      storyWidget4(),
                      storyWidget5(),
                      storyWidget(),
                      storyWidget2(),
                      storyWidget3(),
                      storyWidget4(),
                    ],
                  ),
                ),
                PostItem(),
              ]),
            )),
            Container(
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black12,
              )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.home,
                      size: 32,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.search,
                      size: 32,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.smart_display,
                      size: 32,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.favorite,
                      size: 32,
                      color: Colors.black87,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(
                      Icons.person,
                      size: 32,
                      color: Colors.black87,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PostItem extends StatelessWidget {
  const PostItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        PostInfoBox(),
        Image.asset(
                "assets/images/yeat_post.jpeg",
                height: 380,
                ),
        LikeCommentBox(),
        CommentBox()
      ],
      
    ));
  }
}

class PostInfoBox extends StatelessWidget {
  const PostInfoBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  "assets/images/yeat.jpg"
                  ),
                  radius: 20,
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("yeat", style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
    
                  ),
                  ),
                  Text("New York, USA", style: TextStyle(
                    fontSize: 9,
                    fontWeight: FontWeight.bold,
    
                  ),
                  ),
                ],
              ),
            ],
          ),
          Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}

class LikeCommentBox extends StatelessWidget {
  const LikeCommentBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.favorite_border, color: Colors.black87, size: 25,),
              SizedBox(width: 8,),
              Icon(Icons.comment_outlined, color: Colors.black87, size: 25,),
              SizedBox(width: 8,),
            ],
          ),
          Icon(Icons.bookmark_outline, color: Colors.black87, size: 25,),
        ],
      ),
    );
  }
}

class CommentBox extends StatelessWidget {
  const CommentBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Text("drake", style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          ),
          SizedBox(width: 3,),
          Text(
            "money for fun!!!",
            style: TextStyle(
              color: Colors.black87,
              fontSize: 14,
            ),
            ),
        ],
      ),
    );
  }
}

class storyWidget extends StatelessWidget {
  const storyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/cench.png"),
            radius: 35,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "centralcee",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

class storyWidget2 extends StatelessWidget {
  const storyWidget2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/drake.jpg"),
            radius: 35,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "champagnepapi",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

class storyWidget3 extends StatelessWidget {
  const storyWidget3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/yeat.jpg"),
            radius: 35,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "yeat",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

class storyWidget4 extends StatelessWidget {
  const storyWidget4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/uzi.jpg"),
            radius: 35,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "uzielchavo",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}

class storyWidget5 extends StatelessWidget {
  const storyWidget5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/lvbel.jpg"),
            radius: 35,
          ),
        ),
        SizedBox(height: 5),
        Text(
          "lvbelc5",
          style: TextStyle(
            fontSize: 13,
          ),
        ),
      ],
    );
  }
}
