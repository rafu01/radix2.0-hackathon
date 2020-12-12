import 'package:flutter/material.dart';
import 'package:buddyapp/ui/constant/constant.dart';
import 'package:buddyapp/ui/widgets/app_widgets.dart';
import 'package:buddyapp/ui/widgets/home_body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Container(
        child: SizedBox.expand(
          child: Stack(
            children: <Widget>[
              AppWidget(
                image: "assets/images/home.png",
                tagline: 'Belive in\nYourself',
                imageTop: 50,
              ),
              SingleChildScrollView(
                child: HomeBody(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
