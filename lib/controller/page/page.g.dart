// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PageController on _PageController, Store {
  final _$cardsAtom = Atom(name: '_PageController.cards');

  @override
  ObservableList<PageCard> get cards {
    _$cardsAtom.context.enforceReadPolicy(_$cardsAtom);
    _$cardsAtom.reportObserved();
    return super.cards;
  }

  @override
  set cards(ObservableList<PageCard> value) {
    _$cardsAtom.context.conditionallyRunInAction(() {
      super.cards = value;
      _$cardsAtom.reportChanged();
    }, _$cardsAtom, name: '${_$cardsAtom.name}_set');
  }

  final _$getCardsAsyncAction = AsyncAction('getCards');

  @override
  Future getCards() {
    return _$getCardsAsyncAction.run(() => super.getCards());
  }
}
