import 'package:buddy_app/ui/constant/constant.dart';
import 'package:buddy_app/ui/widgets/app_widgets.dart';
import 'package:buddy_app/ui/widgets/home_body.dart';
import 'package:flutter/material.dart';

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
