import 'dart:ui';

import 'package:buddy_app/ui/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'do_page.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            AppWidget(
              image: "assets/images/cont.png",
              tagline: 'Contribute &\nSpread the Love',
              imageTop: 60,
            ),
            SingleChildScrollView(child: BodyWidget()),
          ],
        ),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 234),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(36),
          color: Color(0xFFFEFEFE),
        ),
        padding: EdgeInsets.only(top: 26, left: 22, right: 22, bottom: 100),
        child: Column(
          children: <Widget>[
            Center(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: RaisedButton(
                      onPressed: () {},
                      color: Color(0XFFEE0000),
                      child: Text(
                        'Become a Volunteer',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(26),
                      ),
                    ),
                  ),
                  RaisedButton(
                    onPressed: () {},
                    color: Color(0XFFEE0000),
                    child: Text(
                      'Donate',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(26),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text('Our Volunteers of the Month',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
              ],
            ),
            SizedBox(
              height: 20,
            ),
            InfoCard('Volunteer #1 Name', 'University: North South University'),
            SizedBox(
              height: 20,
            ),
            InfoCard('Volunteer #2 Name',
                'University: American International University'),
            SizedBox(
              height: 20,
            ),
            InfoCard('Volunteer #3 Name', 'University: University of Dhaka'),
          ],
        ),
      ),
    );
  }
}
