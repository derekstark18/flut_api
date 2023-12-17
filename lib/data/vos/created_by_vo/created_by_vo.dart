// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:json_annotation/json_annotation.dart';

part 'created_by_vo.g.dart';

@JsonSerializable()
class CreatedByVO {
 @JsonKey(name: "role")
 final String role;
 @JsonKey(name: "_id")
 final  String id;
 @JsonKey(name: "name")
 final  String name;

  CreatedByVO(
    this.role,
    this.id,
   this.name,
  );

  factory CreatedByVO.fromJson(Map<String,dynamic> json) =>_$CreatedByVOFromJson(json);

  


}
//   Map<String, dynamic> toMap() {
//     return <String, dynamic>{
//       'role': role,
//       'id': id,
//       'name': name,
//     };
//   }

//   factory CreatedByVO.fromMap(Map<String, dynamic> map) {
//     return CreatedByVO(
//       role: map['role'] as String,
//       id: map['_id'] as String,
//       name: map['name'] as String,
//     );
//   }

//   String toJson() => json.encode(toMap());

//   factory CreatedByVO.fromJson(String source) => CreatedByVO.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'CreatedByVO(role: $role, id: $id, name: $name)';
// }
