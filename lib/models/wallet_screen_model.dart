// To parse this JSON data, do
//
//     final WalletScreenModel = WalletScreenModelFromJson(jsonString);

import 'dart:convert';

WalletScreenModel walletScreenModelFromJson(Map<String, dynamic> json) =>
    WalletScreenModel.fromJson(json);

String walletScreenModelToJson(WalletScreenModel data) =>
    json.encode(data.toJson());

class WalletScreenModel {
  int status;
  String message;
  Data data;

  WalletScreenModel({
    required this.status,
    required this.message,
    required this.data,
  });

  factory WalletScreenModel.fromJson(Map<String, dynamic> json) =>
      WalletScreenModel(
        status: json["status"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
    "status": status,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Wallet wallet;
  List<Product> product;

  Data({required this.wallet, required this.product});

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    wallet: Wallet.fromJson(json["wallet"]),
    product: List<Product>.from(
      json["product"].map((x) => Product.fromJson(x)),
    ),
  );

  Map<String, dynamic> toJson() => {
    "wallet": wallet.toJson(),
    "product": List<dynamic>.from(product.map((x) => x.toJson())),
  };
}

class Product {
  String logo;
  String name;
  int value;
  String title;
  String growthType;
  String walletUnit;
  int growth;

  Product({
    required this.logo,
    required this.name,
    required this.value,
    required this.title,
    required this.growthType,
    required this.walletUnit,
    required this.growth,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    logo: json["logo"],
    name: json["name"],
    value: json["value"],
    title: json["title"],
    growthType: json["growthType"],
    walletUnit: json["walletUnit"],
    growth: json["growth"],
  );

  Map<String, dynamic> toJson() => {
    "logo": logo,
    "name": name,
    "value": value,
    "title": title,
    "growthType": growthType,
    "walletUnit": walletUnit,
    "growth": growth,
  };
}

class Wallet {
  String title;
  String logo;
  //int lastUpdate;
  int walletTotal;
  int growthRate;
  int customers;
  String walletUnit;
  // int cashingDuration;

  Wallet({
    required this.title,
    required this.logo,
    // required this.lastUpdate,
    required this.walletTotal,
    required this.growthRate,
    required this.customers,
    required this.walletUnit,
    //required this.cashingDuration,
  });

  factory Wallet.fromJson(Map<String, dynamic> json) => Wallet(
    title: json["title"],
    logo: json["logo"],
    //lastUpdate: json["lastUpdate"],
    walletTotal: json["walletTotal"],
    growthRate: json["growthRate"],
    customers: json["customers"],
    walletUnit: json["walletUnit"],
    //cashingDuration: json["cashingDuration"],
  );

  Map<String, dynamic> toJson() => {
    "title": title,
    "logo": logo,
    // "lastUpdate": lastUpdate,
    "walletTotal": walletTotal,
    "growthRate": growthRate,
    "customers": customers,
    "walletUnit": walletUnit,
    //"cashingDuration": cashingDuration,
  };
}
