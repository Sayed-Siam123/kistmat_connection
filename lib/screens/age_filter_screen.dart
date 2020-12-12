import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

class AgeFilterScreen extends StatefulWidget {
  static String ID = "/age_filter_screen";

  @override
  _AgeFilterScreenState createState() => _AgeFilterScreenState();
}

class _AgeFilterScreenState extends State<AgeFilterScreen> {
  bool anyAge = false;
  RangeValues _values = RangeValues(30, 45);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                      text: "Age",
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
                  SizedBox(width: 20),
                  CenterText(
                      text: "Any Age",
                      textColor: Colors.black,
                      fontSize: 20,
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
                  Spacer(),
                  CenterText(
                      text: _values.start.toInt().toString() +
                          "-" +
                          _values.end.toInt().toString() +
                          " years",
                      textColor: Colors.black,
                      fontSize: 20),
                ],
              ),
              RangeSlider(
                  values: _values,
                  min: 18,
                  max: 60,
                  onChanged: (RangeValues values) {
                    setState(() {
                      if (values.end - values.start >= 20) {
                        _values = values;
                      } else {
                        if (_values.start == values.start) {
                          _values =
                              RangeValues(_values.start, _values.start + 20);
                        } else {
                          _values = RangeValues(_values.end - 20, _values.end);
                        }
                      }
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
