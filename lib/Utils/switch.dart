import 'package:flutter/material.dart';
import 'package:hyvee/Screen/Login.dart';
import 'package:hyvee/Screen/Signup.dart';
class Switchin extends StatefulWidget {
static String id="Switch";

  @override
  _SwitchinState createState() => _SwitchinState();
}

class _SwitchinState extends State<Switchin> {
  bool isLogin=true;
  void toggle(){
    setState(() {
      isLogin=!isLogin;
    });
  }
  @override
  Widget build(BuildContext context) {
    if(isLogin){
      return Login(toggleView:toggle);
    }else{
      return Signup(toggleView:toggle);
    }
  }
}
