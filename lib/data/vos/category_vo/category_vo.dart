import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class CategoryVO {

  final String id;

  final String name;

  final String slug;

  CategoryVO({
    required this.id,
    required this.name,
    required this.slug,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
    };
  }

  factory CategoryVO.fromMap(Map<String, dynamic> map) {
    return CategoryVO(
      id: map['_id'] as String,
      name: map['name'] as String,
      slug: map['slug'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryVO.fromJson(String source) => CategoryVO.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'CategoryVO(id: $id, name: $name, slug: $slug)';
}
