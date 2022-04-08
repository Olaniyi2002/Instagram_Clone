import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hyvee/Utils/util.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);
  static String id = "Home";

  @override
  _HomeState createState() => _HomeState();
}

Utils _utils = new Utils();

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    _utils.size(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.white,
        // leading: Image.asset(
        //   "lib/images/instalogo.png",
        // ),
        actions: [
          Image.asset("lib/images/instalogo.png"),
          Spacer(),
          IconButton(
              onPressed: () {},
              icon: Icon(
                FontAwesome.plus_square,
                color: Colors.black,
              )),
          IconButton(
            onPressed: () {},
            icon: Icon(
              FlutterIcons.facebook_messenger_mco,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
          child: Container(
              height: _utils.scale_Height * 286,
              width: _utils.scale_Width * 90,
              child: Column(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Container(
                      height: _utils.scale_Height * 17,
                      width: _utils.scale_Width * 90,
                      //color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Profile(),
                          Avatar(
                            image: "lib/images/image2.jpg",
                            text: "_ade.xo",
                          ),
                          Avatar(
                              image: "lib/images/image3.jpg", text: "fiyin.xo"),
                          Avatar(
                            image: "lib/images/image4.jpg",
                            text: "_sha.sha",
                          ),
                          Avatar(
                              image: "lib/images/image5.jpg",
                              text: "_obasa.ayomide"),
                          Avatar(
                              image: "lib/images/image6.jpg", text: "_adelanwa")
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Poster(
                      image: "lib/images/image2.jpg",
                      text: "_ade.xo",
                      height: _utils.scale_Height * 6,
                      width: _utils.scale_Width * 6,
                      icon: Icons.more_vert),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Image.asset("lib/images/post1.jpg"),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: _utils.scale_Height * 2,
                      ),
                      Icon(Icons.chat_bubble_outline),
                      SizedBox(
                        width: _utils.scale_Height * 2,
                      ),
                      Transform.rotate(
                          angle: (270 / (150 / pi)),
                          child: Icon(Icons.send_outlined)),
                      Spacer(),
                      Icon(Icons.turned_in_not_sharp),
                    ],
                  ),
                  SizedBox(
                    height: _utils.scale_Height * 1,
                  ),
                  Row(
                    children: [
                      Like(
                        image: "lib/images/image6.jpg",
                      ),
                      SizedBox(
                        width: _utils.scale_Width * 2,
                      ),
                      Text("Liked by  _.tomiwa"),
                    ],
                  ),
                  Divider(),
                  Poster(
                      image: "lib/images/image3.jpg",
                      text: "fiyin.xo",
                      height: _utils.scale_Height * 6,
                      width: _utils.scale_Width * 6,
                      icon: Icons.more_vert),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Container(child: Image.asset("lib/images/post2.jpg")),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: _utils.scale_Height * 2,
                      ),
                      Icon(Icons.chat_bubble_outline),
                      SizedBox(
                        width: _utils.scale_Height * 2,
                      ),
                      Transform.rotate(
                          angle: (270 / (150 / pi)),
                          child: Icon(Icons.send_outlined)),
                      Spacer(),
                      Icon(Icons.turned_in_not_sharp),
                    ],
                  ),
                  SizedBox(
                    height: _utils.scale_Height * 1,
                  ),
                  Row(
                    children: [
                      Like(
                        image: "lib/images/image6.jpg",
                      ),
                      SizedBox(
                        width: _utils.scale_Width * 2,
                      ),
                      Text("Liked by  .ayob_naso"),
                    ],
                  ),
                  Divider(),
                  Poster(
                      image: "lib/images/image6.jpg",
                      text: "fumi.im",
                      height: _utils.scale_Height * 6,
                      width: _utils.scale_Width * 6,
                      icon: Icons.more_vert),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Container(child: Image.asset("lib/images/post3.jpg")),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: _utils.scale_Height * 2,
                      ),
                      Icon(Icons.chat_bubble_outline),
                      SizedBox(
                        width: _utils.scale_Height * 2,
                      ),
                      Transform.rotate(
                          angle: (270 / (150 / pi)),
                          child: Icon(Icons.send_outlined)),
                      Spacer(),
                      Icon(Icons.turned_in_not_sharp),
                    ],
                  ),
                  SizedBox(
                    height: _utils.scale_Height * 1,
                  ),
                  Row(
                    children: [
                      Like(
                        image: "lib/images/post4.jpg",
                      ),
                      SizedBox(
                        width: _utils.scale_Width * 2,
                      ),
                      Text("Liked by  Dipo.xo"),
                    ],
                  ),
                  Divider(),
                  Poster(
                      image: "lib/images/post4.jpg",
                      text: "Dipo.xo",
                      height: _utils.scale_Height * 6,
                      width: _utils.scale_Width * 6,
                      icon: Icons.more_vert),
                  Divider(
                    height: 1,
                    thickness: 1,
                  ),
                  Container(child: Image.asset("lib/images/post4.jpg")),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(Icons.favorite_border),
                      SizedBox(
                        width: _utils.scale_Height * 2,
                      ),
                      Icon(Icons.chat_bubble_outline),
                      SizedBox(
                        width: _utils.scale_Height * 2,
                      ),
                      Transform.rotate(
                          angle: (270 / (150 / pi)),
                          child: Icon(Icons.send_outlined)),
                      Spacer(),
                      Icon(Icons.turned_in_not_sharp),
                    ],
                  ),
                  SizedBox(
                    height: _utils.scale_Height * 1,
                  ),
                  Row(
                    children: [
                      Like(
                        image: "lib/images/post2.jpg",
                      ),
                      SizedBox(
                        width: _utils.scale_Width * 2,
                      ),
                      Text("Liked by  fiyin.xo"),
                    ],
                  ),
                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.personal_video),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(left: 1.0, bottom: 5),
              child: Poster(
                image: "lib/images/image1.jpg",
                text: "",
                height: _utils.scale_Height * 3.4,
                width: _utils.scale_Width * 3.4,
              ),
            ),
            title: Text(''),
          ),
        ],
      ),
    );
  }
}
