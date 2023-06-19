import 'package:flutter/material.dart';
import 'package:retrome/features/home/ui/widgets/home_tile.dart';
import 'package:retrome/features/photo/ui/photo.dart';
import 'package:retrome/features/product/ui/product.dart';
import 'package:retrome/features/fda/ui/quote.dart';
import 'package:retrome/features/user/ui/user.dart';

class Home extends StatefulWidget {
  static const String route = "/home";
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("HOME"),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10),
          HomeTile(
            title: "User (mock api)",
            onTap: () {
              Navigator.pushNamed(context, User.route);
            },
          ),
          HomeTile(
            title: "Product (dummy json)",
            onTap: () {
              Navigator.pushNamed(context, Product.route);
            },
          ),
          HomeTile(
            title: "Photo (json placeholder)",
            onTap: () {
              Navigator.pushNamed(context, Photo.route);
            },
          ),
          HomeTile(
            title: "FDA (open fda)",
            onTap: () {
              Navigator.pushNamed(context, FDA.route);
            },
          ),
        ],
      ),
    );
  }
}
