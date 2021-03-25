// To parse this JSON data, do
//
//     final jokes = jokesFromJson(jsonString);

import 'dart:convert';

List<Jokes> jokesFromJson(String str) =>
    List<Jokes>.from(json.decode(str).map((x) => Jokes.fromJson(x)));

String jokesToJson(List<Jokes> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Jokes {
  Jokes({
    this.id,
    this.type,
    this.setup,
    this.punchline,
  });

  int id;
  Type type;
  String setup;
  String punchline;

  factory Jokes.fromJson(Map<String, dynamic> json) => Jokes(
        id: json["id"],
        type: typeValues.map[json["type"]],
        setup: json["setup"],
        punchline: json["punchline"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "type": typeValues.reverse[type],
        "setup": setup,
        "punchline": punchline,
      };
}

enum Type { GENERAL, PROGRAMMING }

final typeValues =
    EnumValues({"general": Type.GENERAL, "programming": Type.PROGRAMMING});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
