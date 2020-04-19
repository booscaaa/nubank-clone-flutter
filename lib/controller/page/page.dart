import 'package:mobx/mobx.dart';
import 'package:nubank/model/page.dart';
import 'package:nubank/provider/page.dart';

part 'page.g.dart';

class PageController = _PageController with _$PageController;

abstract class _PageController with Store {
  @observable
  ObservableList<PageCard> cards = new ObservableList();

  @action
  getCards() async {
    PageProvider api = new PageProvider();
    cards = ObservableList.of((await api.getPages()).map<PageCard>((card) {
      return PageCard.fromJson(card);
    }).toList());
  }
}
