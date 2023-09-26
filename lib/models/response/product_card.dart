// import 'dart:convert';

// ProductIstad productIstadFromJson(String str) =>
//     ProductIstad.fromJson(json.decode(str));

// String productIstadToJson(ProductIstad data) => json.encode(data.toJson());

// class ProductIstad {
//   List<ProductIstadData> data;
//   List<ProductIstadData> productdetail;

//   ProductIstad({
//     required this.data,
//     required this.productdetail,
//   });

//   factory ProductIstad.fromJson(Map<String, dynamic> json) => ProductIstad(
//         data: List<ProductIstadData>.from(
//             json["data"].map((x) => ProductIstadData.fromJson(x))),
//         productdetail: [],
//       );

//   Map<String, dynamic> toJson() => {
//         "data": List<dynamic>.from(data.map((x) => x.toJson())),
//       };
// }

// class ProductIstadData {
//   int id;
//   ProductIstadAttributes attributes;

//   ProductIstadData({
//     required this.id,
//     required this.attributes,
//   });

//   factory ProductIstadData.fromJson(Map<String, dynamic> json) =>
//       ProductIstadData(
//         id: json["id"],
//         attributes: ProductIstadAttributes.fromJson(json["attributes"]),
//       );

//   int get selectedItem => 1;

//   set selectedItem(int newValue) {
//     selectedItem = newValue;
//   }

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "attributes": attributes.toJson(),
//       };
// }

// class ProductIstadAttributes {
//   String title;
//   DateTime createdAt;
//   DateTime updatedAt;
//   DateTime publishedAt;
//   String price;
//   String rating;
//   String description;
//   String quantity;
//   Category category;

//   ProductIstadAttributes({
//     required this.title,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.publishedAt,
//     required this.price,
//     required this.rating,
//     required this.description,
//     required this.quantity,
//     required this.category,
//   });

//   factory ProductIstadAttributes.fromJson(Map<String, dynamic> json) =>
//       ProductIstadAttributes(
//         title: json["title"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         price: json["price"],
//         rating: json["rating"],
//         description: json["description"],
//         quantity: json["quantity"],
//         category: Category.fromJson(json["category"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "publishedAt": publishedAt.toIso8601String(),
//         "price": price,
//         "rating": rating,
//         "description": description,
//         "quantity": quantity,
//         "category": category.toJson(),
//       };
// }

// class Category {
//   Data data;

//   Category({
//     required this.data,
//   });

//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//         data: Data.fromJson(json["data"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "data": data.toJson(),
//       };
// }

// class Data {
//   int id;
//   DataAttributes attributes;

//   Data({
//     required this.id,
//     required this.attributes,
//   });

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         attributes: DataAttributes.fromJson(json["attributes"]),
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "attributes": attributes.toJson(),
//       };
// }

// class DataAttributes {
//   String title;
//   DateTime createdAt;
//   DateTime updatedAt;
//   DateTime publishedAt;
//   String iconUrl;

//   DataAttributes({
//     required this.title,
//     required this.createdAt,
//     required this.updatedAt,
//     required this.publishedAt,
//     required this.iconUrl,
//   });

//   factory DataAttributes.fromJson(Map<String, dynamic> json) => DataAttributes(
//         title: json["title"],
//         createdAt: DateTime.parse(json["createdAt"]),
//         updatedAt: DateTime.parse(json["updatedAt"]),
//         publishedAt: DateTime.parse(json["publishedAt"]),
//         iconUrl: json["iconUrl"],
//       );

//   Map<String, dynamic> toJson() => {
//         "title": title,
//         "createdAt": createdAt.toIso8601String(),
//         "updatedAt": updatedAt.toIso8601String(),
//         "publishedAt": publishedAt.toIso8601String(),
//         "iconUrl": iconUrl,
//       };
// }

// int get selectedItem => 1;

//   set selectedItem(int newValue) {
//     selectedItem = newValue;
//   }

// To parse this JSON data, do
//
//     final productIstadModel = productIstadModelFromJson(jsonString);

