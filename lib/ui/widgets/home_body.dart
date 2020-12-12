import 'package:flutter/material.dart';
import 'package:buddyapp/ui/constant/constant.dart';
import 'package:buddyapp/ui/view/do_page.dart';

class HomeBody extends StatefulWidget {
  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  double initialPercentage = 0.65;
  TextEditingController regionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 234),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(36), color: Color(0xFFFEFEFE)),
        padding: EdgeInsets.only(top: 26, left: 22, right: 22, bottom: 100),
        child: Column(
          children: <Widget>[
            _buildRegionInput(),
            SizedBox(height: spacing(2)),
            Row(
              children: [
                Cards("Sports"),
                Cards("Health"),
                Cards("Social"),
              ],
            ),
            SizedBox(height: spacing(2)),
            InfoCard("Blog title", "Description", c: "Link"),
            SizedBox(height: spacing(2)),
            InfoCard("Blog title", "Description", c: "Link"),
            SizedBox(height: spacing(2)),
            InfoCard("Blog title", "Description", c: "Link"),
          ],
        ),
      ),
    );
  }

  Widget _buildRegionInput() {
    return Container(
      height: 50.0,
      child: TextField(
        controller: regionController,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.apps),
          hintText: 'Search Category',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(color: Color(0xffE1E1E1), width: 0.8),
          ),
        ),
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}

class Cards extends StatelessWidget {
  var name = "";
  Cards(na) {
    this.name = na;
  }
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        color: Colors.purple,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {},
          child: Container(
            width: 100,
            height: 80,
            child: Center(
              child: Text(
                name,
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
