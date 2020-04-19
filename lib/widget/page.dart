import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nubank/controller/page/page.dart' as c;
import 'package:nubank/widget/page-card.dart';
import 'package:page_indicator/page_indicator.dart';

class PageWidget extends StatelessWidget {
  final c.PageController controller;

  PageWidget({this.controller});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * .25),
          child: PageIndicatorContainer(
            child: PageView.builder(
              itemBuilder: (context, index) {
                return PageCardWidget(
                  card: controller.cards[index],
                );
              },
              itemCount: this.controller.cards.length,
            ),
            align: IndicatorAlign.bottom,
            length: this.controller.cards.length,
            indicatorSpace: 5.0,
            padding: const EdgeInsets.all(0),
            indicatorColor: Color(0xff9645AC),
            indicatorSelectorColor: Colors.white,
            shape: IndicatorShape.circle(size: 7),
          ));
    });
  }
}
