import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:retrome/features/photo/network/model/photo_model.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/photos')
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('?_page={page}&_limit=20')
  Future<List<PhotoModel>> getPhoto({@Path() int page = 1});
}
