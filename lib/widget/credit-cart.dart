import 'package:flutter/material.dart';
import 'package:nubank/model/page.dart';

class CreditCardWidget extends StatelessWidget {
  final PageCard card;

  CreditCardWidget({this.card});

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
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.credit_card,
                              color: Colors.grey,
                            ),
                            Padding(
                              padding: EdgeInsets.all(5),
                            ),
                            Text(
                              this.card.title,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        right: 0,
                        bottom: 0,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'FATURA ATUAL',
                              style: TextStyle(
                                  color: Colors.blue[300],
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              this.card.value,
                              style: TextStyle(
                                  color: Colors.blue[300],
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                          top: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            width: 7,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    color: Colors.orange,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.blue[300],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            ),
                          ))
                    ],
                  ))),
          Expanded(
            child: Container(
              color: Colors.grey.withOpacity(.22),
              child: Stack(
                children: <Widget>[
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 10,
                      child: Icon(
                        Icons.shopping_cart,
                        size: 20,
                      )),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 50,
                      right: 50,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            this.card.description,
                            style: TextStyle(fontSize: 12),
                          )
                        ],
                      )),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      right: 10,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.grey.withOpacity(.5),
                        size: 20,
                      ))
                ],
              ),
            ),
          )
        ])));
  }
}
