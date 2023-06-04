import 'dart:convert';

class PetTags {
  Collection collection;
  List<PetTagsData> data;

  PetTags({
    required this.collection,
    required this.data,
  });

  PetTags copyWith({
    Collection? collection,
    List<PetTagsData>? data,
  }) =>
      PetTags(
        collection: collection ?? this.collection,
        data: data ?? this.data,
      );

  factory PetTags.fromJson(Map<String, dynamic> json) => PetTags(
        collection: Collection.fromMap(json["collection"]),
        data: List<PetTagsData>.from(
            json["data"].map((x) => PetTagsData.fromMap(x))),
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

class PetTagsData {
  String id;
  String name;
  DateTime created;
  DateTime modified;

  PetTagsData({
    required this.id,
    required this.name,
    required this.created,
    required this.modified,
  });

  PetTagsData copyWith({
    String? id,
    String? name,
    DateTime? created,
    DateTime? modified,
  }) =>
      PetTagsData(
        id: id ?? this.id,
        name: name ?? this.name,
        created: created ?? this.created,
        modified: modified ?? this.modified,
      );

  factory PetTagsData.fromMap(Map<String, dynamic> json) => PetTagsData(
        id: json["id"],
        name: json["name"],
        created: DateTime.parse(json["created"]),
        modified: DateTime.parse(json["modified"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "created": created.toIso8601String(),
        "modified": modified.toIso8601String(),
      };
}
