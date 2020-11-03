import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {

  final String cardNumber;
  final String cardValidDate;
  final String cardOwn;
  final List<Color> cardColor;
  final String cardLogo;

  CardDesign({this.cardNumber, this.cardValidDate, this.cardOwn, this.cardColor, this.cardLogo});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black54, offset: Offset(10, 15), blurRadius: 10),
          ],
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: cardColor),
        ),
        margin: EdgeInsets.all(15),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 3.2,
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
                        "XXXX XXXX XX"+cardNumber,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            shadows: [
                              Shadow(
                                color: Colors.black,
                              offset: Offset(3,5),blurRadius: 15)
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
                        style: TextStyle(fontSize: 8, color: Colors.white,shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(3,5),blurRadius: 15)
                        ]),

                      ),
                      SizedBox(width: 10),
                      Text(
                        cardValidDate,
                        style: TextStyle(fontSize: 24, color: Colors.white,shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(3,5),blurRadius: 15)
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
                        style: TextStyle(fontSize: 24, color: Colors.white,shadows: [
                          Shadow(
                              color: Colors.black,
                              offset: Offset(3,5),blurRadius: 15)
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
    );
  }
}
