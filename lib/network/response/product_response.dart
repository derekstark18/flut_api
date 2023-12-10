// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flut_api/data/vos/product_vo/product_vo.dart';

class ProductResponse {

  List<ProductVO> data;
  int status;
  dynamic message;
  ProductResponse({
    required this.data,
    required this.status,
    required this.message,
  });

  // Map<String, dynamic> toMap() {
  //   return <String, dynamic>{
  //     'data': data.map((x) => x.toMap()).toList(),
  //     'status': status,
  //     'message': message,
  //   };
  // }

  factory ProductResponse.fromMap(Map<String, dynamic> map) {
    return ProductResponse(
      data: List<ProductVO>.from((map['data'] as List<dynamic>).map<dynamic>((x) => ProductVO.fromMap(x as Map<String,dynamic>),),),
      status: map['status'] as int,
      message: map['message'],
    );
  }

  // String toJson() => json.encode(toMap());

  factory ProductResponse.fromJson(String source) => ProductResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ProductResponse(data: $data, status: $status, message: $message)';
}