// To parse this JSON data, do
//
//     final productIstadModel = productIstadModelFromJson(jsonString);

import 'dart:convert';

ProductIstadModel productIstadModelFromJson(String str) =>
    ProductIstadModel.fromJson(json.decode(str));

String productIstadModelToJson(ProductIstadModel data) =>
    json.encode(data.toJson());

class ProductIstadModel {
  List<ProductIstadData> data;
  Meta meta;

  ProductIstadModel({
    required this.data,
    required this.meta,
  });

  factory ProductIstadModel.fromJson(Map<String, dynamic> json) =>
      ProductIstadModel(
        data: List<ProductIstadData>.from(
            json["data"].map((x) => ProductIstadData.fromJson(x))),
        meta: Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
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

  int get selectedItem => 1;

  set selectedItem(int newValue) {
    selectedItem = newValue;
  }
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
  Thumbnail thumbnail;

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
    required this.thumbnail,
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
  CategoryData? data;

  Category({
    required this.data,
  });

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        data: json["data"] == null ? null : CategoryData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data?.toJson(),
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
  String name;
  dynamic alternativeText;
  dynamic caption;
  int width;
  int height;
  Formats formats;
  String hash;
  Ext ext;
  Mime mime;
  double size;
  String url;
  dynamic previewUrl;
  String provider;
  dynamic providerMetadata;
  DateTime createdAt;
  DateTime updatedAt;

  FluffyAttributes({
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.providerMetadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory FluffyAttributes.fromJson(Map<String, dynamic> json) =>
      FluffyAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromJson(json["formats"]),
        hash: json["hash"],
        ext: extValues.map[json["ext"]]!,
        mime: mimeValues.map[json["mime"]]!,
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats.toJson(),
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

enum Ext { JPG }

final extValues = EnumValues({".jpg": Ext.JPG});

class Formats {
  Small small;
  Small? medium;
  Small thumbnail;
  Small? large;

  Formats({
    required this.small,
    this.medium,
    required this.thumbnail,
    this.large,
  });

  factory Formats.fromJson(Map<String, dynamic> json) => Formats(
        small: Small.fromJson(json["small"]),
        medium: json["medium"] == null ? null : Small.fromJson(json["medium"]),
        thumbnail: Small.fromJson(json["thumbnail"]),
        large: json["large"] == null ? null : Small.fromJson(json["large"]),
      );

  Map<String, dynamic> toJson() => {
        "small": small.toJson(),
        "medium": medium?.toJson(),
        "thumbnail": thumbnail.toJson(),
        "large": large?.toJson(),
      };
}

class Small {
  Ext ext;
  String url;
  String hash;
  Mime mime;
  String name;
  dynamic path;
  double size;
  int width;
  int height;

  Small({
    required this.ext,
    required this.url,
    required this.hash,
    required this.mime,
    required this.name,
    required this.path,
    required this.size,
    required this.width,
    required this.height,
  });

  factory Small.fromJson(Map<String, dynamic> json) => Small(
        ext: extValues.map[json["ext"]]!,
        url: json["url"],
        hash: json["hash"],
        mime: mimeValues.map[json["mime"]]!,
        name: json["name"],
        path: json["path"],
        size: json["size"]?.toDouble(),
        width: json["width"],
        height: json["height"],
      );

  Map<String, dynamic> toJson() => {
        "ext": extValues.reverse[ext],
        "url": url,
        "hash": hash,
        "mime": mimeValues.reverse[mime],
        "name": name,
        "path": path,
        "size": size,
        "width": width,
        "height": height,
      };
}

enum Mime { APPLICATION_OCTET_STREAM }

final mimeValues =
    EnumValues({"application/octet-stream": Mime.APPLICATION_OCTET_STREAM});

class Meta {
  Pagination pagination;

  Meta({
    required this.pagination,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
      };
}

class Pagination {
  int page;
  int pageSize;
  int pageCount;
  int total;

  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
