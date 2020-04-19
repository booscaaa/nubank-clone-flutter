import 'package:flutter/material.dart';
import 'package:nubank/model/page.dart';

class RewardsCardWidget extends StatelessWidget {
  final PageCard card;

  RewardsCardWidget({this.card});

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.all(20),
        child: Container(
            child: Column(children: <Widget>[
          Expanded(
              flex: 3,
              child: Container(
                  padding: EdgeInsets.all(10),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Icon(
                            Icons.card_giftcard,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 70,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              this.card.value,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 10,
                        right: 10,
                        bottom: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              this.card.description,
                              style: TextStyle(color: Colors.black),
                              textAlign: TextAlign.center,
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Container(
                                height: 50,
                                width: double.infinity,
                                child: OutlineButton(
                                  child: Text(
                                    'ATIVE O SEU REWARDS',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  onPressed: () {},
                                ))
                          ],
                        ),
                      ),
                    ],
                  ))),
        ])));
  }
}
