import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:retrome/features/user/network/model/user_model.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: "https://64900e8a1e6aa71680ca71f3.mockapi.io/api/v1/info/")
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('?limit=20')
  Future<List<UserModel>> getUser({@Query('page') int page = 1});
}
