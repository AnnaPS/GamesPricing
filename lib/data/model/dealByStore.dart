import 'dart:convert';

DealByStore dealByStoreFromJson(String str) =>
    DealByStore.fromJson(json.decode(str));

String dealByStoreToJson(DealByStore data) => json.encode(data.toJson());

class DealByStore {
  DealByStore({
    this.internalName,
    this.title,
    this.metacriticLink,
    this.dealId,
    this.storeId,
    this.gameId,
    this.salePrice,
    this.normalPrice,
    this.isOnSale,
    this.savings,
    this.metacriticScore,
    this.steamRatingText,
    this.steamRatingPercent,
    this.steamRatingCount,
    this.steamAppId,
    this.releaseDate,
    this.lastChange,
    this.dealRating,
    this.thumb,
  });

  String internalName;
  String title;
  String metacriticLink;
  String dealId;
  String storeId;
  String gameId;
  String salePrice;
  String normalPrice;
  String isOnSale;
  String savings;
  String metacriticScore;
  String steamRatingText;
  String steamRatingPercent;
  String steamRatingCount;
  String steamAppId;
  int releaseDate;
  int lastChange;
  String dealRating;
  String thumb;

  factory DealByStore.fromJson(Map<String, dynamic> json) => DealByStore(
        internalName: json["internalName"],
        title: json["title"],
        metacriticLink: json["metacriticLink"],
        dealId: json["dealID"],
        storeId: json["storeID"],
        gameId: json["gameID"],
        salePrice: json["salePrice"],
        normalPrice: json["normalPrice"],
        isOnSale: json["isOnSale"],
        savings: json["savings"],
        metacriticScore: json["metacriticScore"],
        steamRatingText: json["steamRatingText"],
        steamRatingPercent: json["steamRatingPercent"],
        steamRatingCount: json["steamRatingCount"],
        steamAppId: json["steamAppID"],
        releaseDate: json["releaseDate"],
        lastChange: json["lastChange"],
        dealRating: json["dealRating"],
        thumb: json["thumb"],
      );

  Map<String, dynamic> toJson() => {
        "internalName": internalName,
        "title": title,
        "metacriticLink": metacriticLink,
        "dealID": dealId,
        "storeID": storeId,
        "gameID": gameId,
        "salePrice": salePrice,
        "normalPrice": normalPrice,
        "isOnSale": isOnSale,
        "savings": savings,
        "metacriticScore": metacriticScore,
        "steamRatingText": steamRatingText,
        "steamRatingPercent": steamRatingPercent,
        "steamRatingCount": steamRatingCount,
        "steamAppID": steamAppId,
        "releaseDate": releaseDate,
        "lastChange": lastChange,
        "dealRating": dealRating,
        "thumb": thumb,
      };
}
