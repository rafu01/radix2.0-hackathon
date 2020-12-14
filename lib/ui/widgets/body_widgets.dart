import 'package:buddy_app/ui/constant/constant.dart';
import 'package:buddy_app/ui/constant/typography.dart';
import 'package:flutter/material.dart';


class BodyCustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
            InputSearchField(size: size),
            SizedBox(height: spacing(2.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                headingTextMedium(text: "HHHH", color: Colors.grey),
              ],
            ),
            SizedBox(height: spacing(2.5)),
            SizedBox(height: spacing(2.5)),
            // ListBerita(),
            SizedBox(height: spacing(2.5)),
            // BeritaDunia()
          ],
        ),
      ),
    );
  }
}

class InputSearchField extends StatelessWidget {
  const InputSearchField({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: size.width / 1.2,
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          prefixIcon: Icon(
            Icons.pin_drop,
            color: deepBlue,
          ),
          labelText: "Search Category",
          suffixIcon: Icon(Icons.category),
        ),
      ),
    );
  }
}

// Custome Icon
Container buildIconHeader({icon, color}) {
  return Container(
    width: 30,
    height: 30,
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(26.0),
    ),
    child: Center(
      child: Icon(
        icon,
        color: white,
      ),
    ),
  );
}
