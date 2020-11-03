import 'package:flutter/material.dart';
import 'package:my_flutter_tests/widget_templates/card_design.dart';
import 'package:my_flutter_tests/widget_templates/card_design_colors.dart';

class CardLists extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card List"),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CardDesign(cardNumber: "04 5500", cardValidDate: "02/20", cardOwn: "Huseyin Özsoy", cardColor: CardDesignColors().cardColorsBlack, cardLogo: CardDesignColors().cardLogoVisa,),
              CardDesign(cardNumber: "04 5500", cardValidDate: "02/20", cardOwn: "Huseyin Özsoy", cardColor: CardDesignColors().cardColorsBlue, cardLogo: CardDesignColors().cardLogoMasterCard,),
              CardDesign(cardNumber: "04 5500", cardValidDate: "02/20", cardOwn: "Huseyin Özsoy", cardColor: CardDesignColors().cardColorsGreen, cardLogo: CardDesignColors().cardLogoMasterCard,),
              CardDesign(cardNumber: "04 5500", cardValidDate: "02/20", cardOwn: "Huseyin Özsoy", cardColor: CardDesignColors().cardColorsGrey, cardLogo: CardDesignColors().cardLogoMasterCard,),
              CardDesign(cardNumber: "04 5500", cardValidDate: "02/20", cardOwn: "Huseyin Özsoy", cardColor: CardDesignColors().cardColorsPurple, cardLogo: CardDesignColors().cardLogoMasterCard,),
              CardDesign(cardNumber: "04 5500", cardValidDate: "02/20", cardOwn: "Huseyin Özsoy", cardColor: CardDesignColors().cardColorsRed, cardLogo: CardDesignColors().cardLogoMasterCard,),
            ],
          ),
        ),
      ),
      );
  }
}
