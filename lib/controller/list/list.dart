import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:nubank/model/list.dart';
import 'package:nubank/provider/list.dart';

part 'list.g.dart';

class ListController = _ListController with _$ListController;

abstract class _ListController with Store {
  @observable
  ObservableList<ListCard> cards = new ObservableList();

  @action
  getCards() async {
    ListProvider api = new ListProvider();

    cards = ObservableList.of((await api.getList()).map<ListCard>((list) {
      return ListCard.fromJson(list);
    }).toList());
  }
}
