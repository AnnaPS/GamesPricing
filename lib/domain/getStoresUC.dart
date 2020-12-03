import 'package:GCPrice/data/model/store.dart';
import 'package:GCPrice/data/repository/stores/storeReposityImpl.dart';

class GetStoresUseCase {
  final repository = StoreRepositoryImpl();

  Future<List<Store>> getStores() async {
    return repository.getStores();
  }
}
