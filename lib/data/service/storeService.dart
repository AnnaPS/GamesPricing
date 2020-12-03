import 'dart:convert';

import 'package:GCPrice/data/model/store.dart';
import 'package:http/http.dart' as http;

class StoreService {
  final String _STORES = "https://www.cheapshark.com/api/1.0/stores";

  Future<List<Store>> getStores() async {
    var response = await http.get(_STORES);
    var results = jsonDecode(response.body) as List;
    return results
        .map((characterJson) => Store.fromJson(characterJson))
        .toList();
  }
}
