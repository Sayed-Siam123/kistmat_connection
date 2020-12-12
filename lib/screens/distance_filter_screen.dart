import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class DistanceFilterScreen extends StatefulWidget {
  static String ID = "/distance_filter_screen";

  @override
  _DistanceFilterScreenState createState() => _DistanceFilterScreenState();
}

class _DistanceFilterScreenState extends State<DistanceFilterScreen> {
  bool anyAge = false;
  double _values = 10;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SvgPicture.asset(
                    "assets/svg/back.svg",
                    width: 20,
                    height: 20,
                  ),
                ),
                Center(
                  child: CenterText(
                    text: "Location",
                    textColor: Colors.black,
                    fontSize: 25,
                    isBold: true,
                  ),
                )
              ],
            ),
            SizedBox(height: 50),
            Row(
              children: [
                CenterText(
                    text: "Limit by distance",
                    textColor: Colors.black,
                    fontSize: 25,
                    isBold: true),
                Spacer(),
                CupertinoSwitch(
                  activeColor: kPrimaryDarkColor,
                  value: anyAge,
                  onChanged: (bool value) {
                    setState(() {
                      anyAge = value;
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                CenterText(
                    text: "Maximum distance",
                    textColor: Colors.black,
                    fontSize: 20),
                Spacer(),
                CenterText(
                    text: "upto " + _values.toInt().toString() + " miles",
                    textColor: Colors.black,
                    fontSize: 20),
              ],
            ),
            Slider(
                value: _values,
                min: 0,
                max: 100,
                onChanged: (values) {
                  setState(() {
                    _values = values;
                  });
                }),
            SizedBox(height: 30),
            Divider(color: kPrimaryLightColor, thickness: 1),
            SizedBox(height: 30),
            Row(
              children: [
                CenterText(
                    text: "Limit by country",
                    textColor: Colors.black,
                    fontSize: 25,
                    isBold: true),
                Spacer(),
                CupertinoSwitch(
                  activeColor: kPrimaryDarkColor,
                  value: anyAge,
                  onChanged: (bool value) {
                    setState(() {
                      anyAge = value;
                    });
                  },
                )
              ],
            ),
            SizedBox(height: 10),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                  border: Border.all(color: kPrimaryLightColor)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      "assets/svg/filter_location.svg",
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: CenterText(
                          maxLines: 1,
                          text: "London Borough of Ealing, GB",
                          textColor: Colors.black,
                          fontSize: 18),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.check,
                      size: 30,
                      color: kPrimaryLightColor,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Spacer(),
                CenterText(
                    text: "+ Add location",
                    textColor: kPrimaryLightColor,
                    fontSize: 20,
                    isBold: true),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
