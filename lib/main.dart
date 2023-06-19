import 'package:deep_route/deep_material_app.dart';
import 'package:retrome/routes/routes.dart';
import 'package:flutter/material.dart';
import 'common/service_locator.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const DeepMaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Rotues.onGenerateRoute,
    );
  }
}
