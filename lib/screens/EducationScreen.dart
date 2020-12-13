import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kistmat_connection/models/drop_down_item.dart';
import 'package:kistmat_connection/screens/religion_screen.dart';
import 'package:kistmat_connection/screens/work_status_screen.dart';
import 'package:kistmat_connection/utils/SizeConfig.dart';
import 'package:kistmat_connection/utils/constants.dart';
import 'package:kistmat_connection/widgets/center_text.dart';

import 'EthinicOriginScreen.dart';
import 'SecterianDivisionScreen.dart';

class EducationScreen extends StatefulWidget {
  static String ID = "/education_screen";

  @override
  _EducationScreenState createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  List<String> items = [
    "Masters",
    "Bachelors",
    "College Degree",
    "Student",
    "Other"
  ];

  int _selected_education = -1;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          height: SizeConfig.screenHeight,
          width: SizeConfig.screenWidth,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    /*          Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, SecterianDivision.SECTERIAN_DIVISION);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                kPrimaryLightColor,
                                kPrimaryDarkColor
                              ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 88.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: CenterText(
                                  text: "Continue",
                                  textColor: Colors.white,
                                  fontSize: 18),
                            ),
                          ),
                        ))*/
                  ],
                ),
                BackWithProgress(
                  onBackClick: () {
                    Navigator.pop(context);
                  },
                  progress: 0.45,
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 40.0),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset("assets/svg/edu_cap.svg",
                            width: svgSize, height: svgSize),
                        SizedBox(height: 20),
                        FittedBox(
                          fit: BoxFit.contain,
                          child: CenterText(
                              isBold: true,
                              textStyle: GoogleFonts.poppins(),
                              text: "What's your education level?",
                              textColor: Colors.black,
                              fontSize: fontsize2),
                        ),
                        SizedBox(height: 20),
                        Expanded(
                            child: ListView.builder(
                                padding: EdgeInsets.all(2),
                                itemCount: items.length,
                                physics: BouncingScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      StringSelectionItem(
                                        index: index,
                                        selectedValue: (int index) {
                                          setState(() {
                                            _selected_education = index;
                                          });
                                        },
                                        text: items[index],
                                        isSelected: _selected_education == index,
                                      ),
                                      SizedBox(height: 10),
                                    ],
                                  );
                                })),
                        RaisedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, WorkStatusScreen.ID);
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(80.0)),
                          padding: const EdgeInsets.all(0.0),
                          child: Ink(
                            decoration: const BoxDecoration(
                              gradient: LinearGradient(colors: [
                                kPrimaryLightColor,
                                kPrimaryDarkColor
                              ]),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(80.0)),
                            ),
                            child: Container(
                              constraints: const BoxConstraints(
                                  minWidth: 88.0, minHeight: 50.0),
                              alignment: Alignment.center,
                              child: CenterText(
                                  text: "Continue",
                                  textColor: Colors.white,
                                  fontSize: 18),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class StringSelectionItem extends StatelessWidget {
  StringSelectionItem(
      {this.text, this.isSelected, this.index, this.selectedValue});

  String text;
  int index;
  bool isSelected;
  Function(int index) selectedValue;

  @override
  Widget build(BuildContext context) {
    isSelected = isSelected ?? false;
    return GestureDetector(
      onTap: () {
        selectedValue(this.index);
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
                color: !isSelected ? kGreyColor : kPrimaryLightColor,
                width: kBorderWidth),
            borderRadius: BorderRadius.circular(kBorderRadius)),
        height: kBorderHeight,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CenterText(
              text: text,
              textColor: Colors.black,
              fontSize: 17,
            ),
          ],
        ),
      ),
    );
  }
}
