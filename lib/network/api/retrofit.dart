
import 'package:dio/dio.dart';
import 'package:flut_api/network/response/product_response.dart';
import 'package:retrofit/http.dart';

part 'retrofit.g.dart';
@RestApi(baseUrl: "https://api.storerestapi.com")
abstract class ProductAPI{
  factory ProductAPI(Dio dio)=> _ProductAPI(dio);

  @GET("/products")
  Future<ProductResponse>getAllProducts();
}