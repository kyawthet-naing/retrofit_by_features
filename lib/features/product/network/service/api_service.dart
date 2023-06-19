import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart' hide Headers;
import 'package:retrome/features/product/network/model/product_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://dummyjson.com/')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('product?skip={skip}&limit=20')
  Future<ProductModel> getProducts({@Path() int? skip = 0});

  @GET('product/{id}')
  Future<Products> getProductById({@Path() required int id});
}
