import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:nubank/animation/page.dart';
import 'package:nubank/controller/list/list.dart';
import 'package:nubank/controller/page/page.dart' as c;
import 'package:nubank/view/option.dart';
import 'package:nubank/widget/list.dart';
import 'package:nubank/widget/page.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  final pageController = c.PageController();
  final listController = ListController();
  final pageAnimation = PageAnimation();

  @override
  void initState() {
    super.initState();
    _get();
  }

  _get() async {
    await this.pageController.getCards();
    await this.listController.getCards();
    pageAnimation.createController(this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Theme.of(context).primaryColor,
        child: SafeArea(
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Observer(builder: (_) {
                  return Stack(
                    children: <Widget>[
                      Positioned(
                          top: 40,
                          left: 0,
                          right: 0,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                  height: 50,
                                  child: Image.asset("images/nubank.png")),
                              Padding(
                                padding: EdgeInsets.all(5),
                              ),
                              Text('Vinícius',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ],
                          )),
                      Positioned(
                          bottom: 120,
                          left: 0,
                          right: 0,
                          top: 120,
                          child: Opacity(
                              opacity: pageAnimation.getOpacity(context, 0),
                              child: OptionPage())),
                      Positioned(
                          bottom: 40,
                          left: 0,
                          right: 0,
                          child: Opacity(
                              opacity: pageAnimation.getOpacity(context, 1),
                              child: ListWidget(
                                controller: listController,
                              ))),
                      Positioned(
                          top: 0,
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: GestureDetector(
                            onVerticalDragStart: (val) {
                              pageAnimation.dragStart(val, context);
                            },
                            onVerticalDragUpdate: (val) {
                              pageAnimation.updateDrag(val, context);
                            },
                            onVerticalDragEnd: (val) async {
                              pageAnimation.dragEnd(context);
                            },
                            child: Transform.translate(
                                offset: pageAnimation.isAnimate
                                    ? Offset(0, pageAnimation.value)
                                    : pageAnimation.globalCard,
                                child: PageWidget(controller: pageController)),
                          )),
                      // ListCardWidget()
                    ],
                  );
                }))));
  }
}
