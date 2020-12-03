import 'package:GCPrice/data/model/store.dart';

abstract class StoresInterface {
  Future<List<Store>> getStores();
}
