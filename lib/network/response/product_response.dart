// ignore_for_file: public_member_api_docs, sort_constructors_first



import 'package:json_annotation/json_annotation.dart';

import 'package:flut_api/data/vos/product_vo/product_vo.dart';

part 'product_response.g.dart';
@JsonSerializable()
class ProductResponse {
  @JsonKey(name: "data")
  List<ProductVO> data;
  @JsonKey(name: "status")
  int status;
  @JsonKey(name: "message")
  String  message;
  ProductResponse(
     this.data,
    this.status,
     this.message,
  );

    factory ProductResponse.fromJson(Map<String,dynamic> json)=>_$ProductResponseFromJson(json);

 


  @override
  String toString() => 'ProductResponse(data: $data, status: $status, message: $message)';
}
 // Map<String, dynamic> toMap() {
//   //   return <String, dynamic>{
//   //     'data': data.map((x) => x.toMap()).toList(),
//   //     'status': status,
//   //     'message': message,
//   //   };
//   // }

//   factory ProductResponse.fromMap(Map<String, dynamic> map) {
//     return ProductResponse(
//       data: List<ProductVO>.from((map['data'] as List<dynamic>).map<dynamic>((x) => ProductVO.fromMap(x as Map<String,dynamic>),),),
//       status: map['status'] as int,
//       message: map['message'],
//     );
//   }

//   // String toJson() => json.encode(toMap());

//   factory ProductResponse.fromJson(String source) => ProductResponse.fromMap(json.decode(source) as Map<String, dynamic>);

//   @override
//   String toString() => 'ProductResponse(data: $data, status: $status, message: $message)';
// }
