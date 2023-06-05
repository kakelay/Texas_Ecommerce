// To parse this JSON data, do
//
//     final productIstad = productIstadFromJson(jsonString);

import 'dart:convert';

ProductIstad productIstadFromJson(String str) =>
    ProductIstad.fromJson(json.decode(str));

String productIstadToJson(ProductIstad data) => json.encode(data.toJson());

class ProductIstad {
  List<ProductIstadData> data;

  ProductIstad({
    required this.data,
  });

  factory ProductIstad.fromJson(Map<String, dynamic> json) => ProductIstad(
        data: List<ProductIstadData>.from(
            json["data"].map((x) => ProductIstadData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class ProductIstadData {
  int id;
  ProductIstadDataAttributes attributes;

  ProductIstadData({
    required this.id,
    required this.attributes,
  });

  factory ProductIstadData.fromJson(Map<String, dynamic> json) =>
      ProductIstadData(
        id: json["id"],
        attributes: ProductIstadDataAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class ProductIstadDataAttributes {
  String title;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  String price;
  String rating;
  String description;
  String quantity;
  Category category;
  Thumbnail thumbnail;

  ProductIstadDataAttributes({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.price,
    required this.rating,
    required this.description,
    required this.quantity,
    required this.category,
    required this.thumbnail,
  });

  factory ProductIstadDataAttributes.fromJson(Map<String, dynamic> json) =>
      ProductIstadDataAttributes(
        title: json["title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        price: json["price"],
        rating: json["rating"],
        description: json["description"],
        quantity: json["quantity"],
        category: Category.fromJson(json["category"]),
        thumbnail: Thumbnail.fromJson(json["thumbnail"]),
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
        "thumbnail": thumbnail.toJson(),
      };
}

class Category {
  CategoryData data;

  Category({
    required this.data,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        data: CategoryData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class CategoryData {
  int id;
  PurpleAttributes attributes;

  CategoryData({
    required this.id,
    required this.attributes,
  });

  factory CategoryData.fromJson(Map<String, dynamic> json) => CategoryData(
        id: json["id"],
        attributes: PurpleAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class PurpleAttributes {
  String title;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime publishedAt;
  String iconUrl;

  PurpleAttributes({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.iconUrl,
  });

  factory PurpleAttributes.fromJson(Map<String, dynamic> json) =>
      PurpleAttributes(
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

class Thumbnail {
  ThumbnailData data;

  Thumbnail({
    required this.data,
  });

  factory Thumbnail.fromJson(Map<String, dynamic> json) => Thumbnail(
        data: ThumbnailData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class ThumbnailData {
  int id;
  FluffyAttributes attributes;

  ThumbnailData({
    required this.id,
    required this.attributes,
  });

  factory ThumbnailData.fromJson(Map<String, dynamic> json) => ThumbnailData(
        id: json["id"],
        attributes: FluffyAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class FluffyAttributes {
  String url;

  FluffyAttributes({
    required this.url,
  });

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) =>
      FluffyAttributes(
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "url": url,
      };
}
