import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:hyvee/Utils/util.dart';

class Login extends StatefulWidget {
  final Function toggleView;

  Login({this.toggleView});

  static String id = "Login";

  @override
  _LoginState createState() => _LoginState();
}

Utils _utils = new Utils();

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    _utils.size(context);
    return Scaffold(
      body: SafeArea(
        bottom: true,
        child: SingleChildScrollView(
          child: Container(
            height: _utils.scale_Height * 96,
            width: _utils.scale_Width * 50,
            //color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 2),
                Image.asset(
                  'lib/images/instalogo.png',
                  scale: 20,
                ),
                Container(
                    // color: Colors.white,
                    height: _utils.scale_Height * 30,
                    width: _utils.scale_Width * 45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Input(obscure: false, text: "Email"),
                        Input(
                          obscure: false,
                          text: "Password",
                        ),
                        Container(
                            height: _utils.scale_Height * 8,
                            width: _utils.scale_Width * 45,
                            child: ElevatedButton(
                                onPressed: () {}, child: Text("Login")))
                      ],
                    )),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0, right: 0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Forgotten your details?"),
                          TextButton(
                              onPressed: () {},
                              child: Text("Get help with Logging in."))
                        ],
                      ),
                    ),
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
                    Text(
                      "Log In With Facebook",
                      style: TextStyle(color: Colors.blue),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Divider(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account",style: TextStyle(color:Colors.grey),),
                        TextButton(
                            onPressed: () {
                              widget.toggleView();
                            },
                            child: Text("Signup",style: TextStyle(color: Colors.black),))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
