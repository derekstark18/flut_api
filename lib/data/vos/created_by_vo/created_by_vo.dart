// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CreatedByVO {
  String role;
  String id;
  String name;


  CreatedByVO({
    required this.role,
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
      'id': id,
      'name': name,
    };
  }

  factory CreatedByVO.fromMap(Map<String, dynamic> map) {
    return CreatedByVO(
      role: map['role'] as String,
      id: map['_id'] as String,
      name: map['name'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory CreatedByVO.fromJson(String source) => CreatedByVO.fromMap(json.decode(source) as Map<String, dynamic>);
}
