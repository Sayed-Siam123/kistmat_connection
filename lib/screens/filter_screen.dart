import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kistmat_connection/screens/age_filter_screen.dart';
import 'package:kistmat_connection/screens/distance_filter_screen.dart';
import 'package:kistmat_connection/screens/education_filter_screen.dart';
import 'package:kistmat_connection/screens/ethnicities_filter_screen.dart';
import 'package:kistmat_connection/screens/exercise_filter_screen.dart';
import 'package:kistmat_connection/screens/height_screen.dart';
import 'package:kistmat_connection/screens/marital_status_filter_screen.dart';
import 'package:kistmat_connection/screens/profession_filter_screen.dart';
import 'package:kistmat_connection/screens/religion_filter_screen.dart';
import 'package:kistmat_connection/screens/sectarian_filter_screen.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'height_filter_screen.dart';

class FilterScreen extends StatefulWidget {
  static String ID = "/filter_screen";

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  @override
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
                      text: "Filters",
                      textColor: Colors.black,
                      fontSize: 25,
                      isBold: true,
                    ),
                  )
                ],
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      CenterText(
                          text: "Standard Filters",
                          textColor: kPrimaryDarkColor,
                          fontSize: 20),
                      SizedBox(height: 20),
                      FilterItem(
                        text: "Distance",
                        path: "assets/svg/distance.svg",
                        value: "No  Limit",
                        onClick: () {
                          Navigator.pushNamed(context, DistanceFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItem(
                        text: "Age",
                        path: "assets/svg/cake.svg",
                        value: "21-28 Years",
                        onClick: () {
                          Navigator.pushNamed(context, AgeFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItem(
                        text: "Religion",
                        path: "assets/svg/freligion.svg",
                        value: "Any",
                        onClick: () {
                          Navigator.pushNamed(context, ReligionFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItem(
                        text: "Ethnicity  ",
                        path: "assets/svg/ethnicity.svg",
                        value: "Any",
                        onClick: () {
                          Navigator.pushNamed(
                              context, EthnicitiesFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 40),
                      CenterText(
                          text: "Premium Filters",
                          textColor: kPrimaryDarkColor,
                          fontSize: 20),
                      SizedBox(height: 20),
                      FilterItem(
                        text: "Profession",
                        path: "assets/svg/profession.svg",
                        value: "Doctor",
                        onClick: () {
                          Navigator.pushNamed(
                              context, ProfessionFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItem(
                        text: "Education",
                        path: "assets/svg/edu_cap.svg",
                        value: "Bachelors",
                        onClick: () {
                          Navigator.pushNamed(
                              context, EducationFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItem(
                        text: "Sectarian",
                        path: "assets/svg/sectarian_division.svg",
                        value: "Sectarian",
                        onClick: () {
                          Navigator.pushNamed(
                              context, SecterianFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItem(
                        text: "Marital Status  ",
                        path: "assets/svg/marital_status.svg",
                        value: "Single",
                        onClick: () {
                          Navigator.pushNamed(
                              context, MaritalStatusFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItem(
                        text: "Height",
                        path: "assets/svg/height.svg",
                        value: "5'0\" - 6'0\"",
                        onClick: () {
                          Navigator.pushNamed(context, HeightFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItem(
                        text: "Exercise",
                        path: "assets/svg/gym.svg",
                        value: "Often",
                        onClick: () {
                          Navigator.pushNamed(context, ExerciseFilterScreen.ID);
                        },
                      ),
                      SizedBox(height: 10),
                      FilterItemSwitch(
                        value: false,
                        text: "Children",
                        path: "assets/svg/kids.svg",
                        onClick: () {},
                      ),
                      SizedBox(height: 10),
                      FilterItemSwitch(
                        value: true,
                        text: "Willing to relocate",
                        path: "assets/svg/relocate.svg",
                        onClick: () {},
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FilterItem extends StatelessWidget {
  FilterItem({this.text, this.path, this.value, this.onClick, this.assetsPath});

  String text;
  String path;
  String assetsPath;
  String value;
  Function onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onClick.call();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5, bottom: 5, left: 5),
        child: Container(
          width: double.infinity,
          height: 60,
          child: Row(
            children: [
              SizedBox(width: 15),
              SizedBox(
                width: 30,
                height: 30,
                child: this.assetsPath == null
                    ? SvgPicture.asset(
                        this.path,
                        width: 30,
                        height: 30,
                        fit: BoxFit.fitHeight,
                      )
                    : Image.asset(
                        this.assetsPath,
                        width: 30,
                        height: 30,
                        fit: BoxFit.fitHeight,
                      ),
              ),
              SizedBox(width: 15),
              CenterText(
                  text: this.text,
                  textColor: Colors.black,
                  fontSize: fontSize-1,
                  isBold: true),
              Spacer(),
              CenterText(
                  maxLines: 2,
                  text: this.value,
                  textColor: Colors.black.withOpacity(0.65),
                  fontSize: fontSize-1),
              SizedBox(width: 15),
            ],
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 1.5,
              offset: Offset(0, 0.5), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(5), color: Colors.white),
        ),
      ),
    );
  }
}

class FilterItemSwitch extends StatefulWidget {
  FilterItemSwitch(
      {this.text, this.path, this.onClick, this.value, this.assetsPath});

  String text;
  String path;
  String assetsPath;
  Function onClick;
  bool value;

  @override
  _FilterItemSwitchState createState() => _FilterItemSwitchState();
}

class _FilterItemSwitchState extends State<FilterItemSwitch> {
  @override
  Widget build(BuildContext context) {
    widget.value = widget.value ?? false;

    return InkWell(
      onTap: () {
        widget.onClick.call();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5, bottom: 5, left: 5),
        child: Container(
          width: double.infinity,
          height: 60,
          child: Row(
            children: [
              if (widget.path != null || widget.assetsPath != null)
                SizedBox(width: 15),
              if (widget.path != null || widget.assetsPath != null)
                widget.assetsPath == null
                    ? SvgPicture.asset(
                        this.widget.path,
                        width: 30,
                        height: 30,
                      )
                    : Image.asset(
                        widget.assetsPath,
                        width: 30,
                        height: 30,
                      ),
              SizedBox(width: 15),
              CenterText(
                  text: this.widget.text,
                  textColor: Colors.black,
                  fontSize: widget.path == null && widget.assetsPath == null
                      ? fontSize-3
                      : fontSize-1,
                  isBold: true),
              Spacer(),
              CupertinoSwitch(
                activeColor: kPrimaryDarkColor,
                value: widget.value ?? false,
                onChanged: (bool value) {
                  setState(() {
                    widget.value = value;
                  });
                },
              )
            ],
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
              blurRadius: 1.5,
              offset: Offset(0, 0.5), // changes position of shadow
            ),
          ], borderRadius: BorderRadius.circular(5), color: Colors.white),
        ),
      ),
    );
  }
}
