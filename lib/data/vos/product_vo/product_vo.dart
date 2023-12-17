// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flut_api/data/vos/category_vo/category_vo.dart';
import 'package:flut_api/data/vos/created_by_vo/created_by_vo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product_vo.g.dart';
@JsonSerializable()
class ProductVO {
  @JsonKey(name: "_id")
  final String  id;
  @JsonKey(name: "title")
  final String  title;
  @JsonKey(name: "price")
  final int  price;
  @JsonKey(name: "category")
  final CategoryVO category;
  @JsonKey(name: "description")
  final String? description;
  @JsonKey(name: "createdBy")
  final CreatedByVO createdBy;
  @JsonKey(name: "createdAt")
  final String  createdAt;
  @JsonKey(name: "updatedAt")
  final String   updatedAt;
  @JsonKey(name: "slug")
  final String  slug;
  @JsonKey(name: "image")
  final String ? image;


  ProductVO(this.id, this.title, this.price, this.category, this.description, this.createdBy, this.createdAt, this.updatedAt, this.slug, this.image,);


  factory ProductVO.fromJson(Map<String,dynamic>json)=> _$ProductVOFromJson(json);

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'title': title,
  //     'price': price,
  //     'category': category.toMap(),
  //     'description': description,
  //     'createdBy': createdBy.toMap(),
  //     'createdAt': createdAt,
  //     'updatedAt': updatedAt,
  //     'slug': slug,
  //     'image': image,
  //   };
  // }

  // factory ProductVO.fromMap(Map<String, dynamic> map) {
  //   return ProductVO(
  //     map['_id'] as String,
  //     map['title']as String ,
  //     map['price'] as int ,
  //     CategoryVO.fromMap(map['category'] as Map<String,dynamic>),
  //     map['description'] as String?,
  //     CreatedByVO.fromMap(map['createdBy'] as Map<String,dynamic>),
  //     map['createdAt'] as String ,
  //     map['updatedAt']as String,
  //     map['slug'] as String,
  //     map['image'] as String?
  //   );
  // }

  // // String toJson() => json.encode(toMap());

  // factory ProductVO.fromJson(String source) => ProductVO.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() {
  //   return 'ProductVO(id: $id, title: $title, price: $price, category: $category, description: $description, createdBy: $createdBy, createdAt: $createdAt, updatedAt: $updatedAt, slug: $slug, image: $image)';
  // }
}
