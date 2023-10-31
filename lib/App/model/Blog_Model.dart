// To parse this JSON data, do
//
//     final Blog_controller = blogFromJson(jsonString);

import 'dart:convert';

List<Blog_Model> blogFromJson(String str) =>
    List<Blog_Model>.from(json.decode(str).map((x) => Blog_Model.fromJson(x)));

String blogToJson(List<Blog_Model> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Blog_Model {
  int userId;
  int id;
  String title;
  String body;

  Blog_Model({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  factory Blog_Model.fromJson(Map<String, dynamic> json) => Blog_Model(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
