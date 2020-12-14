import 'package:buddy_app/config/routes/routes.dart';
import 'package:buddy_app/ui/constant/constant.dart';
import 'package:flutter/material.dart';


class BuddyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appName,
      debugShowCheckedModeBanner: false,
      initialRoute: splashPage,
      onGenerateRoute: Routes().onGenerateRoute,
      theme: ThemeData(
        brightness: Brightness.light,
        fontFamily: 'Poppins',
        primaryColor: Colors.indigo,
      ),
    );
  }
}
