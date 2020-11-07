import 'package:flutter/material.dart';
import 'dart:ui' as ui;

import 'package:my_flutter_tests/widget_templates/card_design_colors.dart';

class CardDesignWidget extends StatelessWidget {
  String cardNumber = "45 4506";
  String cardValidDate = "06/20";
  String cardOwn = "Hüseyin Özsoy";
  String cardLogo = "assets/images/mastercard_logo.png";
  List<Color> cardColor = CardDesignColors().cardColorsGreen;
  List<Color> cardColorPaint = CardDesignColors().cardColorsGreenPaint;


  //CardDesignWidget({this.cardNumber, this.cardValidDate, this.cardOwn, this.cardColor, this.cardLogo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 15, right: 15,top: 50),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.2,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black54,
                offset: Offset(10, 15),
                blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: cardColor),
        ),
        child: CustomPaint(
          painter: RPSCustomPainter(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(15),
                child: Image.asset(
                  "assets/images/credit_card_chip.png",
                  width: 36,
                  height: 36,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 15, right: 15, bottom: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          "XXXX XXXX XX" + cardNumber,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: Colors.black,
                                    offset: Offset(3, 5),
                                    blurRadius: 15)
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "VALID\nTHRU",
                          style: TextStyle(
                              fontSize: 8,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: Colors.black,
                                    offset: Offset(3, 5),
                                    blurRadius: 15)
                              ]),
                        ),
                        SizedBox(width: 10),
                        Text(
                          cardValidDate,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: Colors.black,
                                    offset: Offset(3, 5),
                                    blurRadius: 15)
                              ]),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          cardOwn,
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              shadows: [
                                Shadow(
                                    color: Colors.black,
                                    offset: Offset(3, 5),
                                    blurRadius: 15)
                              ]),
                        ),
                        Image.asset(
                          cardLogo,
                          width: 42,
                          height: 42,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
class RPSCustomPainter extends CustomPainter{RPSCustomPainter();

  var color = CardDesignWidget();

@override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint_0.shader = ui.Gradient.linear(Offset(size.width,0),Offset(0,size.height),color.cardColorPaint,[0.00,1.00]);

    Path path_0 = Path();
    path_0.moveTo(15,size.height);
    path_0.quadraticBezierTo(size.width*0.14,size.height*0.50,size.width*0.51,size.height*0.50);
    path_0.quadraticBezierTo(size.width*0.88,size.height*0.58,size.width,20);
    path_0.lineTo(size.width,size.height);
    path_0.lineTo(0,size.height);
    path_0.close();

    canvas.drawPath(path_0, paint_0);


  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }

}


