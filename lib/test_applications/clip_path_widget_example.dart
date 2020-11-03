import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ClipPathWidgetExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Clip Path Widget"),
      ),
      body: SingleChildScrollView(padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomClipperReverseRectangle(),
              SizedBox(height: 10),
              CustomClipperRectangleRadius(),
              SizedBox(height: 10),
              CustomClipperTriangle(),
              SizedBox(height: 10),
              CustomClipperquadraticBezier(),
              SizedBox(height: 10),
              CustomClipperCubic(),
              SizedBox(height: 10),
              CustomClipperArcToPoint(),
              SizedBox(height: 10),

            ],
          ),
        ),
      );
  }
}

//Döndürülmüş Kare
class CustomClipperReverseRectangle extends StatelessWidget {
  const CustomClipperReverseRectangle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: ClipPath(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.black,
            ),
            clipper: CustomClipperReversRectangle(),
          ),
        ),
        SizedBox(width: 20),
        Text("DÖNDÜRÜLMÜŞ\nKARE")
      ],
    );
  }
}
class CustomClipperReversRectangle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height / 2);
    path.lineTo(size.width / 2, size.width);
    path.lineTo(size.width, size.height / 2);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

//Radius Kare
class CustomClipperRectangleRadius extends StatelessWidget {
  const CustomClipperRectangleRadius({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: ClipPath(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.black,
            ),
            clipper: CustomClipperRectangleRadiusClass(),
          ),
        ),
        SizedBox(width: 20),
        Text("RADİUS KARE")
      ],
    );
  }
}
class CustomClipperRectangleRadiusClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path()
      ..addRRect(RRect.fromLTRBR(30, 30, 120, 120, Radius.circular(20)))
    ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

//Üçgen
class CustomClipperTriangle extends StatelessWidget {
  const CustomClipperTriangle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: ClipPath(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.black,
            ),
            clipper: CustomClipperTriangleClass(),
          ),
        ),
        SizedBox(width: 20),
        Text("ÜÇGEN")
      ],
    );
  }
}
class CustomClipperTriangleClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.width);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

//QuadraticBezier Eğrisi
class CustomClipperquadraticBezier extends StatelessWidget {
  const CustomClipperquadraticBezier({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: ClipPath(
            child: Container(
              width: 150,
              height: 150,
              color: Colors.black,
            ),
            clipper: QuadraticBezierClass(),
          ),
        ),
        SizedBox(width: 20),
        Text("QUADRATİCBEZİER\nEĞRİSİ")
      ],
    );
  }
}
class QuadraticBezierClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    var controlPoint = Offset(size.width/2, size.height/2);
    var endPoint = Offset(size.width, size.height);

    var path = Path();

    path.lineTo(0,0);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, 0);
    path.lineTo(size.width, 0);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, 0 , endPoint.dy);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(controlPoint.dx, controlPoint.dy, 0 , 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

//Cubic Eğrisi
class CustomClipperCubic extends StatelessWidget {
  const CustomClipperCubic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: ClipPath(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.black,
                ),
                clipper: CustomClipperCubicClass(),
              ),
        ),
        SizedBox(width: 20),
        Text("CUBİC EĞRİSİ")
      ],
    );
  }
}
class CustomClipperCubicClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    var c1 = Offset(50, size.height-100);
    var c2 = Offset(size.width-50, size.height);

    var c3 = Offset(size.width-100, size.height);
    var c4 = Offset(size.width-50, size.height-100);

    var endPoint1 = Offset(size.width, size.height-50);
    var endPoint2 = Offset(size.width+50, size.height-100);

    var path = Path();

    path.lineTo(0, 0);
    path.lineTo(0,size.height-50);
    path.cubicTo(50, size.height-100, size.width-50, size.height, size.width, size.height-50);
    path.lineTo(size.width,size.height);
    path.lineTo(size.width,50);
    path.cubicTo(size.width-50, 100, 100, 0, 0, 50);


    // path.moveTo(0, 50);
    // path.cubicTo(c3.dx, c3.dy, c4.dx, c4.dy, size.width, size.height-100);
    // path.lineTo(size.width+50, 0);
    // path.lineTo(size.width, size.height-50);
    // path.cubicTo(c1.dx, c1.dy, c2.dx, c2.dy, 0, size.height-50);
    //path.lineTo(0, size.height);



    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

//Arc To Point
class CustomClipperArcToPoint extends StatelessWidget {
  const CustomClipperArcToPoint({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          height: 150,
          color: Colors.blue,
          child: ClipPath(
            child: Container(
              color: Colors.black,
            ),
            clipper: CustomClipperArcToPointClass(),
          ),
        ),
        SizedBox(width: 20),
        Text("ARC TO POİNT")
      ],
    );
  }
}
class CustomClipperArcToPointClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {

    var _w = size.width;
    var _h = size.height;
    double radius = 40;
    var path = Path()

    ..moveTo(radius, 20)
    ..lineTo(_w-radius, 20)  //p1
    ..arcToPoint(Offset(_w-20, radius))  //p2
    ..lineTo(_w-20, _h-radius) //p3
    ..arcToPoint(Offset(_w-radius, _h-20), radius: Radius.circular(radius)) //p4
    ..lineTo(radius, _h-20) //p5
    ..arcToPoint(Offset(20,_h-radius), radius: Radius.circular(radius),clockwise: false) //p6
    ..lineTo(20, radius) //p7
    ..arcToPoint(Offset(radius,20),radius: Radius.elliptical(60, radius)) //p8
    ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
