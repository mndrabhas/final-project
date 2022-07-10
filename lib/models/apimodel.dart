// To parse this JSON data, do
//
//     final mApi = mApiFromJson(jsonString);

import 'dart:convert';

List<MApi> mApiFromJson(String str) =>
    List<MApi>.from(json.decode(str).map((x) => MApi.fromJson(x)));

String mApiToJson(List<MApi> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MApi {
  MApi({
    this.id,
    this.name,
    this.description,
    this.price,
    this.stars,
    this.people,
    this.selectedPeople,
    this.img,
    this.location,
    this.createdAt,
    this.updatedAt,
  });

  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  int? people;
  int? selectedPeople;
  String? img;
  String? location;
  DateTime? createdAt;
  DateTime? updatedAt;

  factory MApi.fromJson(Map<String, dynamic> json) => MApi(
        id: json["id"],
        name: json["name"],
        description: json["description"],
        price: json["price"],
        stars: json["stars"],
        people: json["people"],
        selectedPeople: json["selected_people"],
        img: json["img"],
        location: json["location"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "description": description,
        "price": price,
        "stars": stars,
        "people": people,
        "selected_people": selectedPeople,
        "img": img,
        "location": location,
        "created_at": createdAt.toString(),
        "updated_at": updatedAt.toString(),
      };
}
