import 'package:flutter/material.dart';
import 'package:nubank/model/list.dart';

class ListCardWidget extends StatelessWidget {
  final ListCard card;
  ListCardWidget({this.card});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 4),
        padding: EdgeInsets.all(4),
        width: MediaQuery.of(context).size.height * .10,
        color: Color(0xff9645AC),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              this.card.icon,
              color: Colors.white,
            ),
            Text(
              this.card.title,
              style: TextStyle(color: Colors.white),
            )
          ],
        ));
  }
}
