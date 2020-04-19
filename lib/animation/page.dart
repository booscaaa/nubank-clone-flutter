import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'page.g.dart';

class PageAnimation = _PageAnimation with _$PageAnimation;

abstract class _PageAnimation with Store {
  Animation<double> animation;
  double initial;
  bool getDirection = false;

  @observable
  double value;

  @observable
  AnimationController controller;

  @observable
  Offset globalCard = Offset(0, 0);

  @observable
  bool isAnimate = false;

  @observable
  bool isTop = false;

  @action
  createController(home) {
    this.controller = AnimationController(
        duration: const Duration(milliseconds: 150), vsync: home);

    this.controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        this.isAnimate = false;
        print('end');
      }
    });
  }

  @action
  dragStart(val, BuildContext context) {
    print('start');
    this.initial = val.globalPosition.dy;
    print(this.initial);
  }

  @action
  updateDrag(val, context) {
    if (!getDirection) {
      this.isTop = val.primaryDelta < 0;
      getDirection = true;
    }

    this.globalCard = Offset(
        0,
        !isTop
            ? val.globalPosition.dy - this.initial
            : val.globalPosition.dy - MediaQuery.of(context).size.height * .5);
  }

  @action
  dragEnd(BuildContext context) async {
    this.isAnimate = true;
    if (!this.isTop) {
      animation = Tween<double>(
              begin: this.globalCard.dy,
              end: MediaQuery.of(context).size.height * .5)
          .animate(controller)
            ..addListener(() {
              this.value = animation.value;
            });
      await controller.forward();
      controller.reset();
      this.globalCard = Offset(0, MediaQuery.of(context).size.height * .5);
    } else {
      animation =
          Tween<double>(begin: this.globalCard.dy, end: 0).animate(controller)
            ..addListener(() {
              this.value = animation.value;
            });
      await controller.forward();
      controller.reset();
      this.globalCard = Offset(0, 0);
    }
    getDirection = false;
  }

  @action
  double getOpacity(BuildContext context, int val) {
    if (this.globalCard.dy * 4 / MediaQuery.of(context).size.height * .5 + val >
        0) {
      if (this.globalCard.dy * 4 / MediaQuery.of(context).size.height * .5 +
              val >
          1) {
        return -(this.globalCard.dy *
                4 /
                MediaQuery.of(context).size.height *
                .5 -
            val);
      }
      return this.globalCard.dy * 4 / MediaQuery.of(context).size.height * .5 +
          val;
    } else {
      return 0;
    }
  }
}
