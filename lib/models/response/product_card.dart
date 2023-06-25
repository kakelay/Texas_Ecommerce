 

import 'dart:convert';

ProductIstad productIstadFromJson(String str) =>
    ProductIstad.fromJson(json.decode(str));

String productIstadToJson(ProductIstad data) => json.encode(data.toJson());

class ProductIstad {
  List<ProductIstadData> data;
  List<ProductIstadData> productdetail  ;
 

  ProductIstad({
    required this.data,
     required this.productdetail,
       
     
  });

  factory ProductIstad.fromJson(Map<String, dynamic> json) => ProductIstad(
        data: List<ProductIstadData>.from(
            json["data"].map((x) => ProductIstadData.fromJson(x))), productdetail: [],
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ProductIstadData {
  int id;
  ProductIstadAttributes attributes;

  ProductIstadData({
    required this.id,
    required this.attributes,
  });

  factory ProductIstadData.fromJson(Map<String, dynamic> json) =>
      ProductIstadData(
        id: json["id"],
        attributes: ProductIstadAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class ProductIstadAttributes {
  String title;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  String price;
  String rating;
  String description;
  String quantity;
  Category category;

  ProductIstadAttributes({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.price,
    required this.rating,
    required this.description,
    required this.quantity,
    required this.category,
  });

  factory ProductIstadAttributes.fromJson(Map<String, dynamic> json) =>
      ProductIstadAttributes(
        title: json["title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        price: json["price"],
        rating: json["rating"],
        description: json["description"],
        quantity: json["quantity"],
        category: Category.fromJson(json["category"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "price": price,
        "rating": rating,
        "description": description,
        "quantity": quantity,
        "category": category.toJson(),
      };
}

class Category {
  Data data;

  Category({
    required this.data,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        data: Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  int id;
  DataAttributes attributes;

  Data({
    required this.id,
    required this.attributes,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: DataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class DataAttributes {
  String title;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  String iconUrl;

  DataAttributes({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.iconUrl,
  });

  factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
        title: json["title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        iconUrl: json["iconUrl"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "iconUrl": iconUrl,
      };
}
