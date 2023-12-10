import 'dart:convert';

import 'package:flut_api/data/vos/fake_vo/fake_vo.dart';
import 'package:http/http.dart'as http;


Future<List<FakeVO>> fetchFakeVO() async{
  final uri =Uri.parse("https://fakestoreapi.com/products");
  final response = await http.get(uri);


  if(response.statusCode ==200){
    List<dynamic> jsonData =jsonDecode(response.body);
    List<FakeVO> data = jsonData.map((e) =>FakeVO.fromMap(e)).toList();
    return data;

}else{
  throw Exception("fail");
}
}