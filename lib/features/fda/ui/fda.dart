import 'package:flutter/material.dart';
import 'package:retrome/common/service_locator.dart';
import 'package:retrome/common/dio_client.dart';
import 'package:retrome/common/loading_widget.dart';
import 'package:retrome/common/error_handler.dart';
import 'package:retrome/features/fda/network/model/fda_model.dart';
import 'package:retrome/features/fda/network/service/api_service.dart';

class FDA extends StatefulWidget {
  static const String route = "/fda";
  const FDA({super.key});

  @override
  State<FDA> createState() => _FDAState();
}

class _FDAState extends State<FDA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FDA'),
      ),
      body: FutureBuilder(
        future: checkError(
          target: () => ApiService(sl<DioClient>().dio).getFDA(),
        ),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            FDAModel fda = snapshot.data!;
            return ListView.builder(
              itemCount: fda.results?.length,
              itemBuilder: (ctx, idx) {
                var product = fda.results![idx];
                return ListTile(
                  leading: Text('${idx + 1}'),
                  title: Text(product.city.toString()),
                  subtitle: Text("${product.productDescription}"),
                );
              },
            );
          } else {
            return const LoadingWidget();
          }
        },
      ),
    );
  }
}
