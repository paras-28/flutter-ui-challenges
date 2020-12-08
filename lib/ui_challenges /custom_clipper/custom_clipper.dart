import 'package:flutter/material.dart';

class CustomClipperText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipPath(
          clipper: TextBackgroundClipper(),
          child: new Container(
            constraints: new BoxConstraints(
              minWidth: 0.0,
              maxWidth: MediaQuery.of(context).size.width * 0.80,
            ),
            color: Color(0xffEB5A6C),
            padding:
                const EdgeInsets.only(left: 10, right: 19, top: 10, bottom: 28),
            child: new Text(
              "Paras Arora",
              style: new TextStyle(
                fontSize: 32.0,
                color: Color(0xffffffff),
              ),
            ),
            // width: 180.0,
          ),
        ),
      ),
    );
  }
}

class TextBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height * 0.20);
    path.lineTo(0.0, size.height * 0.60);
    path.quadraticBezierTo(0, size.height * 0.80, 15, size.height * 0.80);
    path.lineTo(size.width - 20, size.height * 0.80);
    path.quadraticBezierTo(
        size.width - 10, size.height - 10, size.width, size.height);
    path.quadraticBezierTo(
        size.width - 10, size.height * 0.90, size.width - 10, 15.0);
    path.quadraticBezierTo(size.width - 12, 0.0, size.width - 30, 0.0);
    path.lineTo(15.0, 0.0);
    path.quadraticBezierTo(0.0, 0.0, 0.0, size.height * 0.20);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
