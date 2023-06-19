import 'package:retrome/features/user/network/model/user_model.dart';
import 'package:retrome/features/user/network/service/api_service.dart';
import 'package:retrome/common/service_locator.dart';
import 'package:retrome/common/dio_client.dart';
import '../../../common/loading_widget.dart';
import 'package:flutter/material.dart';

class User extends StatefulWidget {
  static const String route = "/user";
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: FutureBuilder(
        future: ApiService(sl<DioClient>().dio).getUser(),
        builder: (ctx, snapshot) {
          if (snapshot.hasData) {
            List<UserModel> users = snapshot.data!;
            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (ctx, idx) {
                var user = users[idx];
                return ListTile(
                  leading: Text('${idx + 1}'),
                  title: Text(user.name.toString()),
                  subtitle: Text("${user.phone}"),
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
