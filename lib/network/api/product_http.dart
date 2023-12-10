import 'package:flut_api/network/response/product_response.dart';
import 'package:http/http.dart'as http;


Future<ProductResponse> fetch()async{
  final uri = Uri.parse("https://api.storerestapi.com/products");
  final response =await http.get(uri);

  if(response.statusCode == 200){
    ProductResponse res = ProductResponse.fromJson(response.body); 
    return res;
  }else {
    throw Exception("failed");
  }
}