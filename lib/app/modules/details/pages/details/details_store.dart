import 'package:mobx/mobx.dart';

part 'details_store.g.dart';

class DetailsStore = _DetailsStoreBase with _$DetailsStore;

abstract class _DetailsStoreBase with Store {
  @observable
  int quantidade = 1;

  @observable
  bool isFav = false;

  @action
  void incrementQuantidade() {
    quantidade++;
  }

  @action
  void decrementQuantidade() {
    if (quantidade > 0) {
      quantidade--;
    }
  }

  @action
  void setFav() {
    isFav = !isFav;
  }
}
