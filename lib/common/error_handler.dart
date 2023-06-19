import 'dart:async';
import 'package:deep_route/deep_route.dart';
import 'package:retrome/features/error/error.dart';

///check error on function
Future<dynamic> checkError({required Function() target}) async {
  try {
    return await target();
  } catch (e) {
    showError(e);
  }
}

///navigate to error page
void showError(Object? e) {
  var er = e.toString();
  if (er.contains('SocketException: Failed host lookup')) {
    er = 'No Internet Connection!';
  }
  DeepRoute.offAndToNamed(Err.route, arguments: er);
}
