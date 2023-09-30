// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Bukus> productFromJson(String str) =>
    List<Bukus>.from(json.decode(str).map((x) => Bukus.fromJson(x)));

String productToJson(List<Bukus> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Bukus {
  final int id;
  final String title;
  final String author;
  final String priceRent;
  final String bookCategory;

  Bukus({
    required this.id,
    required this.title,
    required this.author,
    required this.priceRent,
    required this.bookCategory,
  });

  factory Bukus.fromJson(Map<String, dynamic> json) => Bukus(
        id: json["Id"],
        title: json["Title"],
        author: json["author"],
        priceRent: json["Price_rent"],
        bookCategory: json["Book_category"],
      );

  Map<String, dynamic> toJson() => {
        "Id": id,
        "Title": title,
        "author": author,
        "Price_rent": priceRent,
        "Book_category": bookCategory,
      };
}
