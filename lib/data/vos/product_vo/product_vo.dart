// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flut_api/data/vos/category_vo/category_vo.dart';
import 'package:flut_api/data/vos/created_by_vo/created_by_vo.dart';

class ProductVO {
  String id;
  String title;
  int price;
  CategoryVO category;
  String description;
  CreatedByVO createdBy;
  String createdAt;
  String updatedAt;
  String slug;
  String image;

  
  ProductVO({
    required this.id,
    required this.title,
    required this.price,
    required this.category,
    required this.description,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    required this.slug,
    required this.image,
  });

  


  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'title': title,
      'price': price,
      'category': category.toMap(),
      'description': description,
      'createdBy': createdBy.toMap(),
      'createdAt': createdAt,
      'updatedAt': updatedAt,
      'slug': slug,
      'image': image,
    };
  }

  factory ProductVO.fromMap(Map<String, dynamic> map) {
    return ProductVO(
      id: map['_id'] as String,
      title: map['title'] as String,
      price: map['price'] as int,
      category: CategoryVO.fromMap(map['category'] as Map<String,dynamic>),
      description: map['description'] as String,
      createdBy: CreatedByVO.fromMap(map['createdBy'] as Map<String,dynamic>),
      createdAt: map['createdAt'] as String,
      updatedAt: map['updatedAt'] as String,
      slug: map['slug'] as String,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductVO.fromJson(String source) => ProductVO.fromMap(json.decode(source) as Map<String, dynamic>);
}
