import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hyvee/Utils/util.dart';

import 'Home.dart';

class Signup extends StatefulWidget {
  final Function toggleView;

  Signup({this.toggleView});

  static String id = "Signup";

  @override
  _SignupState createState() => _SignupState();
}

Utils _utils = new Utils();

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    _utils.size(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        height: _utils.scale_Height * 100,
        width: _utils.scale_Width * 50,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            Image.asset(
              "lib/images/instalogo.png",
              scale: 20,
            ),
            Container(
                height: _utils.scale_Height * 50,
                width: _utils.scale_Width * 45,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Input(
                      text: "Name",
                      obscure: false,
                    ),
                    Input(
                      text: "E-mail",
                      obscure: false,
                    ),
                    Input(
                      text: "Password",
                      obscure: false,
                    ),
                    Input(
                      text: "Confirm Password",
                      obscure: false,
                    ),
                    Container(
                        height: _utils.scale_Height * 8,
                        width: _utils.scale_Width * 45,
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, Home.id);
                            }, child: Text("Signup"))),
                  ],
                )),
            SizedBox(
              height: _utils.scale_Height * 2,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: _utils.scale_Height * 0.07,
                  width: _utils.scale_Width * 20,
                  color: Colors.grey,
                ),
                Text(
                  "OR",
                  style: TextStyle(fontSize: 15),
                ),
                Container(
                  height: _utils.scale_Height * 0.07,
                  width: _utils.scale_Width * 20,
                  color: Colors.grey,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  FlutterIcons.facebook_with_circle_ent,
                  color: Colors.blue,
                  size: 50,
                ),
                SizedBox(
                  width: _utils.scale_Width * 2,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Signup With Facebook",
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
            Spacer(),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already Have an Account?",
                    style: TextStyle(color: Colors.grey)),
                TextButton(
                    onPressed: () {
                      widget.toggleView();
                    },
                    child:
                        Text("Login.", style: TextStyle(color: Colors.black)))
              ],
            )
          ],
        ),
      ),
    ));
  }
}
