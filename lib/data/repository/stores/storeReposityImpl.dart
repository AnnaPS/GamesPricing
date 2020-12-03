import 'package:GCPrice/data/model/store.dart';
import 'package:GCPrice/data/service/storeService.dart';
import 'package:GCPrice/data/repository/stores/storesInterface.dart';

class StoreRepositoryImpl extends StoresInterface {
  StoreService storeService = StoreService();

  @override
  Future<List<Store>> getStores() {
    return storeService.getStores();
  }
}
