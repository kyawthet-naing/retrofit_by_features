import 'package:flutter/material.dart';
import 'package:retrome/common/loading_widget.dart';
import 'package:retrome/features/home/ui/home.dart';

class Splash extends StatefulWidget {
  static const String route = "/";
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _goNxt();
    super.initState();
  }

  _goNxt() async {
    await Future.delayed(const Duration(seconds: 2)).then((_) {
      Navigator.pushNamedAndRemoveUntil(context, Home.route, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoadingWidget(),
    );
  }
}
