import 'package:flutter/material.dart';
import 'package:nubank/model/page.dart';
import 'package:nubank/widget/account-card.dart';
import 'package:nubank/widget/credit-cart.dart';
import 'package:nubank/widget/rewards-card.dart';

class PageCardWidget extends StatelessWidget {
  final PageCard card;

  PageCardWidget({this.card});

  @override
  Widget build(BuildContext context) {
    switch (this.card.type) {
      case 1:
        return CreditCardWidget(
          card: card,
        );
      case 2:
        return AccountCardWidget(
          card: card,
        );
      case 3:
        return RewardsCardWidget(
          card: card,
        );
    }

    return Container();
  }
}
