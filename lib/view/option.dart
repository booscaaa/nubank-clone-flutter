import 'package:flutter/material.dart';

class OptionPage extends StatefulWidget {
  @override
  _OptionPageState createState() => _OptionPageState();
}

class _OptionPageState extends State<OptionPage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        color: Theme.of(context).primaryColor,
        child: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            SizedBox(width: 100, child: Image.asset("images/qr.png")),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Banco ",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          "260 - Nu Pagamentos S.A.",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Agência ",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          "XXXX",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Conta ",
                          style: TextStyle(color: Colors.white, fontSize: 10),
                        ),
                        Text(
                          "XXXXXXX-X",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                )),
            Divider(
              color: Colors.white,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Me ajuda",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Perfil",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.attach_money,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Configurar NuConta",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.credit_card,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Configurar Cartão",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.card_giftcard,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Configurar Rewards",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Icon(
                        Icons.mobile_screen_share,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Configurações do app",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
            Divider(
              color: Colors.white,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlineButton(
                onPressed: () {},
                color: Colors.white,
                disabledBorderColor: Colors.white,
                highlightedBorderColor: Colors.white,
                textColor: Colors.white,
                borderSide: BorderSide(color: Colors.white),
                child: Text(
                  "SAIR DO APP",
                  style: TextStyle(fontSize: 12),
                ),
              ),
            )
          ],
        )));
  }
}
