import 'package:buddy_app/ui/constant/constant.dart';
import 'package:buddy_app/ui/view/do_page.dart';
import 'package:buddy_app/ui/view/home_page.dart';
import 'package:buddy_app/ui/view/main_page.dart';
import 'package:buddy_app/ui/view/splash_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Routes {
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashPage:
        return MaterialPageRoute(builder: (_) => SplashPage());
        break;
      case mainPage:
        return MaterialPageRoute(builder: (_) => MainPage());
        break;
      case homePage:
        return MaterialPageRoute(builder: (_) => HomePage());
        break;
      case doPage:
        return MaterialPageRoute(builder: (_) => DoPage());
        break;
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('404 | Not Found'),
            ),
          ),
        );
    }
  }
}
