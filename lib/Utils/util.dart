import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class Utils {
  double _height, _width;
  double _scale_Height, _scale_Width;

  void size(BuildContext context) {
    _height = MediaQuery
        .of(context)
        .size
        .height;
    _width = MediaQuery
        .of(context)
        .size
        .height;
    _scale_Height = _height / 100;
    _scale_Width = _width / 100;
  }

  double get scale_Width => _scale_Width;

  double get scale_Height => _scale_Height;
}

class Input extends StatelessWidget {
  @required
  final bool obscure;
  final String text;
  final Function value;
  final icon, keyboard;
  final Function valid;

  Input({this.obscure,
    this.text,
    this.value,
    this.icon,
    this.valid,
    this.keyboard});

  Widget build(BuildContext context) {
    return TextFormField(
      validator: valid,
      onChanged: value,
      obscureText: obscure,
      keyboardType: keyboard,
      decoration: InputDecoration(
          labelText: text, prefixIcon: icon, border: OutlineInputBorder()),
    );
  }
}

Utils _utils = new Utils();

class Avatar extends StatelessWidget {
  final image, text;

  Avatar({this.image, this.text});

  @override
  Widget build(BuildContext context) {
    _utils.size(context);
    return Column(
      children: [
        Container(
          height: _utils.scale_Height * 14,
          width: _utils.scale_Width * 14,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple, width: 3),
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              )),
        ),
        Text(text)
      ],
    );
  }
}

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _utils.size(context);
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: _utils.scale_Height * 14,
              width: _utils.scale_Width * 14,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.purple, width: 3),
                  shape: BoxShape.circle,
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage("lib/images/image1.jpg"),
                    fit: BoxFit.contain,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 70.0, left: 82),
              child: Icon(
                Icons.add_circle_rounded,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        Text("Your story")
      ],
    );
  }
}

class Poster extends StatelessWidget {
  final image, text, height, width, icon;

  Poster({this.image, this.text, this.height, this.width, this.icon});

  @override
  Widget build(BuildContext context) {
    _utils.size(context);
    return Row(

      children: [
        Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.purple, width: 2),
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.contain,
              )),
        ),
        SizedBox(width: _utils.scale_Width * 2,),
        Text(text),
        Spacer(),
        Icon(icon)
      ],
    );
  }
}

class Post extends StatelessWidget {
  final image;

  Post({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _utils.scale_Height * 30,
      width: _utils.scale_Width * 30,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple, width: 2),
          shape: BoxShape.rectangle,
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.contain,
          )),
    );
  }
}

class Like extends StatelessWidget {
  final image;

  Like({this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: _utils.scale_Height * 3,
      width: _utils.scale_Width * 3,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.purple, width: 2),
          shape: BoxShape.circle,
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.contain,
          )),
    );
  }
}
