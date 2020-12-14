import 'dart:ui';

import 'package:buddy_app/ui/widgets/app_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../constant/constant.dart';

class DoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: <Widget>[
            AppWidget(
              image: "assets/images/do2.png",
              tagline: 'Looking for Free\nConsultant?',
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
            HelpCenterWidget(),
            SizedBox(
              height: spacing(2),
            ),
            Row(
              children: [
                Text('Organizations with Free Consulation',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700))
              ],
            ),
            SizedBox(
              height: spacing(2),
            ),
            InfoCard('Life Spring',
                'community-based mental & physical health institute'),
            SizedBox(
              height: spacing(5),
            ),
            InfoCard('Help Bangladesh',
                'community-based mental & physical health institute'),
            SizedBox(
              height: spacing(5),
            ),
            InfoCard('CIMHS', 'Online interactive therapy website'),
          ],
        ),
      ),
    );
  }
}

class HelpCenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Text(
          'Emergency Phone Numbers',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
            fontSize: 16,
            color: Color(0XFF353535),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          'Emergency Numbers List:',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            fontSize: 12,
            color: Color(0XFF818181),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        NumberCard('10655', 'IEDCR HOTLINE',
            'More numbers: 02-9898796, 01944333222, iedcrcovid19@gmail.com'),
        NumberCard('8821361', 'Institute of Public Health',
            'More numbers: 02-8816459, iph@ld.dghs.gov.bd'),
        NumberCard('55165088', 'Dhaka Medical College',
            'More numbers: 55165001, website: http://www.dmc.gov.bd/'),
      ],
    );
  }
}

class NumberCard extends StatelessWidget {
  var number, title, desc;
  NumberCard(n, t, d) {
    this.number = n;
    this.title = t;
    this.desc = d;
  }
  @override
  Widget build(BuildContext contexy) {
    return Container(
      height: 178,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.phone,
                  color: Color(0XFF834FCD),
                ),
                SizedBox(
                  width: 13,
                ),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    color: Color(
                      0XFF834FCD,
                    ),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 27,
            left: 0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  number,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                ),
              ],
            ),
          ),
          Positioned(
            top: 28,
            right: 28,
            child: RaisedButton(
              onPressed: () {},
              color: Color(0XFFEE0000),
              child: Text(
                'Call Now',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(26),
              ),
            ),
          ),
          Positioned(
            bottom: 17,
            right: 0,
            left: 0,
            child: Text(
              desc,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  var title, description, contact;
  InfoCard(n, d, {c = 'Contact Info'}) {
    this.title = n;
    this.description = d;
    this.contact = c;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [deepBlue, midPurple, midPink],
          begin: Alignment(-1.0, -1.0),
          end: Alignment(1.0, 1.0),
        ),
        borderRadius: BorderRadius.circular(18),
      ),
      padding: EdgeInsets.symmetric(horizontal: 36, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: spacing(0.5),
          ),
          Container(
            width: 166,
            child: Text(
              description,
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                fontSize: 12,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: spacing(1),
          ),
          RaisedButton(
            onPressed: () {},
            color: Color(0XFF8950CA),
            child: Text(
              contact,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
          ),
        ],
      ),
    );
  }
}
