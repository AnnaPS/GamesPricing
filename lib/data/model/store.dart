import 'dart:convert';

Store storeFromJson(String str) => Store.fromJson(json.decode(str));

String storeToJson(Store data) => json.encode(data.toJson());

class Store {
  Store({
    this.storeId,
    this.storeName,
    this.isActive,
    this.images,
  });

  String storeId;
  String storeName;
  int isActive;
  Images images;

  factory Store.fromJson(Map<String, dynamic> json) => Store(
        storeId: json["storeID"],
        storeName: json["storeName"],
        isActive: json["isActive"],
        images: Images.fromJson(json["images"]),
      );

  Map<String, dynamic> toJson() => {
        "storeID": storeId,
        "storeName": storeName,
        "isActive": isActive,
        "images": images.toJson(),
      };
}

class Images {
  Images({
    this.banner,
    this.logo,
    this.icon,
  });

  String banner;
  String logo;
  String icon;

  factory Images.fromJson(Map<String, dynamic> json) => Images(
        banner: json["banner"],
        logo: json["logo"],
        icon: json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "banner": banner,
        "logo": logo,
        "icon": icon,
      };
}
