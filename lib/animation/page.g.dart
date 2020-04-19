// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageAnimation on _PageAnimation, Store {
  final _$valueAtom = Atom(name: '_PageAnimation.value');

  @override
  double get value {
    _$valueAtom.context.enforceReadPolicy(_$valueAtom);
    _$valueAtom.reportObserved();
    return super.value;
  }

  @override
  set value(double value) {
    _$valueAtom.context.conditionallyRunInAction(() {
      super.value = value;
      _$valueAtom.reportChanged();
    }, _$valueAtom, name: '${_$valueAtom.name}_set');
  }

  final _$controllerAtom = Atom(name: '_PageAnimation.controller');

  @override
  AnimationController get controller {
    _$controllerAtom.context.enforceReadPolicy(_$controllerAtom);
    _$controllerAtom.reportObserved();
    return super.controller;
  }

  @override
  set controller(AnimationController value) {
    _$controllerAtom.context.conditionallyRunInAction(() {
      super.controller = value;
      _$controllerAtom.reportChanged();
    }, _$controllerAtom, name: '${_$controllerAtom.name}_set');
  }

  final _$globalCardAtom = Atom(name: '_PageAnimation.globalCard');

  @override
  Offset get globalCard {
    _$globalCardAtom.context.enforceReadPolicy(_$globalCardAtom);
    _$globalCardAtom.reportObserved();
    return super.globalCard;
  }

  @override
  set globalCard(Offset value) {
    _$globalCardAtom.context.conditionallyRunInAction(() {
      super.globalCard = value;
      _$globalCardAtom.reportChanged();
    }, _$globalCardAtom, name: '${_$globalCardAtom.name}_set');
  }

  final _$isAnimateAtom = Atom(name: '_PageAnimation.isAnimate');

  @override
  bool get isAnimate {
    _$isAnimateAtom.context.enforceReadPolicy(_$isAnimateAtom);
    _$isAnimateAtom.reportObserved();
    return super.isAnimate;
  }

  @override
  set isAnimate(bool value) {
    _$isAnimateAtom.context.conditionallyRunInAction(() {
      super.isAnimate = value;
      _$isAnimateAtom.reportChanged();
    }, _$isAnimateAtom, name: '${_$isAnimateAtom.name}_set');
  }

  final _$isTopAtom = Atom(name: '_PageAnimation.isTop');

  @override
  bool get isTop {
    _$isTopAtom.context.enforceReadPolicy(_$isTopAtom);
    _$isTopAtom.reportObserved();
    return super.isTop;
  }

  @override
  set isTop(bool value) {
    _$isTopAtom.context.conditionallyRunInAction(() {
      super.isTop = value;
      _$isTopAtom.reportChanged();
    }, _$isTopAtom, name: '${_$isTopAtom.name}_set');
  }

  final _$dragEndAsyncAction = AsyncAction('dragEnd');

  @override
  Future dragEnd(BuildContext context) {
    return _$dragEndAsyncAction.run(() => super.dragEnd(context));
  }

  final _$_PageAnimationActionController =
      ActionController(name: '_PageAnimation');

  @override
  dynamic createController(dynamic home) {
    final _$actionInfo = _$_PageAnimationActionController.startAction();
    try {
      return super.createController(home);
    } finally {
      _$_PageAnimationActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic dragStart(dynamic val, BuildContext context) {
    final _$actionInfo = _$_PageAnimationActionController.startAction();
    try {
      return super.dragStart(val, context);
    } finally {
      _$_PageAnimationActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic updateDrag(dynamic val, dynamic context) {
    final _$actionInfo = _$_PageAnimationActionController.startAction();
    try {
      return super.updateDrag(val, context);
    } finally {
      _$_PageAnimationActionController.endAction(_$actionInfo);
    }
  }

  @override
  double getOpacity(BuildContext context, int val) {
    final _$actionInfo = _$_PageAnimationActionController.startAction();
    try {
      return super.getOpacity(context, val);
    } finally {
      _$_PageAnimationActionController.endAction(_$actionInfo);
    }
  }
}
