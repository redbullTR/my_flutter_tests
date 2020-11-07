import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_tests/widget_templates/card_design_colors.dart';
import 'package:my_flutter_tests/widget_templates/card_design_widget.dart';

class FlutterSwiper extends StatelessWidget {

  final List<CardSwiperModel> cardSwipe =[];

  @override
  Widget build(BuildContext context) {

    cardSwipe.add(CardSwiperModel("12 4507","01/22","Damla ÖZSOY",CardDesignColors().cardColorsPurple,CardDesignColors().cardLogoVisa));
    cardSwipe.add(CardSwiperModel("12 4500","01/24","Hüseyin ÖZSOY",CardDesignColors().cardColorsBlue,CardDesignColors().cardLogoMasterCard));
    cardSwipe.add(CardSwiperModel("12 4200","01/26","Duru ÖZSOY",CardDesignColors().cardColorsGreen,CardDesignColors().cardLogoMasterCard));

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Swiper"),
        ),
        body: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return CardDesignWidget(
                     //cardNumber: RPSCustomPainter().cardColorPaint[1].red,
                     //cardNumber: cardSwipe[index].cardNumber,
                    // cardValidDate: cardSwipe[index].cardValidDate,
                    // cardOwn: cardSwipe[index].cardOwn,
                    // cardColor: cardSwipe[index].cardColor,
                    // cardLogo: cardSwipe[index].cardLogo);
            );
          },
          itemCount: cardSwipe.length,
          viewportFraction: 0.9,
          scale: 1.1,
          layout: SwiperLayout.STACK,
          itemWidth: 325,
          //itemWidth: MediaQuery.of(context).size.width / 1.1,
          itemHeight: 220,
        ));
  }
}

class CardSwiperModel{

  String cardNumber;
  String cardValidDate;
  String cardOwn;
  List<Color> cardColor;
  String cardLogo;

  CardSwiperModel(this.cardNumber, this.cardValidDate, this.cardOwn,
      this.cardColor, this.cardLogo);
}
