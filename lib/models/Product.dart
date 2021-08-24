import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Casual shirt Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/img_1.png",
      color: Color(0xFFffffff)),
  Product(
      id: 2,
      title: "Black shirt code",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/img_2.png",
      color: Color(0xFFffffff)),
  Product(
      id: 3,
      title: "Casual shirt Code",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/img_2.png",
      color: Color(0xFFffffff)),
  Product(
      id: 4,
      title: "Casual shirt Code",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/img_1.png",
      color: Color(0xFFffffff)),
  Product(
      id: 5,
      title: "Casual shirt Code",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/shirts3.png",
      color: Color(0xFFffffff)),
  Product(
    id: 6,
    title: "Casual shirt Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/shirts4.png",
    color: Color(0xFFffffff),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
