import 'package:get_it/get_it.dart';
import 'package:retrome/common/dio_client.dart';

GetIt sl = GetIt.instance;

void setupLocator() {
  sl.registerLazySingleton<DioClient>(() => DioClient());
}
