import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:retrome/features/fda/network/model/fda_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://api.fda.gov/food/enforcement.json')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('?skip={skip}&limit=20')
  Future<FDAModel> getFDA({@Path() int skip = 0});
}
