// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flut_api/data/vos/fake_vo/rating_vo.dart';

class FakeVO {
  int  id;
  String title;
  double  price;
  String description;
  String category;
  String image;
  RatingVO rating;
  FakeVO({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });



  factory FakeVO.fromMap(Map<String, dynamic> map) {
    return FakeVO(
      id: map['id'] as int,
      title: map['title'] as String,
      price: (map['price']as num).toDouble(),
      description: map['description'] as String,
      category: map['category'] as String,
      image: map['image'] as String,
      rating: RatingVO.fromMap(map['rating'] as Map<String,dynamic>),
    );
  }

  // String toJson() => json.encode(toMap());

  // factory FakeVO.fromJson(String source) => FakeVO.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'FakeVO(id: $id, title: $title, price: $price, description: $description, category: $category, image: $image, rating: $rating)';
  }
}
