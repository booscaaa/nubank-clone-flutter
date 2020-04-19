import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nubank/controller/list/list.dart';
import 'package:nubank/widget/list-card-.dart';

class ListWidget extends StatelessWidget {
  final ListController controller;

  ListWidget({this.controller});

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Container(
          height: MediaQuery.of(context).size.height * .10,
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListCardWidget(
                card: controller.cards[index],
              );
            },
            itemCount: controller.cards.length,
            padding: EdgeInsets.symmetric(horizontal: 18),
            scrollDirection: Axis.horizontal,
          ));
    });
  }
}
