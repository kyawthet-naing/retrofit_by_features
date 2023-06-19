import 'package:retrome/features/home/ui/home.dart';
import 'package:retrome/features/photo/ui/photo.dart';
import 'package:retrome/features/product/ui/product.dart';
import 'package:retrome/features/splash/splash.dart';
import 'package:flutter/cupertino.dart';
import '../features/error/ui/error.dart';
import '../features/fda/ui/quote.dart';
import '../features/user/ui/user.dart';

class Rotues {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Splash.route:
        return _pageRouter(page: const Splash());

      case Home.route:
        return _pageRouter(page: const Home());

      case User.route:
        return _pageRouter(page: const User());

      case Product.route:
        return _pageRouter(page: const Product());

      case Photo.route:
        return _pageRouter(page: const Photo());

      case FDA.route:
        return _pageRouter(page: const FDA());

      case Err.route:
        var err = settings.arguments as String?;
        return _pageRouter(page: Err(err: err));

      default:
        return _pageRouter(page: const Splash());
    }
  }

  static _pageRouter({required Widget page, RouteSettings? settings}) {
    return CupertinoPageRoute(builder: (ctx) => page, settings: settings);
  }
}
