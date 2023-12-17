

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flut_api/data/vos/created_by_vo/created_by_vo.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_vo.g.dart';

@JsonSerializable()
class CategoryVO {

  @JsonKey(name: "_id")
  final String id;

  @JsonKey(name: "name")
  final String name;

  @JsonKey(name: "slug")
  final String slug;

  CategoryVO(this.id,this.name,this.slug,);


  factory CategoryVO.fromJson(Map<String,dynamic> json)=> _$CategoryVOFromJson(json);

}
  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'id': id,
  //     'name': name,
  //     'slug': slug,
  //   };
  // }

  // factory CategoryVO.fromMap(Map<String, dynamic> map) {
  //   return CategoryVO(
  //     id: map['_id'] as String,
  //     name: map['name'] as String,
  //     slug: map['slug'] as String,
  //   );
  // }

  // String toJson() => json.encode(toMap());

  // factory CategoryVO.fromJson(String source) => CategoryVO.fromMap(json.decode(source) as Map<String, dynamic>);

  // @override
  // String toString() => 'CategoryVO(id: $id, name: $name, slug: $slug)';

