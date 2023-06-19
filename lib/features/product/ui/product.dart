import 'package:flutter/material.dart';
import 'package:retrome/common/error_handler.dart';
import 'package:retrome/common/service_locator.dart';
import 'package:retrome/common/loading_widget.dart';
import 'package:retrome/features/product/network/model/product_model.dart';
import 'package:retrome/features/product/network/service/api_service.dart';
import 'package:retrome/common/dio_client.dart';

class Product extends StatefulWidget {
  static const String route = "/product";
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  List<Products> products = [];
  bool loading = true;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) {
        _getData();
      },
    );
    super.initState();
  }

  Future<void> _getData() async {
    var resp = await checkError(
      target: () => ApiService(sl<DioClient>().dio).getProducts(),
    );
    if (resp is ProductModel) {
      products = resp.products ?? [];
      setState(() => loading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products'),
      ),
      body: loading
          ? const LoadingWidget()
          : ListView.builder(
              itemCount: products.length,
              itemBuilder: (ctx, idx) {
                var product = products[idx];
                return ListTile(
                  leading: Text('${idx + 1}'),
                  title: Text(product.title.toString()),
                  subtitle: Text("Price: ${product.price}\$"),
                );
              },
            ),
    );
  }
}
