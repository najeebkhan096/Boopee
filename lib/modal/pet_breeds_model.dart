import 'dart:convert';

class PetBreeds {
  Collection collection;
  List<PetBreedsData> data;

  PetBreeds({
    required this.collection,
    required this.data,
  });

  PetBreeds copyWith({
    Collection? collection,
    List<PetBreedsData>? data,
  }) =>
      PetBreeds(
        collection: collection ?? this.collection,
        data: data ?? this.data,
      );

  factory PetBreeds.fromJson(Map<String, dynamic> json) => PetBreeds(
        collection: Collection.fromMap(json["collection"]),
        data: List<PetBreedsData>.from(
            json["data"].map((x) => PetBreedsData.fromMap(x))),
      );

  String toJson() => json.encode(toMap());

  Map<String, dynamic> toMap() => {
        "collection": collection.toMap(),
        "data": List<dynamic>.from(data.map((x) => x.toMap())),
      };
}

class Collection {
  String url;
  int count;
  int total;
  int pages;
  String next;
  String prev;
  String first;
  String last;

  Collection({
    required this.url,
    required this.count,
    required this.total,
    required this.pages,
    required this.next,
    required this.prev,
    required this.first,
    required this.last,
  });

  Collection copyWith({
    String? url,
    int? count,
    int? total,
    int? pages,
    String? next,
    String? prev,
    String? first,
    String? last,
  }) =>
      Collection(
        url: url ?? this.url,
        count: count ?? this.count,
        total: total ?? this.total,
        pages: pages ?? this.pages,
        next: next ?? this.next,
        prev: prev ?? this.prev,
        first: first ?? this.first,
        last: last ?? this.last,
      );

  factory Collection.fromMap(Map<String, dynamic> json) => Collection(
        url: json["url"],
        count: json["count"],
        total: json["total"],
        pages: json["pages"],
        next: json["next"],
        prev: json["prev"],
        first: json["first"],
        last: json["last"],
      );

  Map<String, dynamic> toMap() => {
        "url": url,
        "count": count,
        "total": total,
        "pages": pages,
        "next": next,
        "prev": prev,
        "first": first,
        "last": last,
      };
}

class PetBreedsData {
  String id;
  String name;
  String caption;
  DateTime created;
  DateTime modified;

  PetBreedsData({
    required this.id,
    required this.name,
    required this.caption,
    required this.created,
    required this.modified,
  });

  PetBreedsData copyWith({
    String? id,
    String? name,
    String? caption,
    DateTime? created,
    DateTime? modified,
  }) =>
      PetBreedsData(
        id: id ?? this.id,
        name: name ?? this.name,
        caption: caption ?? this.caption,
        created: created ?? this.created,
        modified: modified ?? this.modified,
      );

  factory PetBreedsData.fromMap(Map<String, dynamic> json) => PetBreedsData(
        id: json["id"],
        name: json["name"],
        caption: json["caption"],
        created: DateTime.parse(json["created"]),
        modified: DateTime.parse(json["modified"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "caption": caption,
        "created": created.toIso8601String(),
        "modified": modified.toIso8601String(),
      };
}
