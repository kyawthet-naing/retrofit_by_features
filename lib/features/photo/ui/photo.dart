import 'package:flutter/material.dart';
import 'package:retrome/common/service_locator.dart';
import 'package:retrome/common/loading_widget.dart';
import 'package:retrome/features/photo/network/model/photo_model.dart';
import 'package:retrome/features/photo/network/service/api_service.dart';
import 'package:retrome/common/dio_client.dart';

class Photo extends StatefulWidget {
  static const String route = "/photo";
  const Photo({super.key});

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Photos'),
      ),
      body: FutureBuilder(
        future: ApiService(sl<DioClient>().dio).getPhoto(),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            List<PhotoModel> photos = snapshot.data!;
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
              ),
              padding: const EdgeInsets.all(5),
              itemCount: photos.length,
              itemBuilder: (ctx, idx) {
                var photo = photos[idx];
                return Container(
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.blue.shade100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Image.network(
                    photo.url!,
                    width: double.infinity,
                    height: double.infinity,
                  ),
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
